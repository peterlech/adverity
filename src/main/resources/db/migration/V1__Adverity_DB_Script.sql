create TABLE SFACT_EXT ( DATASOURCE varchar(100), CAMPAIGN varchar(100), DAILY varchar(100), CLICKS integer, IMPRESSIONS integer );
create TABLE AGGREGATE_DFNTN ( ID integer identity(1, 1) , DESCRIPTION varchar(100), primary key(id) );
create TABLE CALENDAR_DIM ( ID integer identity(1, 1), DAY DATE, primary key(id) );
create TABLE CAMPAIGN_DIM ( ID integer identity(1, 1), NAME varchar(255), primary key(id) );
create TABLE DATASOURCE_DIM ( ID integer identity(1, 1), NAME varchar(255), primary key(id) ) ;
create TABLE IFACT ( ID integer identity(1, 1), DATASOURCE_ID integer, CAMPAIGN_ID integer, CALENDAR_ID integer, primary key(id), foreign key(DATASOURCE_ID) references datasource_dim(id), foreign key(CAMPAIGN_ID) references campaign_dim(id), foreign key(CALENDAR_ID) references calendar_dim(id) );
create TABLE METRICS_DFNTN ( ID integer identity(1, 1), NAME varchar(255), DESCRIPTION varchar(255), primary key(id) );
create TABLE IFACT_AGGREGATE ( ID integer identity(1, 1), DATASOURCEID integer, CAMPAIGNID integer, CALENDARID integer, AGGREGATEID integer, METRICID integer, VALUE numeric(20, 10), primary key(id), foreign key(DATASOURCEID) references datasource_dim(id), foreign key(CAMPAIGNID) references campaign_dim(id), foreign key(CALENDARID) references calendar_dim(id), foreign key(AGGREGATEID) references aggregate_dfntn(id), foreign key(METRICID) references metrics_dfntn(id) );
create TABLE METRICS_FACT ( ID integer identity(1, 1), FACTID integer, METRICID integer, VALUE numeric(20, 10), primary key(id), foreign key(METRICID) references metrics_dfntn(id), foreign key(FACTID) references ifact(id) ) ;
create
or replace view IFACT_AGGREGATE_VIEW (ID, DATASOURCE, DAILY, CAMPAIGN, AGGREGATEID, AGGREGATE, METRICID, METRIC, VALUE) as
select
   ia.id as ID,
   dd.name as DATASOURCE,
   cd.day as DAILY,
   cad.name as CAMPAIGN,
   ad.id as AGGREGATEID,
   ad.description as AGGREGATE,
   md.id as METRICID,
   md.name as METRIC,
   ia.value as VALUE
from
   ifact_aggregate ia
   left join
      datasource_dim dd
      on ia.datasourceid = dd.id
   left join
      calendar_dim cd
      on ia.calendarid = cd.id
   left join
      campaign_dim cad
      on ia.campaignid = cad.id
   left join
      aggregate_dfntn ad
      on ia.aggregateid = ad.id
   left join
      metrics_dfntn md
      on ia.metricid = md.id ;
create
or replace procedure PROCESS_FACT() as $$
begin
   insert into
      IFACT(DATASOURCE_ID, CAMPAIGN_ID, CALENDAR_ID)
      select
         dd.ID,
         cd.ID,
         cad.ID
      from
         sfact_ext s,
         datasource_dim dd,
         campaign_dim cd,
         calendar_dim cad
      where
         s.campaign = cd.NAME
         and s.DATASOURCE = dd.NAME
         and to_date(s.daily, 'MM/DD/YY') = cad.day;
insert into
   METRICS_FACT(FACTID, METRICID, VALUE)
   select
      if.ID,
      md.ID,
      clicks
   FROM
      ifact if,
      metrics_dfntn md,
      datasource_dim dd,
      campaign_dim cd,
      calendar_dim cad,
      sfact_ext sf
   WHERE
      md.id = 1
      and if.datasource_id = dd.id
      AND if.campaign_id = cd.id
      AND if.calendar_id = cad.id
      AND sf.datasource = dd.name
      AND sf.campaign = cd.name
      AND cad.day = TO_DATE(sf.daily, 'MM/DD/YY');
insert into
   METRICS_FACT(FACTID, METRICID, VALUE)
   select
      if.ID,
      md.ID,
      impressions
   FROM
      ifact if,
      metrics_dfntn md,
      datasource_dim dd,
      campaign_dim cd,
      calendar_dim cad,
      sfact_ext sf
   WHERE
      md.id = 2
      and if.datasource_id = dd.id
      AND if.campaign_id = cd.id
      AND if.calendar_id = cad.id
      AND sf.datasource = dd.name
      AND sf.campaign = cd.name
      AND cad.day = TO_DATE(sf.daily, 'MM/DD/YY');
end
;
$$ LANGUAGE plpgsql;
create
or replace procedure public.process_aggregates() LANGUAGE plpgsql AS $$
BEGIN
   insert into
      ifact_aggregate(datasourceid, campaignid, calendarid, aggregateid, metricid, value) WITH cte_sum ( datasource_id, campaign_id, calendar_id, aggregateid, metricid, value) AS
      (
         select
            if.datasource_id,
            null as campaign_id,
            null as calendar_id,
            1 as aggregateid,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.datasource_id,
            mf.metricid
         UNION ALL
         select
            null,
            if.campaign_id,
            null,
            2,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.campaign_id,
            mf.metricid
         UNION ALL
         select
            null,
            null,
            if.calendar_id,
            3,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.calendar_id,
            mf.metricid
         UNION ALL
         select
            if.datasource_id,
            if.campaign_id,
            null,
            4,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.datasource_id,
            if.campaign_id,
            mf.metricid
         UNION ALL
         select
            if.datasource_id,
            null,
            if.calendar_id,
            5,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.datasource_id,
            if.calendar_id,
            mf.metricid
         UNION ALL
         select
            null,
            if.campaign_id,
            if.calendar_id,
            6,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.campaign_id,
            if.calendar_id,
            mf.metricid
         UNION ALL
         select
            if.datasource_id,
            if.campaign_id,
            if.calendar_id,
            7,
            mf.metricid,
            SUM(mf.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf
         where
            if.id = mf.factid
         GROUP BY
            if.datasource_id,
            if.campaign_id,
            if.calendar_id,
            mf.metricid
      )
,
      cte_avg ( datasource_id, campaign_id, calendar_id, aggregateid, metricid, value) AS
      (
         select
            if.datasource_id,
            null as campaign_id,
            null as calendar_id,
            1 as aggregateid,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.datasource_id
         UNION ALL
         select
            null,
            if.campaign_id,
            null,
            2,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.campaign_id
         UNION ALL
         select
            null,
            null,
            if.calendar_id,
            3,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.calendar_id
         UNION ALL
         select
            if.datasource_id,
            if.campaign_id,
            null,
            4,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.datasource_id,
            if.campaign_id
         UNION ALL
         select
            if.datasource_id,
            null,
            if.calendar_id,
            5,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.datasource_id,
            if.calendar_id
         UNION ALL
         select
            null,
            if.campaign_id,
            if.calendar_id,
            6,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.campaign_id,
            if.calendar_id
         UNION ALL
         select
            if.datasource_id,
            if.campaign_id,
            if.calendar_id,
            7,
            3 as metricid,
            SUM(mf.value) / SUM(mf2.value) AS sum_value
         FROM
            ifact if,
            metrics_fact mf,
            metrics_fact mf2
         where
            if.id = mf.factid
            and mf2.factid = if.id
            and mf.metricid = 1
            and mf2.metricid = 2
         GROUP BY
            if.datasource_id,
            if.campaign_id,
            if.calendar_id
      )
      select
         datasource_id,
         campaign_id,
         calendar_id,
         aggregateid,
         metricid,
         value
      FROM
         cte_sum
      where
         metricid in
         (
            1,
            2
         )
      UNION ALL
      select
         datasource_id,
         campaign_id,
         calendar_id,
         aggregateid,
         metricid,
         value
      FROM
         cte_avg;
END
;
$$ ;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Datasource'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Campaign'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Daily'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Datasource,Campaign'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Datasource,Daily'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Campaign,Daily'
   )
;
insert into
   AGGREGATE_DFNTN (DESCRIPTION)
values
   (
      'Datasource,Campaign,Daily'
   )
;
insert into
   METRICS_DFNTN (NAME)
values
   (
      'Clicks'
   )
;
insert into
   METRICS_DFNTN (NAME)
values
   (
      'Impressions'
   )
;
insert into
   METRICS_DFNTN (NAME, DESCRIPTION)
values
   (
      'CTR',
      'Clicks/Impressions'
   )
;