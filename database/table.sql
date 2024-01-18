
--
-- APEX$_ACL
--
  CREATE TABLE "APEX$_ACL" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"USERNAME" VARCHAR2(255) NOT NULL ENABLE,
	"PRIV" VARCHAR2(1) NOT NULL ENABLE,
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_ACL_PRIV_CK" CHECK (priv in ('R','C','A')) ENABLE,
	CONSTRAINT "APEX$_ACL_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_FILES
--
  CREATE TABLE "APEX$_WS_FILES" 
   (	"ID" NUMBER,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER,
	"ROW_ID" NUMBER,
	"WEBPAGE_ID" NUMBER,
	"COMPONENT_LEVEL" VARCHAR2(30),
	"NAME" VARCHAR2(255) NOT NULL ENABLE,
	"IMAGE_ALIAS" VARCHAR2(255),
	"IMAGE_ATTRIBUTES" VARCHAR2(255),
	"CONTENT" BLOB,
	"CONTENT_LAST_UPDATE" DATE,
	"MIME_TYPE" VARCHAR2(255) NOT NULL ENABLE,
	"CONTENT_CHARSET" VARCHAR2(255),
	"CONTENT_FILENAME" VARCHAR2(500),
	"DESCRIPTION" VARCHAR2(4000),
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_WS_FILES_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE,
	CONSTRAINT "APEX$_WS_FILES_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_HISTORY
--
  CREATE TABLE "APEX$_WS_HISTORY" 
   (	"ROW_ID" NUMBER NOT NULL ENABLE,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER NOT NULL ENABLE,
	"COLUMN_NAME" VARCHAR2(255),
	"OLD_VALUE" VARCHAR2(4000),
	"NEW_VALUE" VARCHAR2(4000),
	"APPLICATION_USER_ID" VARCHAR2(255),
	"CHANGE_DATE" DATE
   );
--
-- APEX$_WS_LINKS
--
  CREATE TABLE "APEX$_WS_LINKS" 
   (	"ID" NUMBER,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER,
	"ROW_ID" NUMBER,
	"WEBPAGE_ID" NUMBER,
	"COMPONENT_LEVEL" VARCHAR2(30),
	"TAGS" VARCHAR2(4000),
	"SHOW_ON_HOMEPAGE" VARCHAR2(1),
	"LINK_NAME" VARCHAR2(255) NOT NULL ENABLE,
	"URL" VARCHAR2(4000) NOT NULL ENABLE,
	"LINK_DESCRIPTION" VARCHAR2(4000),
	"DISPLAY_SEQUENCE" NUMBER,
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_WS_LINKS_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE,
	CONSTRAINT "APEX$_WS_LINKS_SH_CK" CHECK (show_on_homepage in ('Y','N')) ENABLE,
	CONSTRAINT "APEX$_WS_LINKS_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_NOTES
--
  CREATE TABLE "APEX$_WS_NOTES" 
   (	"ID" NUMBER,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER,
	"ROW_ID" NUMBER,
	"WEBPAGE_ID" NUMBER,
	"COMPONENT_LEVEL" VARCHAR2(30),
	"CONTENT" CLOB,
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_WS_NOTES_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE,
	CONSTRAINT "APEX$_WS_NOTES_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_ROWS
--
  CREATE TABLE "APEX$_WS_ROWS" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER NOT NULL ENABLE,
	"UNIQUE_VALUE" VARCHAR2(255),
	"TAGS" VARCHAR2(4000),
	"PARENT_ROW_ID" NUMBER,
	"OWNER" VARCHAR2(255),
	"GEOCODE" VARCHAR2(512),
	"LOAD_ORDER" NUMBER,
	"CHANGE_COUNT" NUMBER,
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	"C001" VARCHAR2(4000),
	"C002" VARCHAR2(4000),
	"C003" VARCHAR2(4000),
	"C004" VARCHAR2(4000),
	"C005" VARCHAR2(4000),
	"C006" VARCHAR2(4000),
	"C007" VARCHAR2(4000),
	"C008" VARCHAR2(4000),
	"C009" VARCHAR2(4000),
	"C010" VARCHAR2(4000),
	"C011" VARCHAR2(4000),
	"C012" VARCHAR2(4000),
	"C013" VARCHAR2(4000),
	"C014" VARCHAR2(4000),
	"C015" VARCHAR2(4000),
	"C016" VARCHAR2(4000),
	"C017" VARCHAR2(4000),
	"C018" VARCHAR2(4000),
	"C019" VARCHAR2(4000),
	"C020" VARCHAR2(4000),
	"C021" VARCHAR2(4000),
	"C022" VARCHAR2(4000),
	"C023" VARCHAR2(4000),
	"C024" VARCHAR2(4000),
	"C025" VARCHAR2(4000),
	"C026" VARCHAR2(4000),
	"C027" VARCHAR2(4000),
	"C028" VARCHAR2(4000),
	"C029" VARCHAR2(4000),
	"C030" VARCHAR2(4000),
	"C031" VARCHAR2(4000),
	"C032" VARCHAR2(4000),
	"C033" VARCHAR2(4000),
	"C034" VARCHAR2(4000),
	"C035" VARCHAR2(4000),
	"C036" VARCHAR2(4000),
	"C037" VARCHAR2(4000),
	"C038" VARCHAR2(4000),
	"C039" VARCHAR2(4000),
	"C040" VARCHAR2(4000),
	"C041" VARCHAR2(4000),
	"C042" VARCHAR2(4000),
	"C043" VARCHAR2(4000),
	"C044" VARCHAR2(4000),
	"C045" VARCHAR2(4000),
	"C046" VARCHAR2(4000),
	"C047" VARCHAR2(4000),
	"C048" VARCHAR2(4000),
	"C049" VARCHAR2(4000),
	"C050" VARCHAR2(4000),
	"N001" NUMBER,
	"N002" NUMBER,
	"N003" NUMBER,
	"N004" NUMBER,
	"N005" NUMBER,
	"N006" NUMBER,
	"N007" NUMBER,
	"N008" NUMBER,
	"N009" NUMBER,
	"N010" NUMBER,
	"N011" NUMBER,
	"N012" NUMBER,
	"N013" NUMBER,
	"N014" NUMBER,
	"N015" NUMBER,
	"N016" NUMBER,
	"N017" NUMBER,
	"N018" NUMBER,
	"N019" NUMBER,
	"N020" NUMBER,
	"N021" NUMBER,
	"N022" NUMBER,
	"N023" NUMBER,
	"N024" NUMBER,
	"N025" NUMBER,
	"N026" NUMBER,
	"N027" NUMBER,
	"N028" NUMBER,
	"N029" NUMBER,
	"N030" NUMBER,
	"N031" NUMBER,
	"N032" NUMBER,
	"N033" NUMBER,
	"N034" NUMBER,
	"N035" NUMBER,
	"N036" NUMBER,
	"N037" NUMBER,
	"N038" NUMBER,
	"N039" NUMBER,
	"N040" NUMBER,
	"N041" NUMBER,
	"N042" NUMBER,
	"N043" NUMBER,
	"N044" NUMBER,
	"N045" NUMBER,
	"N046" NUMBER,
	"N047" NUMBER,
	"N048" NUMBER,
	"N049" NUMBER,
	"N050" NUMBER,
	"D001" DATE,
	"D002" DATE,
	"D003" DATE,
	"D004" DATE,
	"D005" DATE,
	"D006" DATE,
	"D007" DATE,
	"D008" DATE,
	"D009" DATE,
	"D010" DATE,
	"D011" DATE,
	"D012" DATE,
	"D013" DATE,
	"D014" DATE,
	"D015" DATE,
	"D016" DATE,
	"D017" DATE,
	"D018" DATE,
	"D019" DATE,
	"D020" DATE,
	"D021" DATE,
	"D022" DATE,
	"D023" DATE,
	"D024" DATE,
	"D025" DATE,
	"D026" DATE,
	"D027" DATE,
	"D028" DATE,
	"D029" DATE,
	"D030" DATE,
	"D031" DATE,
	"D032" DATE,
	"D033" DATE,
	"D034" DATE,
	"D035" DATE,
	"D036" DATE,
	"D037" DATE,
	"D038" DATE,
	"D039" DATE,
	"D040" DATE,
	"D041" DATE,
	"D042" DATE,
	"D043" DATE,
	"D044" DATE,
	"D045" DATE,
	"D046" DATE,
	"D047" DATE,
	"D048" DATE,
	"D049" DATE,
	"D050" DATE,
	"CLOB001" CLOB,
	"SEARCH_CLOB" CLOB,
	CONSTRAINT "APEX$_WS_ROWS_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_TAGS
--
  CREATE TABLE "APEX$_WS_TAGS" 
   (	"ID" NUMBER,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"DATA_GRID_ID" NUMBER,
	"ROW_ID" NUMBER,
	"WEBPAGE_ID" NUMBER,
	"COMPONENT_LEVEL" VARCHAR2(30),
	"TAG" VARCHAR2(4000),
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_WS_TAGS_CL_CK" CHECK (component_level in ('WEBSHEET','ROW','WORKSPACE','WEBPAGE')) ENABLE,
	CONSTRAINT "APEX$_WS_TAGS_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APEX$_WS_WEBPG_SECTION_HISTORY
--
  CREATE TABLE "APEX$_WS_WEBPG_SECTION_HISTORY" 
   (	"SECTION_ID" NUMBER NOT NULL ENABLE,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"WEBPAGE_ID" NUMBER NOT NULL ENABLE,
	"OLD_DISPLAY_SEQUENCE" NUMBER,
	"NEW_DISPLAY_SEQUENCE" NUMBER,
	"OLD_TITLE" VARCHAR2(4000),
	"NEW_TITLE" VARCHAR2(4000),
	"OLD_CONTENT" CLOB,
	"NEW_CONTENT" CLOB,
	"APPLICATION_USER_ID" VARCHAR2(255) NOT NULL ENABLE,
	"CHANGE_DATE" DATE NOT NULL ENABLE
   );
--
-- APEX$_WS_WEBPG_SECTIONS
--
  CREATE TABLE "APEX$_WS_WEBPG_SECTIONS" 
   (	"ID" NUMBER NOT NULL ENABLE,
	"WS_APP_ID" NUMBER NOT NULL ENABLE,
	"WEBPAGE_ID" NUMBER,
	"DISPLAY_SEQUENCE" NUMBER,
	"SECTION_TYPE" VARCHAR2(30) NOT NULL ENABLE,
	"TITLE" VARCHAR2(4000),
	"CONTENT" CLOB,
	"CONTENT_UPPER" CLOB,
	"NAV_START_WEBPAGE_ID" NUMBER,
	"NAV_MAX_LEVEL" NUMBER,
	"NAV_INCLUDE_LINK" VARCHAR2(1),
	"DATA_GRID_ID" NUMBER,
	"REPORT_ID" NUMBER,
	"DATA_SECTION_STYLE" NUMBER,
	"CHART_TYPE" VARCHAR2(255),
	"CHART_3D" VARCHAR2(1),
	"CHART_LABEL" VARCHAR2(255),
	"LABEL_AXIS_TITLE" VARCHAR2(255),
	"CHART_VALUE" VARCHAR2(255),
	"VALUE_AXIS_TITLE" VARCHAR2(255),
	"CHART_AGGREGATE" VARCHAR2(255),
	"CHART_SORTING" VARCHAR2(255),
	"CREATED_ON" DATE NOT NULL ENABLE,
	"CREATED_BY" VARCHAR2(255) NOT NULL ENABLE,
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(255),
	CONSTRAINT "APEX$_WS_WEBPG_SECTION_3D_CK" CHECK (chart_3d in ('Y','N')) ENABLE,
	CONSTRAINT "APEX$_WS_WEBPG_SECTION_LINK_CK" CHECK (nav_include_link in ('Y','N')) ENABLE,
	CONSTRAINT "APEX$_WS_WEBPG_SECTION_TYPE_CK" CHECK (section_type in ('TEXT','DATA','CHART','NAV_PAGE','NAV_SECTION')) ENABLE,
	CONSTRAINT "APEX$_WS_WEBPG_SECTIONS_PK" PRIMARY KEY ("ID") ENABLE
   );
--
-- APPOINTMENT
--
  CREATE TABLE "APPOINTMENT" 
   (	"A_ID" NUMBER(*,0),
	"A_PNAME" VARCHAR2(50),
	"A_EMAIL" VARCHAR2(70),
	"A_ADDRESS" VARCHAR2(250),
	"A_DPT" VARCHAR2(100),
	"A_PHONE" VARCHAR2(20),
	"A_PROBLEM" VARCHAR2(250),
	"A_SHIFT" VARCHAR2(20),
	"A_AGE" NUMBER(*,0),
	"A_GENDER" VARCHAR2(10),
	PRIMARY KEY ("A_ID") ENABLE
   );
--
-- DEMO_CUSTOMERS
--
  CREATE TABLE "DEMO_CUSTOMERS" 
   (	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"CUST_FIRST_NAME" VARCHAR2(20) NOT NULL ENABLE,
	"CUST_LAST_NAME" VARCHAR2(20) NOT NULL ENABLE,
	"CUST_STREET_ADDRESS1" VARCHAR2(60),
	"CUST_STREET_ADDRESS2" VARCHAR2(60),
	"CUST_CITY" VARCHAR2(30),
	"CUST_STATE" VARCHAR2(2),
	"CUST_POSTAL_CODE" VARCHAR2(10),
	"PHONE_NUMBER1" VARCHAR2(25),
	"PHONE_NUMBER2" VARCHAR2(25),
	"CREDIT_LIMIT" NUMBER(9,2),
	"CUST_EMAIL" VARCHAR2(30),
	CONSTRAINT "DEMO_CUST_CREDIT_LIMIT_MAX" CHECK (credit_limit <= 5000) ENABLE,
	CONSTRAINT "DEMO_CUSTOMERS_PK" PRIMARY KEY ("CUSTOMER_ID") ENABLE
   );
--
-- DEMO_ORDER_ITEMS
--
  CREATE TABLE "DEMO_ORDER_ITEMS" 
   (	"ORDER_ITEM_ID" NUMBER(3,0) NOT NULL ENABLE,
	"ORDER_ID" NUMBER NOT NULL ENABLE,
	"PRODUCT_ID" NUMBER NOT NULL ENABLE,
	"UNIT_PRICE" NUMBER(8,2) NOT NULL ENABLE,
	"QUANTITY" NUMBER(8,0) NOT NULL ENABLE,
	CONSTRAINT "DEMO_ORDER_ITEMS_PK" PRIMARY KEY ("ORDER_ITEM_ID") ENABLE
   );
--
-- DEMO_ORDERS
--
  CREATE TABLE "DEMO_ORDERS" 
   (	"ORDER_ID" NUMBER NOT NULL ENABLE,
	"CUSTOMER_ID" NUMBER NOT NULL ENABLE,
	"ORDER_TOTAL" NUMBER(8,2),
	"ORDER_TIMESTAMP" DATE,
	"USER_ID" NUMBER,
	CONSTRAINT "DEMO_ORDER_TOTAL_MIN" CHECK (order_total >= 0) ENABLE,
	CONSTRAINT "DEMO_ORDER_PK" PRIMARY KEY ("ORDER_ID") ENABLE
   );
--
-- DEMO_PRODUCT_INFO
--
  CREATE TABLE "DEMO_PRODUCT_INFO" 
   (	"PRODUCT_ID" NUMBER NOT NULL ENABLE,
	"PRODUCT_NAME" VARCHAR2(50),
	"PRODUCT_DESCRIPTION" VARCHAR2(2000),
	"CATEGORY" VARCHAR2(30),
	"PRODUCT_AVAIL" VARCHAR2(1),
	"LIST_PRICE" NUMBER(8,2),
	"PRODUCT_IMAGE" BLOB,
	"MIMETYPE" VARCHAR2(255),
	"FILENAME" VARCHAR2(400),
	"IMAGE_LAST_UPDATE" DATE,
	CONSTRAINT "DEMO_PRODUCT_INFO_PK" PRIMARY KEY ("PRODUCT_ID") ENABLE
   );
--
-- DEMO_STATES
--
  CREATE TABLE "DEMO_STATES" 
   (	"ST" VARCHAR2(30),
	"STATE_NAME" VARCHAR2(30)
   );
--
-- DEMO_USERS
--
  CREATE TABLE "DEMO_USERS" 
   (	"USER_ID" NUMBER,
	"USER_NAME" VARCHAR2(100),
	"PASSWORD" VARCHAR2(4000),
	"CREATED_ON" DATE,
	"QUOTA" NUMBER,
	"PRODUCTS" CHAR(1),
	"EXPIRES_ON" DATE,
	"ADMIN_USER" CHAR(1),
	CONSTRAINT "DEMO_USERS_PK" PRIMARY KEY ("USER_ID") ENABLE
   );
--
-- DEPARTMENT
--
  CREATE TABLE "DEPARTMENT" 
   (	"DPT_ID" NUMBER,
	"DPT_NAME" VARCHAR2(50),
	PRIMARY KEY ("DPT_ID") ENABLE
   );
--
-- DEPT
--
  CREATE TABLE "DEPT" 
   (	"DEPTNO" NUMBER(2,0),
	"DNAME" VARCHAR2(14),
	"LOC" VARCHAR2(13),
	PRIMARY KEY ("DEPTNO") ENABLE
   );
--
-- DOCTOR_SALARY
--
  CREATE TABLE "DOCTOR_SALARY" 
   (	"D_ID" NUMBER,
	"D_NAME" VARCHAR2(50),
	"D_SALARY" NUMBER
   );
--
-- DOCTORS
--
  CREATE TABLE "DOCTORS" 
   (	"D_ID" NUMBER,
	"D_NAME" VARCHAR2(50),
	"D_AGE" NUMBER,
	"D_DEPARTMENT" VARCHAR2(40),
	"D_DESIGNATION" VARCHAR2(50),
	"D_PHONE" VARCHAR2(20),
	"D_GENDER" VARCHAR2(20),
	"D_USERNAME" VARCHAR2(20),
	"D_PASSWORD" VARCHAR2(70),
	PRIMARY KEY ("D_ID") ENABLE
   );
--
-- EMP
--
  CREATE TABLE "EMP" 
   (	"EMPNO" NUMBER(4,0) NOT NULL ENABLE,
	"ENAME" VARCHAR2(10),
	"JOB" VARCHAR2(9),
	"MGR" NUMBER(4,0),
	"HIREDATE" DATE,
	"SAL" NUMBER(7,2),
	"COMM" NUMBER(7,2),
	"DEPTNO" NUMBER(2,0),
	PRIMARY KEY ("EMPNO") ENABLE
   );
--
-- HTMLDB_PLAN_TABLE
--
  CREATE TABLE "HTMLDB_PLAN_TABLE" 
   (	"STATEMENT_ID" VARCHAR2(30),
	"PLAN_ID" NUMBER,
	"TIMESTAMP" DATE,
	"REMARKS" VARCHAR2(4000),
	"OPERATION" VARCHAR2(30),
	"OPTIONS" VARCHAR2(255),
	"OBJECT_NODE" VARCHAR2(128),
	"OBJECT_OWNER" VARCHAR2(30),
	"OBJECT_NAME" VARCHAR2(30),
	"OBJECT_ALIAS" VARCHAR2(65),
	"OBJECT_INSTANCE" NUMBER(*,0),
	"OBJECT_TYPE" VARCHAR2(30),
	"OPTIMIZER" VARCHAR2(255),
	"SEARCH_COLUMNS" NUMBER,
	"ID" NUMBER(*,0),
	"PARENT_ID" NUMBER(*,0),
	"DEPTH" NUMBER(*,0),
	"POSITION" NUMBER(*,0),
	"COST" NUMBER(*,0),
	"CARDINALITY" NUMBER(*,0),
	"BYTES" NUMBER(*,0),
	"OTHER_TAG" VARCHAR2(255),
	"PARTITION_START" VARCHAR2(255),
	"PARTITION_STOP" VARCHAR2(255),
	"PARTITION_ID" NUMBER(*,0),
	"OTHER" LONG,
	"DISTRIBUTION" VARCHAR2(30),
	"CPU_COST" NUMBER(*,0),
	"IO_COST" NUMBER(*,0),
	"TEMP_SPACE" NUMBER(*,0),
	"ACCESS_PREDICATES" VARCHAR2(4000),
	"FILTER_PREDICATES" VARCHAR2(4000),
	"PROJECTION" VARCHAR2(4000),
	"TIME" NUMBER(*,0),
	"QBLOCK_NAME" VARCHAR2(30)
   );
--
-- MEDICINE
--
  CREATE TABLE "MEDICINE" 
   (	"MEDICINE_ID" NUMBER(*,0),
	"M_NAME" VARCHAR2(50),
	"M_MANUFACTURE" VARCHAR2(50),
	"M_EXPIRE" VARCHAR2(50),
	"M_PRICE" NUMBER(10,2),
	PRIMARY KEY ("MEDICINE_ID") ENABLE
   );
--
-- PATIENT
--
  CREATE TABLE "PATIENT" 
   (	"P_ID" NUMBER(*,0),
	"P_PNAME" VARCHAR2(50),
	"P_EMAIL" VARCHAR2(70),
	"P_ADDRESS" VARCHAR2(250),
	"P_DPT" VARCHAR2(100),
	"P_PHONE" VARCHAR2(20),
	"P_PROBLEM" VARCHAR2(250),
	"P_SHIFT" VARCHAR2(20),
	"P_AGE" NUMBER(*,0),
	"P_GENDER" VARCHAR2(10),
	PRIMARY KEY ("P_ID") ENABLE
   );
--
-- PATIENTUP
--
  CREATE TABLE "PATIENTUP" 
   (	"ID" NUMBER,
	"USERNAME" VARCHAR2(50),
	"PASSWORD" NUMBER,
	PRIMARY KEY ("ID") ENABLE
   );
--
-- PRESCRIPTION
--
  CREATE TABLE "PRESCRIPTION" 
   (	"PRES_ID" NUMBER,
	"PATIENT_NAME" VARCHAR2(30) NOT NULL ENABLE,
	"PATIENT_AGE" NUMBER NOT NULL ENABLE,
	"PATIENT_GENDER" VARCHAR2(20) NOT NULL ENABLE,
	"DOCTOR_NAME" VARCHAR2(30) NOT NULL ENABLE,
	"MEDICINE_NAME" VARCHAR2(30) NOT NULL ENABLE,
	PRIMARY KEY ("PRES_ID") ENABLE
   );
--
-- REPORTS
--
  CREATE TABLE "REPORTS" 
   (	"P_ID" NUMBER,
	"P_NAME" VARCHAR2(30) NOT NULL ENABLE,
	"P_REPORTS" VARCHAR2(100),
	PRIMARY KEY ("P_ID") ENABLE
   );
--
-- SELECTED_MEDICINE
--
  CREATE TABLE "SELECTED_MEDICINE" 
   (	"NAME" VARCHAR2(50),
	"PRICE" NUMBER,
	"QUANTITY" NUMBER,
	"TOTAL_AMOUNT" NUMBER
   );
--
-- APEX$_ACL_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_ACL_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_ACL"FOR EACH ROW
  begin
    --
    -- maintain pk and timestamps
    --
    :new.username := upper(:new.username);
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    end if;
end;
/
--
-- APEX$_WS_FILES_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_FILES_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_FILES"FOR EACH ROW
  begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting and :new.image_alias is null then
        :new.image_alias := :new.name;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        :new.content_last_update := sysdate;
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        if nvl(length(:new.content),0) <> nvl(length(:old.content),0) then
            :new.content_last_update := sysdate;
        end if;
    end if;
end;
/
--
-- APEX$_WS_LINKS_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_LINKS_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_LINKS"FOR EACH ROW
  begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    end if;
end;
/
--
-- APEX$_WS_NOTES_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_NOTES_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_NOTES"FOR EACH ROW
  begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    end if;
end;
/
--
-- APEX$_WS_ROWS_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_ROWS_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_ROWS"FOR EACH ROW
  declare
    l_tag_list apex_application_global.vc_arr2;
    type col_arr is table of varchar2(32767) index by varchar2(255);
    la_col_label col_arr;
    procedure datagrid_logging( 
        p_row_id       in number,
        p_ws_app_id    in number,
        p_data_grid_id in number,
        p_col_name     in varchar2,
        p_type         in varchar2,
        p_old_c        in varchar2 default null,
        p_new_c        in varchar2 default null,
        p_old_d        in date default null,
        p_new_d        in date default null,
        p_old_n        in number default null,
        p_new_n        in number default null)
    is
    begin
        case p_type
        when 'C' then
          if (p_old_c is null and p_new_c is not null) or (p_old_c is not null and p_new_c is null) or (p_old_c != p_new_c) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value, new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_c, p_new_c, sysdate, v('APP_USER'));
          end if;
        when 'D' then
          if (p_old_d is null and p_new_d is not null) or (p_old_d is not null and p_new_d is null) or (p_old_d != p_new_d) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value,  new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_d, p_new_d, sysdate, v('APP_USER'));
        	  end if;
        when 'N' then
          if (p_old_n is null and p_new_n is not null) or (p_old_n is not null and p_new_n is null) or (p_old_n != p_new_n) then
              insert into apex$_ws_history (row_id, ws_app_id, data_grid_id, column_name, old_value,  new_value, change_date, application_user_id)
              values (p_row_id, p_ws_app_id, p_data_grid_id, p_col_name, p_old_n, p_new_n, sysdate, v('APP_USER'));
          end if;
        end case;
    end datagrid_logging;
    procedure wa( p_c in out nocopy clob, p_buf in varchar2 )
    is
    l_lf varchar2(2) := unistr('\000a');
    begin
    if p_buf is not null then dbms_lob.writeappend( p_c, length(p_buf||l_lf), upper(p_buf)||l_lf); end if;
    end wa;
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.load_order from dual;
        :new.change_count := 0;
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        :new.change_count := :old.change_count + 1;
    end if;
    --
    -- inserting remove chr 13
    --
    if instr(:new.c001,chr(13)) > 0 then :new.c001 := replace(:new.c001,chr(13),null); end if;
    if instr(:new.c002,chr(13)) > 0 then :new.c002 := replace(:new.c002,chr(13),null); end if;
    if instr(:new.c003,chr(13)) > 0 then :new.c003 := replace(:new.c003,chr(13),null); end if;
    if instr(:new.c004,chr(13)) > 0 then :new.c004 := replace(:new.c004,chr(13),null); end if;
    if instr(:new.c005,chr(13)) > 0 then :new.c005 := replace(:new.c005,chr(13),null); end if;
    if instr(:new.c006,chr(13)) > 0 then :new.c006 := replace(:new.c006,chr(13),null); end if;
    if instr(:new.c007,chr(13)) > 0 then :new.c007 := replace(:new.c007,chr(13),null); end if;
    if instr(:new.c008,chr(13)) > 0 then :new.c008 := replace(:new.c008,chr(13),null); end if;
    if instr(:new.c009,chr(13)) > 0 then :new.c009 := replace(:new.c009,chr(13),null); end if;
    if instr(:new.c010,chr(13)) > 0 then :new.c010 := replace(:new.c010,chr(13),null); end if;
    if instr(:new.c011,chr(13)) > 0 then :new.c011 := replace(:new.c011,chr(13),null); end if;
    if instr(:new.c012,chr(13)) > 0 then :new.c012 := replace(:new.c012,chr(13),null); end if;
    if instr(:new.c013,chr(13)) > 0 then :new.c013 := replace(:new.c013,chr(13),null); end if;
    if instr(:new.c014,chr(13)) > 0 then :new.c014 := replace(:new.c014,chr(13),null); end if;
    if instr(:new.c015,chr(13)) > 0 then :new.c015 := replace(:new.c015,chr(13),null); end if;
    if instr(:new.c016,chr(13)) > 0 then :new.c016 := replace(:new.c016,chr(13),null); end if;
    if instr(:new.c017,chr(13)) > 0 then :new.c017 := replace(:new.c017,chr(13),null); end if;
    if instr(:new.c018,chr(13)) > 0 then :new.c018 := replace(:new.c018,chr(13),null); end if;
    if instr(:new.c019,chr(13)) > 0 then :new.c019 := replace(:new.c019,chr(13),null); end if;
    if instr(:new.c020,chr(13)) > 0 then :new.c020 := replace(:new.c010,chr(23),null); end if;
    if instr(:new.c021,chr(13)) > 0 then :new.c021 := replace(:new.c001,chr(23),null); end if;
    if instr(:new.c022,chr(13)) > 0 then :new.c022 := replace(:new.c002,chr(23),null); end if;
    if instr(:new.c023,chr(13)) > 0 then :new.c023 := replace(:new.c003,chr(23),null); end if;
    if instr(:new.c024,chr(13)) > 0 then :new.c024 := replace(:new.c004,chr(23),null); end if;
    if instr(:new.c025,chr(13)) > 0 then :new.c025 := replace(:new.c005,chr(23),null); end if;
    if instr(:new.c026,chr(13)) > 0 then :new.c026 := replace(:new.c006,chr(23),null); end if;
    if instr(:new.c027,chr(13)) > 0 then :new.c027 := replace(:new.c007,chr(23),null); end if;
    if instr(:new.c028,chr(13)) > 0 then :new.c028 := replace(:new.c008,chr(23),null); end if;
    if instr(:new.c029,chr(13)) > 0 then :new.c029 := replace(:new.c009,chr(23),null); end if;
    if instr(:new.c030,chr(13)) > 0 then :new.c030 := replace(:new.c030,chr(13),null); end if;
    if instr(:new.c031,chr(13)) > 0 then :new.c031 := replace(:new.c031,chr(13),null); end if;
    if instr(:new.c032,chr(13)) > 0 then :new.c032 := replace(:new.c032,chr(13),null); end if;
    if instr(:new.c033,chr(13)) > 0 then :new.c033 := replace(:new.c033,chr(13),null); end if;
    if instr(:new.c034,chr(13)) > 0 then :new.c034 := replace(:new.c034,chr(13),null); end if;
    if instr(:new.c035,chr(13)) > 0 then :new.c035 := replace(:new.c035,chr(13),null); end if;
    if instr(:new.c036,chr(13)) > 0 then :new.c036 := replace(:new.c036,chr(13),null); end if;
    if instr(:new.c037,chr(13)) > 0 then :new.c037 := replace(:new.c037,chr(13),null); end if;
    if instr(:new.c038,chr(13)) > 0 then :new.c038 := replace(:new.c038,chr(13),null); end if;
    if instr(:new.c039,chr(13)) > 0 then :new.c039 := replace(:new.c039,chr(13),null); end if;
    if instr(:new.c040,chr(13)) > 0 then :new.c040 := replace(:new.c040,chr(13),null); end if;
    if instr(:new.c041,chr(13)) > 0 then :new.c041 := replace(:new.c041,chr(13),null); end if;
    if instr(:new.c042,chr(13)) > 0 then :new.c042 := replace(:new.c042,chr(13),null); end if;
    if instr(:new.c043,chr(13)) > 0 then :new.c043 := replace(:new.c043,chr(13),null); end if;
    if instr(:new.c044,chr(13)) > 0 then :new.c044 := replace(:new.c044,chr(13),null); end if;
    if instr(:new.c045,chr(13)) > 0 then :new.c045 := replace(:new.c045,chr(13),null); end if;
    if instr(:new.c046,chr(13)) > 0 then :new.c046 := replace(:new.c046,chr(13),null); end if;
    if instr(:new.c047,chr(13)) > 0 then :new.c047 := replace(:new.c047,chr(13),null); end if;
    if instr(:new.c048,chr(13)) > 0 then :new.c048 := replace(:new.c048,chr(13),null); end if;
    if instr(:new.c049,chr(13)) > 0 then :new.c049 := replace(:new.c049,chr(13),null); end if;
    if instr(:new.c050,chr(13)) > 0 then :new.c050 := replace(:new.c050,chr(13),null); end if;
    if :new.search_clob is null then
        dbms_lob.createtemporary( :new.search_clob, false, dbms_lob.session );
    else
        dbms_lob.trim( :new.search_clob, 0 );
    end if;
    wa(:new.search_clob,:new.c001);wa(:new.search_clob,:new.c002);wa(:new.search_clob,:new.c003);
    wa(:new.search_clob,:new.c004);wa(:new.search_clob,:new.c005);wa(:new.search_clob,:new.c006);
    wa(:new.search_clob,:new.c007);wa(:new.search_clob,:new.c008);wa(:new.search_clob,:new.c009);
    wa(:new.search_clob,:new.c010);wa(:new.search_clob,:new.c011);wa(:new.search_clob,:new.c012);
    wa(:new.search_clob,:new.c013);wa(:new.search_clob,:new.c014);wa(:new.search_clob,:new.c015);
    wa(:new.search_clob,:new.c016);wa(:new.search_clob,:new.c017);wa(:new.search_clob,:new.c018);
    wa(:new.search_clob,:new.c019);wa(:new.search_clob,:new.c020);wa(:new.search_clob,:new.c021);
    wa(:new.search_clob,:new.c022);wa(:new.search_clob,:new.c023);wa(:new.search_clob,:new.c024);
    wa(:new.search_clob,:new.c025);wa(:new.search_clob,:new.c026);wa(:new.search_clob,:new.c027);
    wa(:new.search_clob,:new.c028);wa(:new.search_clob,:new.c029);wa(:new.search_clob,:new.c030);
    wa(:new.search_clob,:new.c031);wa(:new.search_clob,:new.c032);wa(:new.search_clob,:new.c033);
    wa(:new.search_clob,:new.c034);wa(:new.search_clob,:new.c035);wa(:new.search_clob,:new.c036);
    wa(:new.search_clob,:new.c037);wa(:new.search_clob,:new.c038);wa(:new.search_clob,:new.c039);
    wa(:new.search_clob,:new.c040);wa(:new.search_clob,:new.c041);wa(:new.search_clob,:new.c042);
    wa(:new.search_clob,:new.c043);wa(:new.search_clob,:new.c044);wa(:new.search_clob,:new.c045);
    wa(:new.search_clob,:new.c046);wa(:new.search_clob,:new.c047);wa(:new.search_clob,:new.c048);
    wa(:new.search_clob,:new.c049);wa(:new.search_clob,:new.c050);
    --
    -- history
    --
    if updating then
       -- initialize column label array
       for i in 1..50
       loop
           la_col_label('C'||to_char(i,'FM009')) := null;
           la_col_label('N'||to_char(i,'FM009')) := null;
           la_col_label('D'||to_char(i,'FM009')) := null;
       end loop;
       -- get column label array
       for c1 in (select column_alias, report_label 
                  from apex_ws_data_grid_col
                  where data_grid_id = :new.data_grid_id)
       loop
           la_col_label(c1.column_alias) := c1.report_label;
       end loop;
       -- strings
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C001'),'C',:old.c001,:new.c001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C002'),'C',:old.c002,:new.c002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C003'),'C',:old.c003,:new.c003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C004'),'C',:old.c004,:new.c004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C005'),'C',:old.c005,:new.c005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C006'),'C',:old.c006,:new.c006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C007'),'C',:old.c007,:new.c007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C008'),'C',:old.c008,:new.c008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C009'),'C',:old.c009,:new.c009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C010'),'C',:old.c010,:new.c010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C011'),'C',:old.c011,:new.c011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C012'),'C',:old.c012,:new.c012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C013'),'C',:old.c013,:new.c013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C014'),'C',:old.c014,:new.c014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C015'),'C',:old.c015,:new.c015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C016'),'C',:old.c016,:new.c016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C017'),'C',:old.c017,:new.c017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C018'),'C',:old.c018,:new.c018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C019'),'C',:old.c019,:new.c019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C020'),'C',:old.c020,:new.c020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C021'),'C',:old.c021,:new.c021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C022'),'C',:old.c022,:new.c022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C023'),'C',:old.c023,:new.c023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C024'),'C',:old.c024,:new.c024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C025'),'C',:old.c025,:new.c025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C026'),'C',:old.c026,:new.c026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C027'),'C',:old.c027,:new.c027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C028'),'C',:old.c028,:new.c028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C029'),'C',:old.c029,:new.c029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C030'),'C',:old.c030,:new.c030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C031'),'C',:old.c031,:new.c031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C032'),'C',:old.c032,:new.c032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C033'),'C',:old.c033,:new.c033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C034'),'C',:old.c034,:new.c034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C035'),'C',:old.c035,:new.c035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C036'),'C',:old.c036,:new.c036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C037'),'C',:old.c037,:new.c037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C038'),'C',:old.c038,:new.c038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C039'),'C',:old.c039,:new.c039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C040'),'C',:old.c040,:new.c040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C041'),'C',:old.c041,:new.c041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C042'),'C',:old.c042,:new.c042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C043'),'C',:old.c043,:new.c043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C044'),'C',:old.c044,:new.c044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C045'),'C',:old.c045,:new.c045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C046'),'C',:old.c046,:new.c046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C047'),'C',:old.c047,:new.c047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C048'),'C',:old.c048,:new.c048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C049'),'C',:old.c049,:new.c049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('C050'),'C',:old.c050,:new.c050);
       -- numbers
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N001'),'N',null,null,null,null,:old.n001,:new.n001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N002'),'N',null,null,null,null,:old.n002,:new.n002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N003'),'N',null,null,null,null,:old.n003,:new.n003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N004'),'N',null,null,null,null,:old.n004,:new.n004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N005'),'N',null,null,null,null,:old.n005,:new.n005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N006'),'N',null,null,null,null,:old.n006,:new.n006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N007'),'N',null,null,null,null,:old.n007,:new.n007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N008'),'N',null,null,null,null,:old.n008,:new.n008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N009'),'N',null,null,null,null,:old.n009,:new.n009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N010'),'N',null,null,null,null,:old.n010,:new.n010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N011'),'N',null,null,null,null,:old.n011,:new.n011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N012'),'N',null,null,null,null,:old.n012,:new.n012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N013'),'N',null,null,null,null,:old.n013,:new.n013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N014'),'N',null,null,null,null,:old.n014,:new.n014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N015'),'N',null,null,null,null,:old.n015,:new.n015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N016'),'N',null,null,null,null,:old.n016,:new.n016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N017'),'N',null,null,null,null,:old.n017,:new.n017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N018'),'N',null,null,null,null,:old.n018,:new.n018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N019'),'N',null,null,null,null,:old.n019,:new.n019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N020'),'N',null,null,null,null,:old.n020,:new.n020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N021'),'N',null,null,null,null,:old.n021,:new.n021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N022'),'N',null,null,null,null,:old.n022,:new.n022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N023'),'N',null,null,null,null,:old.n023,:new.n023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N024'),'N',null,null,null,null,:old.n024,:new.n024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N025'),'N',null,null,null,null,:old.n025,:new.n025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N026'),'N',null,null,null,null,:old.n026,:new.n026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N027'),'N',null,null,null,null,:old.n027,:new.n027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N028'),'N',null,null,null,null,:old.n028,:new.n028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N029'),'N',null,null,null,null,:old.n029,:new.n029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N030'),'N',null,null,null,null,:old.n030,:new.n030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N031'),'N',null,null,null,null,:old.n031,:new.n031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N032'),'N',null,null,null,null,:old.n032,:new.n032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N033'),'N',null,null,null,null,:old.n033,:new.n033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N034'),'N',null,null,null,null,:old.n034,:new.n034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N035'),'N',null,null,null,null,:old.n035,:new.n035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N036'),'N',null,null,null,null,:old.n036,:new.n036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N037'),'N',null,null,null,null,:old.n037,:new.n037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N038'),'N',null,null,null,null,:old.n038,:new.n038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N039'),'N',null,null,null,null,:old.n039,:new.n039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N040'),'N',null,null,null,null,:old.n040,:new.n040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N041'),'N',null,null,null,null,:old.n041,:new.n041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N042'),'N',null,null,null,null,:old.n042,:new.n042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N043'),'N',null,null,null,null,:old.n043,:new.n043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N044'),'N',null,null,null,null,:old.n044,:new.n044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N045'),'N',null,null,null,null,:old.n045,:new.n045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N046'),'N',null,null,null,null,:old.n046,:new.n046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N047'),'N',null,null,null,null,:old.n047,:new.n047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N048'),'N',null,null,null,null,:old.n048,:new.n048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N049'),'N',null,null,null,null,:old.n049,:new.n049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('N050'),'N',null,null,null,null,:old.n050,:new.n050);
       -- dates
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D001'),'D',null,null,:old.d001,:new.d001);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D002'),'D',null,null,:old.d002,:new.d002);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D003'),'D',null,null,:old.d003,:new.d003);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D004'),'D',null,null,:old.d004,:new.d004);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D005'),'D',null,null,:old.d005,:new.d005);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D006'),'D',null,null,:old.d006,:new.d006);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D007'),'D',null,null,:old.d007,:new.d007);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D008'),'D',null,null,:old.d008,:new.d008);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D009'),'D',null,null,:old.d009,:new.d009);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D010'),'D',null,null,:old.d010,:new.d010);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D011'),'D',null,null,:old.d011,:new.d011);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D012'),'D',null,null,:old.d012,:new.d012);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D013'),'D',null,null,:old.d013,:new.d013);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D014'),'D',null,null,:old.d014,:new.d014);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D015'),'D',null,null,:old.d015,:new.d015);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D016'),'D',null,null,:old.d016,:new.d016);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D017'),'D',null,null,:old.d017,:new.d017);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D018'),'D',null,null,:old.d018,:new.d018);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D019'),'D',null,null,:old.d019,:new.d019);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D020'),'D',null,null,:old.d020,:new.d020);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D021'),'D',null,null,:old.d021,:new.d021);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D022'),'D',null,null,:old.d022,:new.d022);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D023'),'D',null,null,:old.d023,:new.d023);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D024'),'D',null,null,:old.d024,:new.d024);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D025'),'D',null,null,:old.d025,:new.d025);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D026'),'D',null,null,:old.d026,:new.d026);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D027'),'D',null,null,:old.d027,:new.d027);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D028'),'D',null,null,:old.d028,:new.d028);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D029'),'D',null,null,:old.d029,:new.d029);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D030'),'D',null,null,:old.d030,:new.d030);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D031'),'D',null,null,:old.d031,:new.d031);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D032'),'D',null,null,:old.d032,:new.d032);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D033'),'D',null,null,:old.d033,:new.d033);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D034'),'D',null,null,:old.d034,:new.d034);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D035'),'D',null,null,:old.d035,:new.d035);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D036'),'D',null,null,:old.d036,:new.d036);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D037'),'D',null,null,:old.d037,:new.d037);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D038'),'D',null,null,:old.d038,:new.d038);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D039'),'D',null,null,:old.d039,:new.d039);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D040'),'D',null,null,:old.d040,:new.d040);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D041'),'D',null,null,:old.d041,:new.d041);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D042'),'D',null,null,:old.d042,:new.d042);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D043'),'D',null,null,:old.d043,:new.d043);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D044'),'D',null,null,:old.d044,:new.d044);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D045'),'D',null,null,:old.d045,:new.d045);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D046'),'D',null,null,:old.d046,:new.d046);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D047'),'D',null,null,:old.d047,:new.d047);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D048'),'D',null,null,:old.d048,:new.d048);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D049'),'D',null,null,:old.d049,:new.d049);
       datagrid_logging(:new.id,:new.ws_app_id,:new.data_grid_id,la_col_label('D050'),'D',null,null,:old.d050,:new.d050);
    end if;
    --
    -- set owner
    --
    if :new.owner is null then
        :new.owner := :new.created_by;
    end if;
end;
/
--
-- APEX$_WS_TAGS_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_TAGS_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_TAGS"FOR EACH ROW
  begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    end if;
end;
/
--
-- APEX$_WS_WEBPG_SECTIONS_T1
--
  CREATE OR REPLACE TRIGGER "APEX$_WS_WEBPG_SECTIONS_T1"
  BEFORE INSERT OR UPDATE ON "APEX$_WS_WEBPG_SECTIONS"FOR EACH ROW
  declare
    l_sequence_changed varchar2(1) := 'N';
    l_title_changed varchar2(1) := 'N';
    l_content_changed varchar2(1) := 'N';
    procedure clob_upper( p_content in clob, p_content_upper in out nocopy clob)
    is
    l_buf varchar2(32767);
    l_off number;
    l_amt number;
    begin
    if p_content is not null then
        l_amt := 8000;
        l_off := 1;
         dbms_lob.trim( p_content_upper, 0);
         begin
             loop
                 dbms_lob.read( p_content, l_amt, l_off, l_buf );
                 l_buf := upper( l_buf );
                 dbms_lob.writeappend( p_content_upper, length(l_buf), l_buf);
                 l_off := l_off + l_amt;
                 l_amt := 8000;
             end loop;
         exception
             when no_data_found then null;
         end;
     end if;
end clob_upper;
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if :new.section_type = 'NAV_PAGE' then
        if :new.nav_include_link is null then
            :new.nav_include_link := 'Y';
        end if;
    end if;
    if inserting and :new.content is not null then
        dbms_lob.createtemporary( :new.content_upper, false, dbms_lob.call );
        clob_upper( :new.content, :new.content_upper );
    elsif updating then
        if :new.content_upper is null then
            dbms_lob.createtemporary( :new.content_upper, false, dbms_lob.call );
        end if;
        clob_upper( :new.content, :new.content_upper );
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
        if nvl(:old.display_sequence,-999) != nvl(:new.display_sequence,-999) then
            l_sequence_changed := 'Y';
        end if;
        if nvl(:old.title,'jKKwZk') != nvl(:new.title,'jKKwZk') then
            l_title_changed := 'Y';
        end if;
        if dbms_lob.compare(:new.content,:old.content) != 0 or nvl(length(:new.content),0) != nvl(length(:old.content),0) then
            l_content_changed := 'Y';
        end if;
        if l_sequence_changed = 'Y' or l_title_changed = 'Y' or l_content_changed = 'Y' then
            insert into apex$_ws_webpg_section_history (section_id, ws_app_id, webpage_id, old_display_sequence, new_display_sequence,
            old_title, new_title, old_content, new_content, change_date, application_user_id)
            values (:new.id, :new.ws_app_id, :new.webpage_id,
                    decode(l_sequence_changed,'Y',:old.display_sequence,null), decode(l_sequence_changed,'Y',:new.display_sequence,null),
                    decode(l_title_changed,'Y',:old.title,null), decode(l_title_changed,'Y',:new.title,null),
                    decode(l_content_changed,'Y',:old.content,null), decode(l_content_changed,'Y',:new.content,null), sysdate, v('APP_USER'));
        end if;
    end if;
end;
/
--
-- BI_DEMO_USERS
--
  CREATE OR REPLACE TRIGGER "BI_DEMO_USERS"
  BEFORE INSERT ON "DEMO_USERS"FOR EACH ROW
  begin
begin
  for c1 in (
    select DEMO_USERS_SEQ.nextval next_val
    from dual
  ) loop
    :new.USER_ID :=  c1.next_val;
    :new.admin_user := 'N';
    :new.created_on := sysdate;
  end loop;
end;
end;
/
--
-- DEMO_ORDER_ITEMS_GET_PRICE
--
  CREATE OR REPLACE TRIGGER "DEMO_ORDER_ITEMS_GET_PRICE"
  BEFORE INSERT OR UPDATE ON "DEMO_ORDER_ITEMS"FOR EACH ROW
  declare
  l_list_price number;
begin
-- First, we need to get the current list price of the order line item
select list_price into l_list_price from demo_product_info
  where product_id = :new.product_id;

-- Once we have the correct price, we will update the order line with the correct price
:new.unit_price := l_list_price;

end;
/
--
-- DEMO_USERS_T1
--
  CREATE OR REPLACE TRIGGER "DEMO_USERS_T1"
  BEFORE INSERT OR UPDATE ON "DEMO_USERS"FOR EACH ROW
  begin
:NEW.user_name := upper(:NEW.user_name);
end;
/
--
-- INSERT_DEMO_CUST
--
  CREATE OR REPLACE TRIGGER "INSERT_DEMO_CUST"
  BEFORE INSERT ON "DEMO_CUSTOMERS"FOR EACH ROW
  DECLARE
  cust_id number;
BEGIN
  SELECT demo_cust_seq.nextval
    INTO cust_id
    FROM dual;
  :new.CUSTOMER_ID := cust_id;
END;
/
--
-- INSERT_DEMO_ORDER_ITEMS
--
  CREATE OR REPLACE TRIGGER "INSERT_DEMO_ORDER_ITEMS"
  BEFORE INSERT ON "DEMO_ORDER_ITEMS"FOR EACH ROW
  begin
declare
  order_item_id number;
begin
select demo_order_items_seq.nextval into order_item_id from dual;
:new.ORDER_ITEM_ID := order_item_id;
end;
end;
/
--
-- INSERT_DEMO_PROD
--
  CREATE OR REPLACE TRIGGER "INSERT_DEMO_PROD"
  BEFORE INSERT ON "DEMO_PRODUCT_INFO"FOR EACH ROW
  DECLARE
  prod_id number;
BEGIN
  SELECT demo_prod_seq.nextval
    INTO prod_id
    FROM dual;
  :new.PRODUCT_ID := prod_id;
END;
/
--
-- UPDATE_ORDER_TOTAL
--
  CREATE OR REPLACE TRIGGER "UPDATE_ORDER_TOTAL"
  AFTER INSERT OR UPDATE OR DELETE ON "DEMO_ORDER_ITEMS"
  begin

-- Update the Order Total when any order item is changed

update demo_orders set order_total =
  (select sum(unit_price*quantity) from demo_order_items
    where demo_order_items.order_id = demo_orders.order_id);
end;
/
--
-- APEX$_ACL_IDX1
--
  CREATE INDEX "APEX$_ACL_IDX1" ON "APEX$_ACL" ("WS_APP_ID");
--
-- APEX$_ACL_PK
--
  CREATE UNIQUE INDEX "APEX$_ACL_PK" ON "APEX$_ACL" ("ID");
--
-- APEX$_WS_FILES_IDX1
--
  CREATE INDEX "APEX$_WS_FILES_IDX1" ON "APEX$_WS_FILES" ("WS_APP_ID","DATA_GRID_ID","ROW_ID");
--
-- APEX$_WS_FILES_IDX2
--
  CREATE INDEX "APEX$_WS_FILES_IDX2" ON "APEX$_WS_FILES" ("WS_APP_ID","WEBPAGE_ID");
--
-- APEX$_WS_FILES_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_FILES_PK" ON "APEX$_WS_FILES" ("ID");
--
-- APEX$_WS_HISTORY_IDX
--
  CREATE INDEX "APEX$_WS_HISTORY_IDX" ON "APEX$_WS_HISTORY" ("WS_APP_ID","DATA_GRID_ID","ROW_ID");
--
-- APEX$_WS_LINKS_IDX1
--
  CREATE INDEX "APEX$_WS_LINKS_IDX1" ON "APEX$_WS_LINKS" ("WS_APP_ID","DATA_GRID_ID","ROW_ID");
--
-- APEX$_WS_LINKS_IDX2
--
  CREATE INDEX "APEX$_WS_LINKS_IDX2" ON "APEX$_WS_LINKS" ("WS_APP_ID","WEBPAGE_ID");
--
-- APEX$_WS_LINKS_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_LINKS_PK" ON "APEX$_WS_LINKS" ("ID");
--
-- APEX$_WS_NOTES_IDX1
--
  CREATE INDEX "APEX$_WS_NOTES_IDX1" ON "APEX$_WS_NOTES" ("WS_APP_ID","DATA_GRID_ID","ROW_ID");
--
-- APEX$_WS_NOTES_IDX2
--
  CREATE INDEX "APEX$_WS_NOTES_IDX2" ON "APEX$_WS_NOTES" ("WS_APP_ID","WEBPAGE_ID");
--
-- APEX$_WS_NOTES_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_NOTES_PK" ON "APEX$_WS_NOTES" ("ID");
--
-- APEX$_WS_ROWS_IDX
--
  CREATE INDEX "APEX$_WS_ROWS_IDX" ON "APEX$_WS_ROWS" ("WS_APP_ID","DATA_GRID_ID");
--
-- APEX$_WS_ROWS_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_ROWS_PK" ON "APEX$_WS_ROWS" ("ID");
--
-- APEX$_WS_TAGS_IDX1
--
  CREATE INDEX "APEX$_WS_TAGS_IDX1" ON "APEX$_WS_TAGS" ("WS_APP_ID","DATA_GRID_ID","ROW_ID");
--
-- APEX$_WS_TAGS_IDX2
--
  CREATE INDEX "APEX$_WS_TAGS_IDX2" ON "APEX$_WS_TAGS" ("WS_APP_ID","WEBPAGE_ID");
--
-- APEX$_WS_TAGS_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_TAGS_PK" ON "APEX$_WS_TAGS" ("ID");
--
-- APEX$_WS_WEBPG_SECHIST_IDX1
--
  CREATE INDEX "APEX$_WS_WEBPG_SECHIST_IDX1" ON "APEX$_WS_WEBPG_SECTION_HISTORY" ("WS_APP_ID","WEBPAGE_ID","SECTION_ID");
--
-- APEX$_WS_WEBPG_SECTIONS_PK
--
  CREATE UNIQUE INDEX "APEX$_WS_WEBPG_SECTIONS_PK" ON "APEX$_WS_WEBPG_SECTIONS" ("ID");
--
-- DEMO_CUST_NAME_IX
--
  CREATE INDEX "DEMO_CUST_NAME_IX" ON "DEMO_CUSTOMERS" ("CUST_LAST_NAME","CUST_FIRST_NAME");
--
-- DEMO_CUSTOMERS_PK
--
  CREATE UNIQUE INDEX "DEMO_CUSTOMERS_PK" ON "DEMO_CUSTOMERS" ("CUSTOMER_ID");
--
-- DEMO_ORD_CUSTOMER_IX
--
  CREATE INDEX "DEMO_ORD_CUSTOMER_IX" ON "DEMO_ORDERS" ("CUSTOMER_ID");
--
-- DEMO_ORDER_ITEMS_PK
--
  CREATE UNIQUE INDEX "DEMO_ORDER_ITEMS_PK" ON "DEMO_ORDER_ITEMS" ("ORDER_ITEM_ID");
--
-- DEMO_ORDER_PK
--
  CREATE UNIQUE INDEX "DEMO_ORDER_PK" ON "DEMO_ORDERS" ("ORDER_ID");
--
-- DEMO_PRODUCT_INFO_PK
--
  CREATE UNIQUE INDEX "DEMO_PRODUCT_INFO_PK" ON "DEMO_PRODUCT_INFO" ("PRODUCT_ID");
--
-- DEMO_USERS_PK
--
  CREATE UNIQUE INDEX "DEMO_USERS_PK" ON "DEMO_USERS" ("USER_ID");
--
-- APEX$_WS_FILES_FK
--
ALTER TABLE "APEX$_WS_FILES" ADD CONSTRAINT "APEX$_WS_FILES_FK" FOREIGN KEY ("ROW_ID") REFERENCES "APEX$_WS_ROWS"("ID") ON DELETE CASCADE ENABLE;

--
-- APEX$_WS_LINKS_FK
--
ALTER TABLE "APEX$_WS_LINKS" ADD CONSTRAINT "APEX$_WS_LINKS_FK" FOREIGN KEY ("ROW_ID") REFERENCES "APEX$_WS_ROWS"("ID") ON DELETE CASCADE ENABLE;

--
-- APEX$_WS_NOTES_FK
--
ALTER TABLE "APEX$_WS_NOTES" ADD CONSTRAINT "APEX$_WS_NOTES_FK" FOREIGN KEY ("ROW_ID") REFERENCES "APEX$_WS_ROWS"("ID") ON DELETE CASCADE ENABLE;

--
-- APEX$_WS_TAGS_FK
--
ALTER TABLE "APEX$_WS_TAGS" ADD CONSTRAINT "APEX$_WS_TAGS_FK" FOREIGN KEY ("ROW_ID") REFERENCES "APEX$_WS_ROWS"("ID") ON DELETE CASCADE ENABLE;

--
-- DEMO_ORDER_ITEMS_FK
--
ALTER TABLE "DEMO_ORDER_ITEMS" ADD CONSTRAINT "DEMO_ORDER_ITEMS_FK" FOREIGN KEY ("ORDER_ID") REFERENCES "DEMO_ORDERS"("ORDER_ID") ON DELETE CASCADE ENABLE;

--
-- DEMO_ORDER_ITEMS_PRODUCT_ID_FK
--
ALTER TABLE "DEMO_ORDER_ITEMS" ADD CONSTRAINT "DEMO_ORDER_ITEMS_PRODUCT_ID_FK" FOREIGN KEY ("PRODUCT_ID") REFERENCES "DEMO_PRODUCT_INFO"("PRODUCT_ID") ON DELETE CASCADE ENABLE;

--
-- DEMO_ORDERS_CUSTOMER_ID_FK
--
ALTER TABLE "DEMO_ORDERS" ADD CONSTRAINT "DEMO_ORDERS_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID") REFERENCES "DEMO_CUSTOMERS"("CUSTOMER_ID") ENABLE;

--
-- DEMO_ORDERS_USER_ID_FK
--
ALTER TABLE "DEMO_ORDERS" ADD CONSTRAINT "DEMO_ORDERS_USER_ID_FK" FOREIGN KEY ("USER_ID") REFERENCES "DEMO_USERS"("USER_ID") ENABLE;

--
-- SYS_C007000
--
ALTER TABLE "EMP" ADD  FOREIGN KEY ("MGR") REFERENCES "EMP"("EMPNO") ENABLE;

--
-- SYS_C007001
--
ALTER TABLE "EMP" ADD  FOREIGN KEY ("DEPTNO") REFERENCES "DEPT"("DEPTNO") ENABLE;

