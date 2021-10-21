create TABLE SFACT_EXT
   (
    DATASOURCE varchar(100),
    CAMPAIGN varchar(100),
    DAILY varchar(100),
    CLICKS integer,
    IMPRESSIONS integer
);

 create TABLE AGGREGATE_DFNTN
   (	ID integer identity(1,1) ,
	    DESCRIPTION varchar(100),
     primary key(id)
   );

create TABLE CALENDAR_DIM
   (	ID integer identity(1,1),
	    DAY varchar(20),
      primary key(id)
   );

  create TABLE CAMPAIGN_DIM
   (	ID integer identity(1,1),
	    NAME varchar(255),
      primary key(id)
    );


  create TABLE DATASOURCE_DIM
   (	ID integer identity(1,1),
	    NAME varchar(255),
	    primary key(id)
   ) ;

  create TABLE IFACT
   (	ID integer identity(1,1),
      DATASOURCE_ID integer,
      CAMPAIGN_ID integer,
      CALENDAR_ID integer,
      primary key(id),
      foreign key(DATASOURCE_ID) references datasource_dim(id),
      foreign key(CAMPAIGN_ID) references campaign_dim(id),
      foreign key(CALENDAR_ID) references calendar_dim(id)
   );



  create TABLE METRICS_DFNTN
   (	ID integer identity(1,1),
      NAME varchar(255),
      DESCRIPTION varchar(255),
      primary key(id)
   );

  create TABLE IFACT_AGGREGATE
   (	ID integer identity(1,1),
      DATASOURCEID integer,
      CAMPAIGNID integer,
      CALENDARID integer,
      AGGREGATEID integer,
      METRICID integer,
      VALUE integer,
      primary key(id),
      foreign key(DATASOURCEID) references datasource_dim(id),
      foreign key(CAMPAIGNID) references campaign_dim(id),
      foreign key(CALENDARID) references calendar_dim(id),
      foreign key(AGGREGATEID) references aggregate_dfntn(id),
      foreign key(METRICID) references metrics_dfntn(id)
   );

  create TABLE METRICS_FACT
   (  ID integer identity(1,1),
      FACTID integer,
      METRICID integer,
      VALUE integer,
      primary key(id),
      foreign key(METRICID) references metrics_dfntn(id),
      foreign key(FACTID) references ifact(id)
   ) ;

    create or replace  view IFACT_AGGREGATE_VIEW (ID, DATASOURCE, DAILY, CAMPAIGN, AGGREGATEID, AGGREGATE, METRICID, METRIC, VALUE) as
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
from ifact_aggregate ia
left join datasource_dim dd on ia.datasourceid = dd.id
left join calendar_dim cd on ia.calendarid = cd.id
left join campaign_dim cad on ia.campaignid = cad.id
left join aggregate_dfntn ad on ia.aggregateid = ad.id
left join metrics_dfntn md on ia.metricid = md.id
;


CREATE OR REPLACE PROCEDURE PROCESS_FACT()
AS $$
BEGIN
 INSERT INTO IFACT(DATASOURCE_ID, CAMPAIGN_ID, CALENDAR_ID)
    SELECT dd.ID, cd.ID, cad.ID
        FROM sfact_ext s, datasource_dim dd, campaign_dim cd, calendar_dim cad
        where s.campaign = cd.NAME and s.DATASOURCE = dd.NAME and s.daily= cad.day;
 INSERT INTO METRICS_FACT(FACTID, METRICID, VALUE)
    SELECT if.ID, md.ID, clicks
        FROM ifact if, metrics_dfntn md, datasource_dim dd, campaign_dim cd, calendar_dim cad, sfact_ext sf
        WHERE md.id = 1 and if.datasource_id = dd.id AND if.campaign_id = cd.id AND if.calendar_id = cad.id
        AND sf.datasource = dd.name AND sf.campaign = cd.name AND cad.day = sf.daily;

 INSERT INTO METRICS_FACT(FACTID, METRICID, VALUE)
    SELECT if.ID, md.ID, impressions
       FROM ifact if, metrics_dfntn md, datasource_dim dd, campaign_dim cd, calendar_dim cad, sfact_ext sf
        WHERE md.id = 2 and if.datasource_id = dd.id AND if.campaign_id = cd.id AND if.calendar_id = cad.id
        AND sf.datasource = dd.name AND sf.campaign = cd.name AND cad.day = sf.daily;


END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE PROCEDURE public.process_aggregates()
	LANGUAGE plpgsql
AS $$

BEGIN
insert into ifact_aggregate(datasourceid, campaignid, calendarid, aggregateid, metricid, value)
(select
    if.datasource_id,
    null,
    null,
    1,
    mf.metricid,
    SUM(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.datasource_id, mf.metricid
UNION ALL
select
    null,
    if.campaign_id,
    null,
    2,
    mf.metricid,
    sum(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.campaign_id, mf.metricid
UNION ALL
select
    null,
    null,
    if.calendar_id,
    3,
    mf.metricid,
    sum(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.calendar_id, mf.metricid
UNION ALL
select
    if.datasource_id,
    if.campaign_id,
    null,
    4,
    mf.metricid,
    SUM(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.datasource_id, if.campaign_id, mf.metricid
UNION ALL
select
    if.datasource_id,
    null,
    if.calendar_id,
    5,
    mf.metricid,
    SUM(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.datasource_id, if.calendar_id, mf.metricid
UNION ALL
select
    null,
    if.campaign_id,
    if.calendar_id,
    6,
    mf.metricid,
    sum(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.campaign_id, if.calendar_id, mf.metricid
UNION ALL
select
    if.datasource_id,
    if.campaign_id,
    if.calendar_id,
    7,
    mf.metricid,
    SUM(mf.value)
FROM ifact if, metrics_fact mf where if.id = mf.factid
GROUP BY if.datasource_id, if.campaign_id, if.calendar_id, mf.metricid);
END;

$$
;


insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Datasource');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Campaign');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Daily');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Datasource,Campaign');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Datasource,Daily');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Campaign,Daily');
insert into AGGREGATE_DFNTN (DESCRIPTION) values ('Datasource,Campaign,Daily');

insert into METRICS_DFNTN (NAME) values ('Clicks');
insert into METRICS_DFNTN (NAME) values ('Impressions');