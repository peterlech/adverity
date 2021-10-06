--------------------------------------------------------
--  DDL for Sequence AGGREGATE_DFNTN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."AGGREGATE_DFNTN_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CALENDAR_DIM_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."CALENDAR_DIM_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence CAMPAIGN_DIM_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."CAMPAIGN_DIM_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DATASOURCE_DIM_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."DATASOURCE_DIM_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IFACT_AGGREGATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."IFACT_AGGREGATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence IFACT_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."IFACT_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence METRICS_DFNTN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."METRICS_DFNTN_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence METRICS_FACT_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "ADVERITY"."METRICS_FACT_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
   
--------------------------------------------------------
--  DDL for Table SFACT_EXT
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."SFACT_EXT" 
   (	"DATASOURCE" VARCHAR2(255 BYTE), 
	"CAMPAIGN" VARCHAR2(255 BYTE), 
	"DAILY" VARCHAR2(20 BYTE), 
	"CLICKS" VARCHAR2(20 BYTE), 
	"IMPRESSIONS" VARCHAR2(20 BYTE)
   ) 
   ORGANIZATION EXTERNAL 
    ( TYPE ORACLE_LOADER
      DEFAULT DIRECTORY "SOURCEFILE_DIRECTORY"
      ACCESS PARAMETERS
      ( records delimited by newline
       skip 1
       fields terminated by ',' lrtrim
           )
      LOCATION
       ( 'sourceFile.csv'
       )
    );

   
--------------------------------------------------------
--  DDL for Table AGGREGATE_DFNTN
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."AGGREGATE_DFNTN" 
   (	"ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CALENDAR_DIM
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."CALENDAR_DIM" 
   (	"ID" NUMBER, 
	"DAY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CAMPAIGN_DIM
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."CAMPAIGN_DIM" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DATASOURCE_DIM
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."DATASOURCE_DIM" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IFACT
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."IFACT" 
   (	"ID" NUMBER, 
	"DATASOURCE_ID" NUMBER, 
	"CAMPAIGN_ID" NUMBER, 
	"CALENDAR_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IFACT_AGGREGATE
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."IFACT_AGGREGATE" 
   (	"ID" NUMBER, 
	"DATASOURCEID" NUMBER, 
	"CAMPAIGNID" NUMBER, 
	"CALENDARID" NUMBER, 
	"AGGREGATEID" NUMBER, 
	"METRICID" NUMBER, 
	"VALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table METRICS_DFNTN
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."METRICS_DFNTN" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table METRICS_FACT
--------------------------------------------------------

  CREATE TABLE "ADVERITY"."METRICS_FACT" 
   (	"ID" NUMBER, 
	"FACTID" NUMBER, 
	"METRICID" NUMBER, 
	"VALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for View IFACT_AGGREGATE_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "ADVERITY"."IFACT_AGGREGATE_VIEW" ("ID", "DATASOURCE", "DAILY", "CAMPAIGN", "AGGREGATEID", "AGGREGATE", "METRICID", "METRIC", "VALUE") AS 
  SELECT 
    ia.id AS ID,
    dd.name AS DATASOURCE, 
    cd.day AS DAILY,
    cad.name AS CAMPAIGN,
    ad.id AS AGGREGATEID,
    ad.description AS AGGREGATE,
    md.id as METRICID,
    md.name AS METRIC,
    ia.value AS VALUE
FROM ifact_aggregate ia
LEFT JOIN datasource_dim dd ON ia.datasourceid = dd.id
LEFT JOIN calendar_dim cd ON ia.calendarid = cd.id
LEFT JOIN campaign_dim cad ON ia.campaignid = cad.id
LEFT JOIN aggregate_dfntn ad ON ia.aggregateid = ad.id
LEFT JOIN metrics_dfntn md ON ia.metricid = md.id
;
--------------------------------------------------------
--  DDL for Index AGGREGATE_DFNTN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."AGGREGATE_DFNTN_PK" ON "ADVERITY"."AGGREGATE_DFNTN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CALENDAR_DIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."CALENDAR_DIM_PK" ON "ADVERITY"."CALENDAR_DIM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CAMPAIGN_DIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."CAMPAIGN_DIM_PK" ON "ADVERITY"."CAMPAIGN_DIM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DATASOURCE_DIM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."DATASOURCE_DIM_PK" ON "ADVERITY"."DATASOURCE_DIM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IFACT_AGGREGATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."IFACT_AGGREGATE_PK" ON "ADVERITY"."IFACT_AGGREGATE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IFACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."IFACT_PK" ON "ADVERITY"."IFACT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index METRICS_DFNTN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."METRICS_DFNTN_PK" ON "ADVERITY"."METRICS_DFNTN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index METRICS_FACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADVERITY"."METRICS_FACT_PK" ON "ADVERITY"."METRICS_FACT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Trigger AGGREGATE_DFNTN_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."AGGREGATE_DFNTN_ON_INSERT" 
  BEFORE INSERT ON AGGREGATE_DFNTN
  FOR EACH ROW
BEGIN
  SELECT AGGREGATE_DFNTN_sequence.nextval
  INTO :new.id
  FROM dual;
END;



/
ALTER TRIGGER "ADVERITY"."AGGREGATE_DFNTN_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALENDAR_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."CALENDAR_DIM_ON_INSERT" 
  BEFORE INSERT ON CALENDAR_DIM
  FOR EACH ROW
BEGIN
  SELECT CALENDAR_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;



/
ALTER TRIGGER "ADVERITY"."CALENDAR_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CAMPAIGN_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."CAMPAIGN_DIM_ON_INSERT" 
  BEFORE INSERT ON CAMPAIGN_DIM
  FOR EACH ROW
BEGIN
  SELECT campaign_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;


/
ALTER TRIGGER "ADVERITY"."CAMPAIGN_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DATASOURCE_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."DATASOURCE_DIM_ON_INSERT" 
  BEFORE INSERT ON DATASOURCE_DIM
  FOR EACH ROW
BEGIN
  SELECT datasource_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;


/
ALTER TRIGGER "ADVERITY"."DATASOURCE_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IFACT_AGGREGATE_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."IFACT_AGGREGATE_ON_INSERT" 
  BEFORE INSERT ON IFACT_AGGREGATE
  FOR EACH ROW
BEGIN
  SELECT IFACT_AGGREGATE_sequence.nextval
  INTO :new.id
  FROM dual;
END;





/
ALTER TRIGGER "ADVERITY"."IFACT_AGGREGATE_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IFACT_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."IFACT_ON_INSERT" 
  BEFORE INSERT ON IFACT
  FOR EACH ROW
BEGIN
  SELECT IFACT_sequence.nextval
  INTO :new.id
  FROM dual;
END;





/
ALTER TRIGGER "ADVERITY"."IFACT_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger METRICS_DFNTN_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."METRICS_DFNTN_ON_INSERT" 
  BEFORE INSERT ON METRICS_DFNTN
  FOR EACH ROW
BEGIN
  SELECT METRICS_DFNTN_sequence.nextval
  INTO :new.id
  FROM dual;
END;




/
ALTER TRIGGER "ADVERITY"."METRICS_DFNTN_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger METRICS_FACT_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."METRICS_FACT_ON_INSERT" 
  BEFORE INSERT ON METRICS_FACT
  FOR EACH ROW
BEGIN
  SELECT METRICS_FACT_sequence.nextval
  INTO :new.id
  FROM dual;
END;





/
ALTER TRIGGER "ADVERITY"."METRICS_FACT_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger AGGREGATE_DFNTN_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."AGGREGATE_DFNTN_ON_INSERT" 
  BEFORE INSERT ON AGGREGATE_DFNTN
  FOR EACH ROW
BEGIN
  SELECT AGGREGATE_DFNTN_sequence.nextval
  INTO :new.id
  FROM dual;
END;



/
ALTER TRIGGER "ADVERITY"."AGGREGATE_DFNTN_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CALENDAR_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."CALENDAR_DIM_ON_INSERT" 
  BEFORE INSERT ON CALENDAR_DIM
  FOR EACH ROW
BEGIN
  SELECT CALENDAR_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;



/
ALTER TRIGGER "ADVERITY"."CALENDAR_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CAMPAIGN_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."CAMPAIGN_DIM_ON_INSERT" 
  BEFORE INSERT ON CAMPAIGN_DIM
  FOR EACH ROW
BEGIN
  SELECT campaign_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;


/
ALTER TRIGGER "ADVERITY"."CAMPAIGN_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DATASOURCE_DIM_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."DATASOURCE_DIM_ON_INSERT" 
  BEFORE INSERT ON DATASOURCE_DIM
  FOR EACH ROW
BEGIN
  SELECT datasource_dim_sequence.nextval
  INTO :new.id
  FROM dual;
END;


/
ALTER TRIGGER "ADVERITY"."DATASOURCE_DIM_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IFACT_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."IFACT_ON_INSERT" 
  BEFORE INSERT ON IFACT
  FOR EACH ROW
BEGIN
  SELECT IFACT_sequence.nextval
  INTO :new.id
  FROM dual;
END;





/
ALTER TRIGGER "ADVERITY"."IFACT_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger IFACT_AGGREGATE_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."IFACT_AGGREGATE_ON_INSERT" 
  BEFORE INSERT ON IFACT_AGGREGATE
  FOR EACH ROW
BEGIN
  SELECT IFACT_AGGREGATE_sequence.nextval
  INTO :new.id
  FROM dual;
END;





/
ALTER TRIGGER "ADVERITY"."IFACT_AGGREGATE_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger METRICS_DFNTN_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."METRICS_DFNTN_ON_INSERT" 
  BEFORE INSERT ON METRICS_DFNTN
  FOR EACH ROW
BEGIN
  SELECT METRICS_DFNTN_sequence.nextval
  INTO :new.id
  FROM dual;
END;




/
ALTER TRIGGER "ADVERITY"."METRICS_DFNTN_ON_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger METRICS_FACT_ON_INSERT
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "ADVERITY"."METRICS_FACT_ON_INSERT" 
  BEFORE INSERT ON METRICS_FACT
  FOR EACH ROW
BEGIN
  SELECT METRICS_FACT_sequence.nextval
  INTO :new.id
  FROM dual;
END;
/



ALTER TRIGGER "ADVERITY"."METRICS_FACT_ON_INSERT" ENABLE;


CREATE PROCEDURE "ADVERITY"."PROCESS_FACT" AS
   BEGIN
   INSERT INTO IFACT(DATASOURCE_ID, CAMPAIGN_ID, CALENDAR_ID)
    SELECT dd.ID, cd.ID, cad.ID
        FROM sfact_ext s
        JOIN datasource_dim dd ON(s.DATASOURCE = dd.NAME)
        JOIN campaign_dim cd ON (s.campaign = cd.NAME)
        JOIN calendar_dim cad ON (s.daily= cad.day);
    INSERT INTO METRICS_FACT(FACTID, METRICID, VALUE)
    (SELECT if.ID, md.id, clicks
        FROM ifact if
        JOIN metrics_dfntn md ON 1=1
        JOIN datasource_dim dd ON(if.datasource_id = dd.id)
        JOIN campaign_dim cd ON (if.campaign_id = cd.id)
        JOIN calendar_dim cad ON (if.calendar_id = cad.id)
        JOIN sfact_ext sf ON (sf.datasource = dd.name AND sf.campaign = cd.name AND cad.day = sf.daily)
        WHERE md.id = 1
    UNION ALL
    SELECT if.ID, md.id, impressions
        FROM ifact if
        JOIN metrics_dfntn md ON 1=1
        JOIN datasource_dim dd ON(if.datasource_id = dd.id)
        JOIN campaign_dim cd ON (if.campaign_id = cd.id)
        JOIN calendar_dim cad ON (if.calendar_id = cad.id)
        JOIN sfact_ext sf ON (sf.datasource = dd.name AND sf.campaign = cd.name AND cad.day = sf.daily)
        WHERE md.id = 2);

        commit;
   END;
/
CREATE PROCEDURE "ADVERITY"."PROCESS_AGGREGATES" AS
BEGIN
INSERT INTO ifact_aggregate(datasourceid, campaignid, calendarid, aggregateid, metricid, value)
(SELECT
    if.datasource_id,
    null,
    null,
    1,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.datasource_id, mf.metricid
UNION ALL
SELECT
    null,
    if.campaign_id,
    null,
    2,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.campaign_id, mf.metricid
UNION ALL
SELECT
    null,
    null,
    if.calendar_id,
    3,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.calendar_id, mf.metricid
UNION ALL
SELECT
    if.datasource_id,
    if.campaign_id,
    null,
    4,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.datasource_id, if.campaign_id, mf.metricid
UNION ALL
SELECT
    if.datasource_id,
    null,
    if.calendar_id,
    5,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.datasource_id, if.calendar_id, mf.metricid
UNION ALL
SELECT
    null,
    if.campaign_id,
    if.calendar_id,
    6,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.campaign_id, if.calendar_id, mf.metricid
UNION ALL
SELECT
    if.datasource_id,
    if.campaign_id,
    if.calendar_id,
    7,
    mf.metricid,
    SUM(mf.value)
FROM ifact if
JOIN metrics_fact mf ON if.id = mf.factid
GROUP BY if.datasource_id, if.campaign_id, if.calendar_id, mf.metricid);
commit;
END;


/
--------------------------------------------------------
--  Constraints for Table AGGREGATE_DFNTN
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."AGGREGATE_DFNTN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."AGGREGATE_DFNTN" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."AGGREGATE_DFNTN" ADD CONSTRAINT "AGGREGATE_DFNTN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CALENDAR_DIM
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."CALENDAR_DIM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."CALENDAR_DIM" ADD CONSTRAINT "CALENDAR_DIM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DATASOURCE_DIM
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."DATASOURCE_DIM" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."DATASOURCE_DIM" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."DATASOURCE_DIM" ADD CONSTRAINT "DATASOURCE_DIM_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IFACT
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."IFACT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."IFACT" MODIFY ("DATASOURCE_ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."IFACT" MODIFY ("CAMPAIGN_ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."IFACT" ADD CONSTRAINT "IFACT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IFACT_AGGREGATE
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" MODIFY ("VALUE" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" ADD CONSTRAINT "IFACT_AGGREGATE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table METRICS_DFNTN
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."METRICS_DFNTN" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."METRICS_DFNTN" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."METRICS_DFNTN" ADD CONSTRAINT "METRICS_DFNTN_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table METRICS_FACT
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."METRICS_FACT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ADVERITY"."METRICS_FACT" ADD CONSTRAINT "METRICS_FACT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IFACT
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."IFACT" ADD FOREIGN KEY ("DATASOURCE_ID")
	  REFERENCES "ADVERITY"."DATASOURCE_DIM" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ADVERITY"."IFACT" ADD FOREIGN KEY ("CALENDAR_ID")
	  REFERENCES "ADVERITY"."CALENDAR_DIM" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IFACT_AGGREGATE
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" ADD FOREIGN KEY ("DATASOURCEID")
	  REFERENCES "ADVERITY"."DATASOURCE_DIM" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" ADD FOREIGN KEY ("CALENDARID")
	  REFERENCES "ADVERITY"."CALENDAR_DIM" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" ADD FOREIGN KEY ("AGGREGATEID")
	  REFERENCES "ADVERITY"."AGGREGATE_DFNTN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ADVERITY"."IFACT_AGGREGATE" ADD FOREIGN KEY ("METRICID")
	  REFERENCES "ADVERITY"."METRICS_DFNTN" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table METRICS_FACT
--------------------------------------------------------

  ALTER TABLE "ADVERITY"."METRICS_FACT" ADD FOREIGN KEY ("METRICID")
	  REFERENCES "ADVERITY"."METRICS_DFNTN" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ADVERITY"."METRICS_FACT" ADD FOREIGN KEY ("FACTID")
	  REFERENCES "ADVERITY"."IFACT" ("ID") ON DELETE CASCADE ENABLE;




Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (1,'Datasource');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (2,'Campaign');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (3,'Daily');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (4,'Datasource,Campaign');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (5,'Datasource,Daily');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (6,'Campaign,Daily');
Insert into ADVERITY.AGGREGATE_DFNTN (ID,DESCRIPTION) values (7,'Datasource,Campaign,Daily');

Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (1,'09/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (2,'09/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (3,'09/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (4,'09/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (5,'09/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (6,'10/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (7,'10/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (8,'10/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (9,'10/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (10,'10/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (11,'11/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (12,'11/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (13,'11/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (14,'11/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (15,'12/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (16,'12/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (17,'12/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (18,'12/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (19,'12/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (20,'01/01/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (21,'01/03/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (22,'01/15/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (23,'01/30/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (24,'05/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (25,'05/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (26,'05/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (27,'07/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (28,'03/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (29,'03/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (30,'04/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (31,'04/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (32,'04/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (33,'05/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (34,'06/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (35,'06/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (36,'06/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (37,'07/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (38,'07/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (39,'07/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (40,'06/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (41,'07/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (42,'01/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (43,'01/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (44,'01/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (45,'02/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (46,'02/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (47,'02/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (48,'03/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (49,'08/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (50,'08/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (51,'09/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (52,'09/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (53,'09/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (54,'09/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (55,'10/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (56,'10/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (57,'10/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (58,'10/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (59,'10/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (60,'11/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (61,'11/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (62,'11/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (63,'11/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (64,'11/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (65,'12/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (66,'12/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (67,'12/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (68,'12/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (69,'01/08/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (70,'01/11/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (71,'01/20/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (72,'01/24/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (73,'01/31/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (74,'02/03/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (75,'02/05/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (76,'03/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (77,'04/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (78,'04/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (79,'04/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (80,'04/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (81,'05/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (82,'06/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (83,'06/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (84,'06/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (85,'06/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (86,'06/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (87,'06/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (88,'06/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (89,'06/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (90,'07/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (91,'01/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (92,'01/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (93,'01/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (94,'01/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (95,'01/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (96,'01/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (97,'01/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (98,'01/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (99,'02/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (100,'02/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (101,'02/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (102,'07/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (103,'07/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (104,'07/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (105,'08/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (106,'08/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (107,'08/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (108,'09/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (109,'09/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (110,'10/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (111,'10/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (112,'10/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (113,'10/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (114,'11/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (115,'11/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (116,'12/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (117,'12/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (118,'01/02/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (119,'01/07/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (120,'01/09/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (121,'01/12/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (122,'01/18/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (123,'01/22/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (124,'01/23/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (125,'01/28/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (126,'02/09/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (127,'02/10/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (128,'05/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (129,'05/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (130,'06/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (131,'09/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (132,'03/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (133,'03/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (134,'03/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (135,'04/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (136,'04/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (137,'06/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (138,'06/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (139,'07/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (140,'07/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (141,'07/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (142,'07/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (143,'07/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (144,'06/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (145,'06/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (146,'01/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (147,'02/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (148,'02/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (149,'02/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (150,'02/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (151,'03/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (152,'03/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (153,'03/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (154,'03/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (155,'08/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (156,'08/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (157,'08/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (158,'08/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (159,'09/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (160,'09/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (161,'09/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (162,'09/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (163,'09/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (164,'10/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (165,'10/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (166,'10/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (167,'10/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (168,'10/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (169,'11/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (170,'11/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (171,'11/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (172,'11/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (173,'11/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (174,'12/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (175,'12/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (176,'02/02/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (177,'02/13/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (178,'05/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (179,'05/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (180,'05/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (181,'05/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (182,'06/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (183,'07/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (184,'03/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (185,'04/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (186,'04/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (187,'04/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (188,'04/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (189,'04/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (190,'05/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (191,'05/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (192,'05/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (193,'05/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (194,'05/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (195,'05/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (196,'06/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (197,'06/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (198,'06/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (199,'06/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (200,'07/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (201,'07/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (202,'06/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (203,'01/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (204,'01/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (205,'01/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (206,'01/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (207,'01/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (208,'02/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (209,'02/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (210,'02/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (211,'02/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (212,'07/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (213,'08/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (214,'08/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (215,'08/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (216,'08/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (217,'09/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (218,'09/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (219,'09/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (220,'10/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (221,'10/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (222,'11/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (223,'11/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (224,'12/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (225,'12/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (226,'12/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (227,'01/10/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (228,'01/27/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (229,'01/29/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (230,'02/12/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (231,'03/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (232,'03/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (233,'03/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (234,'04/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (235,'04/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (236,'04/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (237,'04/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (238,'05/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (239,'05/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (240,'06/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (241,'07/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (242,'07/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (243,'06/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (244,'07/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (245,'02/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (246,'01/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (247,'01/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (248,'01/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (249,'01/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (250,'02/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (251,'02/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (252,'02/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (253,'02/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (254,'03/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (255,'03/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (256,'03/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (257,'03/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (258,'07/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (259,'07/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (260,'08/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (261,'08/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (262,'08/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (263,'09/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (264,'09/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (265,'09/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (266,'10/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (267,'10/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (268,'10/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (269,'11/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (270,'11/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (271,'11/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (272,'11/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (273,'12/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (274,'12/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (275,'12/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (276,'01/04/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (277,'01/05/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (278,'01/16/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (279,'01/25/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (280,'02/01/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (281,'02/04/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (282,'02/07/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (283,'02/08/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (284,'02/14/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (285,'05/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (286,'05/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (287,'05/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (288,'03/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (289,'03/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (290,'03/31/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (291,'04/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (292,'04/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (293,'04/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (294,'04/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (295,'05/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (296,'05/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (297,'07/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (298,'07/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (299,'06/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (300,'01/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (301,'01/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (302,'01/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (303,'01/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (304,'01/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (305,'01/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (306,'02/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (307,'02/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (308,'02/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (309,'02/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (310,'03/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (311,'08/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (312,'08/16/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (313,'08/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (314,'08/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (315,'08/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (316,'09/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (317,'09/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (318,'09/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (319,'09/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (320,'10/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (321,'10/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (322,'10/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (323,'11/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (324,'11/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (325,'11/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (326,'12/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (327,'12/12/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (328,'12/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (329,'12/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (330,'12/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (331,'01/06/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (332,'01/14/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (333,'01/26/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (334,'02/06/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (335,'02/11/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (336,'05/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (337,'04/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (338,'04/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (339,'04/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (340,'04/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (341,'04/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (342,'04/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (343,'05/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (344,'05/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (345,'06/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (346,'06/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (347,'07/04/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (348,'07/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (349,'07/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (350,'01/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (351,'02/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (352,'02/09/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (353,'02/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (354,'03/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (355,'07/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (356,'07/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (357,'08/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (358,'08/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (359,'08/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (360,'08/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (361,'09/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (362,'09/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (363,'09/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (364,'10/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (365,'10/06/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (366,'10/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (367,'10/18/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (368,'11/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (369,'11/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (370,'11/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (371,'11/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (372,'11/29/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (373,'12/02/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (374,'12/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (375,'12/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (376,'12/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (377,'12/22/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (378,'12/26/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (379,'12/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (380,'01/13/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (381,'01/17/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (382,'01/19/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (383,'01/21/20');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (384,'05/19/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (385,'05/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (386,'03/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (387,'03/23/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (388,'03/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (389,'03/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (390,'04/21/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (391,'04/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (392,'05/01/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (393,'05/08/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (394,'06/30/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (395,'07/03/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (396,'06/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (397,'01/07/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (398,'01/15/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (399,'01/24/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (400,'02/10/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (401,'02/28/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (402,'03/11/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (403,'03/13/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (404,'03/14/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (405,'08/05/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (406,'08/17/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (407,'08/20/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (408,'08/25/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (409,'08/27/19');
Insert into ADVERITY.CALENDAR_DIM (ID,DAY) values (410,'08/29/19');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (1,'�AMTC App|In-App');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (2,'Touristik Routenplaner');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (3,'AT|SN|Snow Helme|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (4,'DE|SN|Snowboard|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (5,'DE | SP Gadgets');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (6,'F�hrerschein-Test');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (7,'Google Shopping');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (8,'Nothilfe');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (9,'Nothilfe|Tablets Android');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (10,'�AMTC App|Tablets iOS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (11,'SN_H�ttengaudi_Felicity Filztaschen');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (12,'SN_OnlineSchn�ppchen_Philips_Airfryer');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (13,'SN_OnlineSchn�ppchen_Gorenje Mikrowelle');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (14,'DE|SN|Snow Schuhe|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (15,'Online-Special_Trendwizzard Fahrrad');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (16,'Pickerl-Erinnerung');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (17,'SN_Brand Produkte');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (18,'SN_Kistenkonkurrenz');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (19,'SN_OnlineSchn�ppchen_Kaffeepadmaschine');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (20,'SN_OnlineSchn�ppchen_Leuchtenwald');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (21,'SN_OnlineSchn�ppchen_Saeco_Kaffeevollautomat');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (22,'SN_Online-Special_Esprit Buggy');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (23,'SN_Partner');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (24,'SN_Specials');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (25,'Touristik City Guide_iOS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (26,'�CC');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (27,'Touristik City Guide');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (28,'AT | PLA');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (29,'DE | PLA');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (30,'DE|SN|Skate|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (31,'DE|SN|Snowboards|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (32,'Nothilfe|Tablets iOS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (33,'�AMTC ADAM-MANIA Gewinnspiel');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (34,'�AMTC Autopreis Marcus 2014');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (35,'SN_Essen');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (36,'SN_OnlineSchn�ppchen_Krups Toaster');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (37,'SN_OnlineSchn�ppchen_Tefal Raclette-Grill');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (38,'SN_Wettbewerber');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (39,'Schutzbrief');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (40,'Schutzbrief Image|SN');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (41,'AT|SN|Longboard|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (42,'DE|SN|Snow Jacken');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (43,'DE|SN|Splitboard|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (44,'Freundschaftswerbung');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (45,'�AMTC App|Smartphones Android');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (46,'SN_Online-Special_Dyson Staubsauger');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (47,'Touristik City Guide_Android');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (48,'WRKS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (49,'Motorrad Mitgliedschaft');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (50,'Carfinder');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (51,'AT|SN|Snow Bindungen|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (52,'AT|SN|Snow Hosen|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (53,'AT|SN|Splitboard|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (54,'DE|SN|Wear|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (55,'�AMTC App|Smartphones iOS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (56,'Rechtsschutz');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (57,'Rechtsschutz - MOBIL');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (58,'SN_OnlineSchn�ppchen_Philips Schallzahnb�rste');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (59,'SN_Online-Special_LG Fernseher');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (60,'US|SN|Amazon');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (61,'Versicherungen');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (62,'Vorteilspartner');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (63,'GDN_Retargeting');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (64,'Nulltarif');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (65,'Adventmarkt Touristik');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (66,'Firmen Mitgliedschaft');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (67,'Remarketing');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (68,'Touring-Set');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (69,'AT|SN|Skate|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (70,'AT|SN|Snowboard|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (71,'AT|SN|Snowboards|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (72,'Bonus Kasko');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (73,'DE|SN|Snow Bindungen|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (74,'DE|SN|Snow Helme|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (75,'EN | SP Gadgets');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (76,'Nothilfe|Smartphones iOS');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (77,'�AMTC App|Tablets Android');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (78,'SN_Online-Only_Kochtopfset');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (79,'SN_OnlineSchn�ppchen_Gaggia_Espressosiebtr�ger');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (80,'SN_OnlineSchn�ppchen_LG Heimkinoanlage');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (81,'SN_OnlineSchn�ppchen_Trendline Kaltschaummatratze');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (82,'RM|SP Gadgets');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (83,'AT|SN|Brand');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (84,'AT|SN|Skullcandy');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (85,'DE|SN|Longboard|Generisch');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (86,'DE|SN|Skullcandy');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (87,'Nothilfe|Smartphones Android');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (88,'�AMTC App');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (89,'SN_KochAbo');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (90,'SN_OnlineSchn�ppchen_Philips K�chenmaschine');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (91,'SN_Obstbox');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (92,'SN_OnlineSchn�ppchen_Krups Wasserkocher');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (93,'Mitgliedschaft KiMi');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (94,'NT �CC');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (95,'Schutzbrief Image|DN');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (96,'AT|SN|Snow Jacken|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (97,'AT|SN|Snow Schuhe|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (98,'DE|SN|Brand');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (99,'DE|SN|Snow Hosen|Brands');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (100,'Nulltarif-Q4');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (101,'SN_Brand');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (102,'SN_Lebensmittel');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (103,'SN_OnlineSchn�ppchen_AEG_Staubsauger');
Insert into ADVERITY.CAMPAIGN_DIM (ID,NAME) values (104,'SN_OnlineSchn�ppchen_Philips_Tischgrill');
Insert into ADVERITY.DATASOURCE_DIM (ID,NAME) values (1,'Facebook Ads');
Insert into ADVERITY.DATASOURCE_DIM (ID,NAME) values (2,'Twitter Ads');
Insert into ADVERITY.DATASOURCE_DIM (ID,NAME) values (3,'Google Ads');
Insert into ADVERITY.METRICS_DFNTN (ID,NAME) values (1,'Clicks');
Insert into ADVERITY.METRICS_DFNTN (ID,NAME) values (2,'Impressions');


CREATE INDEX ifact_index ON ifact(DATASOURCE_ID, CAMPAIGN_ID, CALENDAR_ID);


commit;
