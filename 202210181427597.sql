prompt PL/SQL Developer Export User Objects for user ZZSJ@LINK4.160.5.240ORCL10
prompt Created by Administrator on 2022年10月9日
set define off
spool 基础数据.log

prompt
prompt Creating table BDF2_COMPANY
prompt ===========================
prompt
create table BDF2_COMPANY
(
  id_   VARCHAR2(60) not null,
  desc_ VARCHAR2(120),
  name_ VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_COMPANY
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_COMPONENT
prompt =============================
prompt
create table BDF2_COMPONENT
(
  id_           VARCHAR2(60) not null,
  component_id_ VARCHAR2(60) not null,
  desc_         VARCHAR2(120)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_COMPONENT
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_CP_COMP_CFG
prompt ===============================
prompt
create table BDF2_CP_COMP_CFG
(
  id_         VARCHAR2(50) not null,
  cols_       VARCHAR2(40),
  control_id_ VARCHAR2(255),
  hide_mode_  VARCHAR2(10),
  meta1_      VARCHAR2(50),
  meta2_      VARCHAR2(50),
  meta3_      VARCHAR2(50),
  name_       VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_CP_COMP_CFG
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_CP_COMP_MEMB
prompt ================================
prompt
create table BDF2_CP_COMP_MEMB
(
  id_                  VARCHAR2(50) not null,
  caption_             VARCHAR2(50),
  col_span_            NUMBER(10),
  control_name_        VARCHAR2(50),
  control_type_        VARCHAR2(20),
  order_               NUMBER(10),
  parent_control_name_ VARCHAR2(50),
  row_span_            NUMBER(10),
  visible_             NUMBER(1),
  width_               VARCHAR2(50),
  config_id_           VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_CP_COMP_MEMB
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_CP_COMP_MEMB
  add constraint FK6E39533C601F85AD foreign key (CONFIG_ID_)
  references BDF2_CP_COMP_CFG (ID_);

prompt
prompt Creating table BDF2_DEPT
prompt ========================
prompt
create table BDF2_DEPT
(
  id_          VARCHAR2(60) not null,
  company_id_  VARCHAR2(60),
  create_date_ DATE,
  desc_        VARCHAR2(120),
  name_        VARCHAR2(60),
  parent_id_   VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_DEPT
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_EXCEL_MODEL
prompt ===============================
prompt
create table BDF2_EXCEL_MODEL
(
  id_               VARCHAR2(60) not null,
  comment_          VARCHAR2(120),
  companyid_        VARCHAR2(60),
  create_date_      DATE,
  datasource_name_  VARCHAR2(60),
  db_type_          VARCHAR2(60),
  end_column_       NUMBER(10),
  end_row_          NUMBER(10),
  excel_sheet_name_ VARCHAR2(60),
  help_doc_         VARCHAR2(60),
  name_             VARCHAR2(60),
  primarykey_       VARCHAR2(60),
  primarykey_type_  VARCHAR2(60),
  processor_        VARCHAR2(120),
  sequence_name_    VARCHAR2(120),
  start_column_     NUMBER(10),
  start_row_        NUMBER(10),
  table_label_      VARCHAR2(120),
  tabel_name_       VARCHAR2(120)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_EXCEL_MODEL
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_EXCEL_MODEL_DETAIL
prompt ======================================
prompt
create table BDF2_EXCEL_MODEL_DETAIL
(
  id_             VARCHAR2(60) not null,
  excel_column_   NUMBER(10),
  excel_model_id_ VARCHAR2(60),
  interceptor_    VARCHAR2(120),
  name_           VARCHAR2(60),
  table_column_   VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_EXCEL_MODEL_DETAIL
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_GROUP
prompt =========================
prompt
create table BDF2_GROUP
(
  id_          VARCHAR2(60) not null,
  company_id_  VARCHAR2(60),
  create_date_ DATE,
  desc_        VARCHAR2(120),
  name_        VARCHAR2(60),
  parent_id_   VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_GROUP
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_GROUP_MEMBER
prompt ================================
prompt
create table BDF2_GROUP_MEMBER
(
  id_          VARCHAR2(60) not null,
  dept_id_     VARCHAR2(60),
  group_id_    VARCHAR2(60),
  position_id_ VARCHAR2(60),
  username_    VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_GROUP_MEMBER
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB
prompt =======================
prompt
create table BDF2_JOB
(
  id_              VARCHAR2(60) not null,
  bean_id_         VARCHAR2(60),
  company_id_      VARCHAR2(60),
  cron_expression_ VARCHAR2(30),
  desc_            VARCHAR2(120),
  end_date         DATE,
  name_            VARCHAR2(60),
  start_date       DATE,
  state_           VARCHAR2(12)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_CALENDAR
prompt ================================
prompt
create table BDF2_JOB_CALENDAR
(
  id_         VARCHAR2(60) not null,
  company_id_ VARCHAR2(60),
  desc_       VARCHAR2(120),
  name_       VARCHAR2(60),
  type_       VARCHAR2(12)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_CALENDAR
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_CALENDAR_DATE
prompt =====================================
prompt
create table BDF2_JOB_CALENDAR_DATE
(
  id_            VARCHAR2(60) not null,
  calendar_date_ DATE,
  calendar_id_   VARCHAR2(60),
  day_of_month_  NUMBER(10),
  day_of_week_   NUMBER(10),
  month_of_year_ NUMBER(10),
  name_          VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_CALENDAR_DATE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_CALENDAR_RELATION
prompt =========================================
prompt
create table BDF2_JOB_CALENDAR_RELATION
(
  id_          VARCHAR2(60) not null,
  calendar_id_ VARCHAR2(60),
  job_id_      VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_CALENDAR_RELATION
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_HEARTBEAT
prompt =================================
prompt
create table BDF2_JOB_HEARTBEAT
(
  id_               VARCHAR2(60) not null,
  application_name_ VARCHAR2(60),
  date_             DATE,
  instance_name_    VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_HEARTBEAT
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_HISTORY
prompt ===============================
prompt
create table BDF2_JOB_HISTORY
(
  id_                VARCHAR2(60) not null,
  end_date           DATE,
  exception_message_ VARCHAR2(2000),
  job_id_            VARCHAR2(60),
  start_date         DATE,
  successful_        NUMBER(1)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 88M
    minextents 1
    maxextents unlimited
  );
create index IN_JOB_HISTORY_END_DATE on BDF2_JOB_HISTORY (END_DATE)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_HISTORY
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 38M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_JOB_PARAMETER
prompt =================================
prompt
create table BDF2_JOB_PARAMETER
(
  id_     VARCHAR2(60) not null,
  job_id_ VARCHAR2(60),
  name_   VARCHAR2(60),
  value_  VARCHAR2(120)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_JOB_PARAMETER
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_MESSAGE
prompt ===========================
prompt
create table BDF2_MESSAGE
(
  id_        VARCHAR2(60) not null,
  content_   VARCHAR2(1000) not null,
  read_      NUMBER(1) not null,
  receiver_  VARCHAR2(60) not null,
  reply_     NUMBER(1),
  send_date_ DATE,
  sender_    VARCHAR2(60) not null,
  tags_      VARCHAR2(100),
  title_     VARCHAR2(60) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_MESSAGE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_MESSAGE_TEMPLATE
prompt ====================================
prompt
create table BDF2_MESSAGE_TEMPLATE
(
  id_         VARCHAR2(60) not null,
  company_id_ VARCHAR2(60),
  content_    VARCHAR2(1000),
  name_       VARCHAR2(60),
  type_       VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_MESSAGE_TEMPLATE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_POSITION
prompt ============================
prompt
create table BDF2_POSITION
(
  id_          VARCHAR2(60) not null,
  company_id_  VARCHAR2(60),
  create_date_ DATE,
  desc_        VARCHAR2(120),
  name_        VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_POSITION
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_RESOURCE_ALLOCATION
prompt =======================================
prompt
create table BDF2_RESOURCE_ALLOCATION
(
  id_             VARCHAR2(60) not null,
  create_date_    DATE,
  create_user_    VARCHAR2(60),
  resource_id_    VARCHAR2(60),
  resource_owner_ VARCHAR2(60),
  resource_type_  VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_RESOURCE_ALLOCATION
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_RESOURCE_OWNER
prompt ==================================
prompt
create table BDF2_RESOURCE_OWNER
(
  username_    VARCHAR2(60) not null,
  company_id_  VARCHAR2(60),
  create_date_ DATE,
  create_user_ VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_RESOURCE_OWNER
  add primary key (USERNAME_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_ROLE
prompt ========================
prompt
create table BDF2_ROLE
(
  id_          VARCHAR2(60) not null,
  company_id_  VARCHAR2(60),
  create_date_ DATE,
  desc_        VARCHAR2(120),
  name_        VARCHAR2(60),
  parent_id_   VARCHAR2(60),
  type_        VARCHAR2(10),
  create_user_ VARCHAR2(60),
  enabled_     NUMBER(1)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_ROLE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_ROLE_MEMBER
prompt ===============================
prompt
create table BDF2_ROLE_MEMBER
(
  id_          VARCHAR2(60) not null,
  create_date_ DATE,
  dept_id_     VARCHAR2(60),
  granted_     NUMBER(1),
  position_id_ VARCHAR2(60),
  role_id_     VARCHAR2(60),
  username_    VARCHAR2(60),
  group_id_    VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_ROLE_MEMBER
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_ROLE_MEMBER
  add constraint FK79BEE4326C254D1D foreign key (GROUP_ID_)
  references BDF2_GROUP (ID_);

prompt
prompt Creating table BDF2_ROLE_RESOURCE
prompt =================================
prompt
create table BDF2_ROLE_RESOURCE
(
  id_         VARCHAR2(60) not null,
  package_id_ VARCHAR2(60),
  role_id_    VARCHAR2(60),
  url_id_     VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_ROLE_RESOURCE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_UREPORT_DEFINITION
prompt ======================================
prompt
create table BDF2_UREPORT_DEFINITION
(
  id_          VARCHAR2(60) not null,
  blob_        BLOB,
  create_date_ DATE not null,
  desc_        VARCHAR2(200),
  file_name_   VARCHAR2(60),
  name_        VARCHAR2(60),
  type_id_     VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_UREPORT_DEFINITION
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_UREPORT_PARAMETER
prompt =====================================
prompt
create table BDF2_UREPORT_PARAMETER
(
  id_                   VARCHAR2(60) not null,
  name_                 VARCHAR2(60),
  report_definition_id_ VARCHAR2(60) not null,
  value_                VARCHAR2(120)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_UREPORT_PARAMETER
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_UREPORT_TYPE
prompt ================================
prompt
create table BDF2_UREPORT_TYPE
(
  id_          VARCHAR2(60) not null,
  category_    VARCHAR2(60),
  create_date_ DATE not null,
  desc_        VARCHAR2(200),
  name_        VARCHAR2(60),
  parent_id_   VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_UREPORT_TYPE
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_URL
prompt =======================
prompt
create table BDF2_URL
(
  id_             VARCHAR2(60) not null,
  company_id_     VARCHAR2(60) not null,
  desc_           VARCHAR2(120),
  for_navigation_ NUMBER(1) not null,
  icon_           VARCHAR2(120),
  name_           VARCHAR2(60) not null,
  order_          NUMBER(10),
  parent_id_      VARCHAR2(60),
  system_id_      VARCHAR2(60),
  url_            VARCHAR2(120)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_URL
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table BDF2_URL_COMPONENT
prompt =================================
prompt
create table BDF2_URL_COMPONENT
(
  id_             VARCHAR2(60) not null,
  authority_type_ VARCHAR2(10) not null,
  role_id_        VARCHAR2(60),
  url_id_         VARCHAR2(60),
  component_id_   VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_URL_COMPONENT
  add primary key (ID_)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table BDF2_URL_COMPONENT
  add constraint FKFCFBDBDCD4C56CC foreign key (COMPONENT_ID_)
  references BDF2_COMPONENT (ID_);

prompt
prompt Creating table DATA_LXXT_BB
prompt ===========================
prompt
create table DATA_LXXT_BB
(
  bbh  VARCHAR2(10) not null,
  gxsj DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DATA_OPER_LOG
prompt ============================
prompt
create table DATA_OPER_LOG
(
  username VARCHAR2(60) not null,
  czlx     VARCHAR2(20),
  czsj     DATE not null,
  czjgzt   VARCHAR2(250),
  lxxtbb   VARCHAR2(60),
  dataid   VARCHAR2(50),
  zipwjm   VARCHAR2(50),
  logwjm   VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_DATA_RULE
prompt ==============================
prompt
create table DCR_M_DATA_RULE
(
  id               INTEGER not null,
  name             VARCHAR2(64),
  code             VARCHAR2(32),
  type             INTEGER,
  check_point      INTEGER,
  check_method     VARCHAR2(255),
  check_style      INTEGER,
  correct_mode     INTEGER,
  correct_mothod   VARCHAR2(512),
  correct_style    INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_DATA_RULE
  add constraint PK_DCR_M_DATA_RULE primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_DEST_COLUMN
prompt ================================
prompt
create table DCR_M_DEST_COLUMN
(
  id               INTEGER not null,
  table_id         INTEGER,
  table_name       VARCHAR2(32),
  column_name      VARCHAR2(32),
  data_type        VARCHAR2(32),
  data_length      INTEGER,
  src_table        VARCHAR2(32),
  src_column       VARCHAR2(1024),
  calc_cuumn       VARCHAR2(10),
  order_no         INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255),
  type             INTEGER,
  column_comment   VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_DEST_COLUMN
  add constraint PK_DCR_M_DEST_COLUMN primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_DEST_TABLE
prompt ===============================
prompt
create table DCR_M_DEST_TABLE
(
  id               INTEGER not null,
  table_name       VARCHAR2(32),
  type             INTEGER,
  owner            VARCHAR2(32),
  parent_id        INTEGER,
  order_no         INTEGER,
  src_owner        VARCHAR2(32),
  src_table_name   VARCHAR2(32),
  blob_flag        INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_DEST_TABLE
  add constraint PK_DCR_M_DEST_TABLE primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_ERROR_DATA
prompt ===============================
prompt
create table DCR_M_ERROR_DATA
(
  id               INTEGER not null,
  task_id          INTEGER,
  table_name       VARCHAR2(32),
  column_name      VARCHAR2(32),
  rule_id          INTEGER,
  pk_id            VARCHAR2(64),
  error_value      VARCHAR2(256),
  correct_value    VARCHAR2(256),
  correct_dttm     DATE,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index INDEX_DCR_M_ERROR_DATA on DCR_M_ERROR_DATA (TASK_ID, TABLE_NAME, RULE_ID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index INDEX_ERROR_VALUE on DCR_M_ERROR_DATA (ERROR_VALUE)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_ERROR_DATA
  add constraint PK_DCR_M_ERROR_DATA primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_TABLE_RULE
prompt ===============================
prompt
create table DCR_M_TABLE_RULE
(
  id               INTEGER not null,
  rule_id          INTEGER,
  table_id         INTEGER,
  table_name       VARCHAR2(32),
  column_name      VARCHAR2(32),
  order_no         INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_TABLE_RULE
  add constraint PK_DCR_M_TABLE_RULE primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_TASK
prompt =========================
prompt
create table DCR_M_TASK
(
  id               INTEGER not null,
  title            VARCHAR2(255),
  owner            VARCHAR2(32),
  table_count      INTEGER,
  constraints_flag INTEGER,
  start_dttm       DATE,
  end_dttm         DATE,
  run_status       INTEGER,
  result_dmp       VARCHAR2(255),
  create_dttm      TIMESTAMP(6),
  create_by        INTEGER,
  last_modify_dttm TIMESTAMP(6),
  last_modify_by   INTEGER,
  status           NUMBER(2),
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_TASK
  add constraint PK_DCR_M_TASK primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_TASK_SCOPE
prompt ===============================
prompt
create table DCR_M_TASK_SCOPE
(
  id               NUMBER(11),
  task_id          NUMBER,
  bdnm             VARCHAR2(64),
  last_modify_by   NUMBER(11) default 10000,
  last_modify_dttm DATE default SYSDATE,
  create_by        NUMBER(11) default 10000,
  status           NUMBER(2) default 10,
  create_dttm      DATE default SYSDATE,
  remarks          VARCHAR2(255),
  include_children NUMBER(11)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_TASK_TABLE
prompt ===============================
prompt
create table DCR_M_TASK_TABLE
(
  id               INTEGER not null,
  task_id          INTEGER,
  table_name       VARCHAR2(32),
  order_no         INTEGER,
  blob_flag        INTEGER,
  row_count        INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_TASK_TABLE
  add constraint PK_DCR_M_TASK_TABLE primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table DCR_M_TASK_TABLE_PROGRESS
prompt ========================================
prompt
create table DCR_M_TASK_TABLE_PROGRESS
(
  id               INTEGER not null,
  task_id          INTEGER,
  table_name       VARCHAR2(32),
  run_status       INTEGER,
  total_value      INTEGER,
  progress_value   INTEGER,
  progress_percent INTEGER,
  create_dttm      DATE,
  create_by        INTEGER,
  last_modify_dttm DATE,
  last_modify_by   INTEGER,
  status           INTEGER,
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index INDEX_DCR_TABLE_PROGRESS on DCR_M_TASK_TABLE_PROGRESS (TASK_ID, TABLE_NAME, RUN_STATUS, STATUS)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table DCR_M_TASK_TABLE_PROGRESS
  add constraint PK_DCR_M_TASK_TABLE_PROGRESS primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table EXPORT000002
prompt ===========================
prompt
create table EXPORT000002
(
  process_order          NUMBER,
  duplicate              NUMBER,
  dump_fileid            NUMBER,
  dump_position          NUMBER,
  dump_length            NUMBER,
  dump_orig_length       NUMBER,
  dump_allocation        NUMBER,
  completed_rows         NUMBER,
  error_count            NUMBER,
  elapsed_time           NUMBER,
  object_type_path       VARCHAR2(200),
  object_path_seqno      NUMBER,
  object_type            VARCHAR2(30),
  in_progress            CHAR(1),
  object_name            VARCHAR2(500),
  object_long_name       VARCHAR2(4000),
  object_schema          VARCHAR2(30),
  original_object_schema VARCHAR2(30),
  original_object_name   VARCHAR2(4000),
  partition_name         VARCHAR2(30),
  subpartition_name      VARCHAR2(30),
  dataobj_num            NUMBER,
  flags                  NUMBER,
  property               NUMBER,
  trigflag               NUMBER,
  creation_level         NUMBER,
  completion_time        DATE,
  object_tablespace      VARCHAR2(30),
  size_estimate          NUMBER,
  object_row             NUMBER,
  processing_state       CHAR(1),
  processing_status      CHAR(1),
  base_process_order     NUMBER,
  base_object_type       VARCHAR2(30),
  base_object_name       VARCHAR2(30),
  base_object_schema     VARCHAR2(30),
  ancestor_process_order NUMBER,
  domain_process_order   NUMBER,
  parallelization        NUMBER,
  unload_method          NUMBER,
  load_method            NUMBER,
  granules               NUMBER,
  scn                    NUMBER,
  grantor                VARCHAR2(30),
  xml_clob               CLOB,
  parent_process_order   NUMBER,
  name                   VARCHAR2(30),
  value_t                VARCHAR2(4000),
  value_n                NUMBER,
  is_default             NUMBER,
  file_type              NUMBER,
  user_directory         VARCHAR2(4000),
  user_file_name         VARCHAR2(4000),
  file_name              VARCHAR2(4000),
  extend_size            NUMBER,
  file_max_size          NUMBER,
  process_name           VARCHAR2(30),
  last_update            DATE,
  work_item              VARCHAR2(30),
  object_number          NUMBER,
  completed_bytes        NUMBER,
  total_bytes            NUMBER,
  metadata_io            NUMBER,
  data_io                NUMBER,
  cumulative_time        NUMBER,
  packet_number          NUMBER,
  instance_id            NUMBER,
  old_value              VARCHAR2(4000),
  seed                   NUMBER,
  last_file              NUMBER,
  user_name              VARCHAR2(30),
  operation              VARCHAR2(30),
  job_mode               VARCHAR2(30),
  queue_tabnum           NUMBER,
  control_queue          VARCHAR2(30),
  status_queue           VARCHAR2(30),
  remote_link            VARCHAR2(4000),
  version                NUMBER,
  job_version            VARCHAR2(30),
  db_version             VARCHAR2(30),
  timezone               VARCHAR2(64),
  state                  VARCHAR2(30),
  phase                  NUMBER,
  guid                   RAW(16),
  start_time             DATE,
  block_size             NUMBER,
  metadata_buffer_size   NUMBER,
  data_buffer_size       NUMBER,
  degree                 NUMBER,
  platform               VARCHAR2(101),
  abort_step             NUMBER,
  instance               VARCHAR2(60),
  cluster_ok             NUMBER,
  service_name           VARCHAR2(100),
  object_int_oid         VARCHAR2(32)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table EXPORT000002
  add unique (PROCESS_ORDER, DUPLICATE)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table FUNCTIONS
prompt ========================
prompt
create table FUNCTIONS
(
  mc  VARCHAR2(100),
  bm  VARCHAR2(50),
  xh  VARCHAR2(40),
  sm  VARCHAR2(500),
  url VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SJZDERR
prompt ======================
prompt
create table SJZDERR
(
  jgysbm VARCHAR2(40) not null,
  jgysmc VARCHAR2(40),
  jgyssm VARCHAR2(255),
  jgyslb VARCHAR2(40),
  jgysbs VARCHAR2(100),
  zdsm   VARCHAR2(255),
  zdsl   VARCHAR2(255),
  gsgf   VARCHAR2(250),
  zdlx   VARCHAR2(50),
  zdcd   FLOAT,
  sfzj   VARCHAR2(2),
  wjdygx VARCHAR2(100),
  wjxszd VARCHAR2(100),
  wjtj   VARCHAR2(255),
  nfwk   VARCHAR2(2),
  jldw   VARCHAR2(50),
  nfxg   VARCHAR2(2),
  sfxs   VARCHAR2(2),
  zdbq   VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SJZDERR
  add constraint PK_SJZDBM primary key (JGYSBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SJZDUNDO
prompt =======================
prompt
create table SJZDUNDO
(
  id NUMBER,
  bm VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_ATTACHMENT
prompt =============================
prompt
create table SYS_ATTACHMENT
(
  id               NUMBER(11) default 10000 not null,
  extension        VARCHAR2(8),
  file_size        VARCHAR2(16),
  full_path        VARCHAR2(255),
  for_scene        VARCHAR2(32),
  object_id        VARCHAR2(32),
  object_type      VARCHAR2(32),
  order_no         NUMBER(4),
  name             VARCHAR2(255) not null,
  code             VARCHAR2(64),
  type             NUMBER(2),
  status           NUMBER(2) not null,
  last_modify_by   NUMBER(11) default 10000,
  last_modify_dttm TIMESTAMP(6),
  create_by        NUMBER(11) default 10000,
  create_dttm      TIMESTAMP(6),
  remarks          VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SYS_ATTACHMENT
  add constraint PK_SYS_ATTACHMENT primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SYS_STATUS
prompt =========================
prompt
create table SYS_STATUS
(
  table_name       VARCHAR2(32),
  column_name      VARCHAR2(32),
  sts_id           VARCHAR2(128),
  style_class      VARCHAR2(128),
  sts_words        VARCHAR2(512),
  order_id         NUMBER(11),
  status           NUMBER(2) default 10,
  last_modify_by   NUMBER(11) default 10000,
  last_modify_dttm DATE default SYSDATE,
  create_by        NUMBER(11) default 10000,
  create_dttm      DATE default SYSDATE,
  remarks          VARCHAR2(255),
  parent_id        VARCHAR2(128)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_BDDWML
prompt =============================
prompt
create table TXZH_TS_BDDWML
(
  nm       VARCHAR2(40) not null,
  mc       VARCHAR2(255),
  xh       VARCHAR2(40),
  bdhfnm   VARCHAR2(40),
  bdhf     VARCHAR2(200),
  bdjc     VARCHAR2(255),
  bzxh     VARCHAR2(40),
  bzfh     VARCHAR2(255),
  bzjc     VARCHAR2(80),
  txbd     VARCHAR2(10),
  zzbd     VARCHAR2(10),
  parentnm VARCHAR2(40),
  ykxn     VARCHAR2(10)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 11M
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_BDDWML
  add constraint PK_TXZH_TS_BDDWML primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_BDDWML
  add constraint FK_TXZH_TS_BDDWML_PARENTNM foreign key (PARENTNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;

prompt
prompt Creating table TXZH_TS_DM
prompt =========================
prompt
create table TXZH_TS_DM
(
  nm   VARCHAR2(40) not null,
  mc   VARCHAR2(40),
  xh   VARCHAR2(40),
  qc   VARCHAR2(255),
  jd   VARCHAR2(12),
  wd   VARCHAR2(11),
  gc   FLOAT,
  xzjb VARCHAR2(255),
  bz   VARCHAR2(250)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_DM
  add constraint PK_TXZH_TS_DM primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_DM1
prompt ==========================
prompt
create table TXZH_TS_DM1
(
  dmnm VARCHAR2(12) not null,
  mc   VARCHAR2(40),
  xh   VARCHAR2(16),
  qc   VARCHAR2(255),
  jd   VARCHAR2(12),
  wd   VARCHAR2(11),
  gc   NUMBER(10),
  js   VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 320K
    minextents 1
    maxextents unlimited
  );
comment on column TXZH_TS_DM1.js
  is '简述';
alter table TXZH_TS_DM1
  add constraint PK_TXZH_TS_DM1 primary key (DMNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_JX
prompt =========================
prompt
create table TXZH_TS_JX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_JX
  add constraint PK_TXZH_TS_JX primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_WHCD
prompt ===========================
prompt
create table TXZH_TS_WHCD
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_WHCD
  add constraint PK_TXZH_TS_WHCD primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_XB
prompt =========================
prompt
create table TXZH_TS_XB
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_XB
  add constraint PK_TXZH_TS_XB1 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_ZBML
prompt ===========================
prompt
create table TXZH_TS_ZBML
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 832K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_ZBML
  add constraint PK_TXZH_TS_ZBML primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_ZW
prompt =========================
prompt
create table TXZH_TS_ZW
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_ZW
  add constraint PK_TXZH_TS_ZW primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_ZWJB
prompt ===========================
prompt
create table TXZH_TS_ZWJB
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_ZWJB
  add constraint PK_TXZH_TS_ZWJB primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZH_TS_ZZMM
prompt ===========================
prompt
create table TXZH_TS_ZZMM
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(40),
  mc VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZH_TS_ZZMM
  add constraint PK_TXZH_TS_ZZMM primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_B
prompt =======================
prompt
create table TXZY_M_B
(
  bccm  VARCHAR2(40) not null,
  bbs   VARCHAR2(100),
  bmc   VARCHAR2(100),
  blb   VARCHAR2(40),
  bsm   VARCHAR2(255),
  flccm VARCHAR2(40),
  bdnm  VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_B
  add primary key (BCCM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_B
  add constraint UK_TXZY_M_B_BBS unique (BBS)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_BBS_REPLY
prompt ===============================
prompt
create table TXZY_M_BBS_REPLY
(
  reply_id    VARCHAR2(50),
  topic_id    VARCHAR2(50),
  title       VARCHAR2(255),
  body        CLOB,
  user_id     VARCHAR2(50),
  modified_on DATE,
  created_on  DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_BBS_TOPIC
prompt ===============================
prompt
create table TXZY_M_BBS_TOPIC
(
  topic_id    VARCHAR2(50),
  title       VARCHAR2(255),
  body        CLOB,
  user_id     VARCHAR2(50),
  enabled     VARCHAR2(10),
  modified_by VARCHAR2(50),
  modified_on DATE,
  replied_by  VARCHAR2(50),
  replied_on  DATE,
  is_close    VARCHAR2(10),
  created_on  DATE,
  reply_count INTEGER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_BZDGX
prompt ===========================
prompt
create table TXZY_M_BZDGX
(
  bccm VARCHAR2(40),
  xh   VARCHAR2(10),
  zdid VARCHAR2(40),
  bdnm VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_BZDGX_BCCM on TXZY_M_BZDGX (BCCM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_BZDGX_XH on TXZY_M_BZDGX (XH)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_BZDGX_ZDID on TXZY_M_BZDGX (ZDID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_CBTJ
prompt ==========================
prompt
create table TXZY_M_CBTJ
(
  nm       VARCHAR2(40) not null,
  jlzs     NUMBER(19,2),
  mc       VARCHAR2(200),
  parentnm VARCHAR2(40),
  tjsj     DATE,
  wzl      VARCHAR2(20),
  xh       VARCHAR2(40),
  ytzds    NUMBER(19,2),
  zdzs     NUMBER(19,2)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_CBTJ
  add primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_DOWNLINK_NODE
prompt ===================================
prompt
create table TXZY_M_DOWNLINK_NODE
(
  bdnm   VARCHAR2(20) not null,
  ipaddr VARCHAR2(20)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_DOWNLINK_NODE
  is '采报系统下联节点管理表';
comment on column TXZY_M_DOWNLINK_NODE.bdnm
  is '内码';
comment on column TXZY_M_DOWNLINK_NODE.ipaddr
  is 'IP地址';
alter table TXZY_M_DOWNLINK_NODE
  add constraint UN_DOWNLINK_NODE_BDNM unique (BDNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_DSUPDATEPUSH
prompt ==================================
prompt
create table TXZY_M_DSUPDATEPUSH
(
  id         VARCHAR2(40) not null,
  receiverid VARCHAR2(40),
  version    VARCHAR2(40),
  sendtime   DATE,
  state      VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1M
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_DSUPDATEPUSH
  is '数据标准推送管理表';
comment on column TXZY_M_DSUPDATEPUSH.id
  is 'ID';
comment on column TXZY_M_DSUPDATEPUSH.receiverid
  is '接收方单位内码';
comment on column TXZY_M_DSUPDATEPUSH.version
  is '数据标准版本号';
comment on column TXZY_M_DSUPDATEPUSH.sendtime
  is '发送通知时间';
comment on column TXZY_M_DSUPDATEPUSH.state
  is '通知状态(更新成功\更新失败\未更新)';
alter table TXZY_M_DSUPDATEPUSH
  add constraint PK_TXZY_M_DSUPDATEPUSH primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_DSVERSION
prompt ===============================
prompt
create table TXZY_M_DSVERSION
(
  id         VARCHAR2(40) not null,
  bdnm       VARCHAR2(40),
  version    VARCHAR2(40),
  modifytime DATE,
  type       VARCHAR2(20),
  checked    VARCHAR2(5) default 'false',
  source     VARCHAR2(20),
  seqnum     NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_DSVERSION
  is '数据标准修改记录表';
comment on column TXZY_M_DSVERSION.id
  is 'ID';
comment on column TXZY_M_DSVERSION.bdnm
  is '提供升级包单位内码';
comment on column TXZY_M_DSVERSION.version
  is '版本号，每次修改均更新';
comment on column TXZY_M_DSVERSION.modifytime
  is '本级数据标准修改后的时间';
comment on column TXZY_M_DSVERSION.type
  is '类型（业务数据字典/数据库结构）';
comment on column TXZY_M_DSVERSION.checked
  is '该升级消息是否已经查看（false：未查看/true:已查看）';
comment on column TXZY_M_DSVERSION.source
  is ' 修改来源（上级推送/本级修改）';
alter table TXZY_M_DSVERSION
  add constraint PK_TXZY_M_DSVERSION primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_LHGXKTB
prompt =============================
prompt
create table TXZY_M_LHGXKTB
(
  id   VARCHAR2(40) not null,
  bbs  VARCHAR2(100),
  yhm  VARCHAR2(100),
  czlx VARCHAR2(20),
  xh   VARCHAR2(20),
  sfzx VARCHAR2(20)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_LHGXKTB_DETAILS
prompt =====================================
prompt
create table TXZY_M_LHGXKTB_DETAILS
(
  id   VARCHAR2(40) not null,
  zd   VARCHAR2(100),
  zdz  VARCHAR2(4000),
  sfzj VARCHAR2(20),
  tbid VARCHAR2(40),
  zdlx VARCHAR2(20),
  yhm  VARCHAR2(20)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_LHGXKTB_LOG
prompt =================================
prompt
create table TXZY_M_LHGXKTB_LOG
(
  id        VARCHAR2(40) not null,
  username  VARCHAR2(100),
  logtime   DATE,
  sqlstr    VARCHAR2(4000),
  tablename VARCHAR2(100),
  operatype VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_LOG
prompt =========================
prompt
create table TXZY_M_LOG
(
  id        NUMBER(10) not null,
  username  VARCHAR2(100),
  logtime   DATE,
  sqlstr    VARCHAR2(4000),
  tablename VARCHAR2(100),
  keyfield  VARCHAR2(200),
  keyvalue  VARCHAR2(200),
  operatype VARCHAR2(80),
  operation VARCHAR2(200),
  bz        VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 25M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_LOG2
prompt ==========================
prompt
create table TXZY_M_LOG2
(
  id        NUMBER(10) not null,
  username  VARCHAR2(100),
  logtime   DATE,
  sqlstr    VARCHAR2(4000),
  tablename VARCHAR2(100),
  keyfield  VARCHAR2(200),
  keyvalue  VARCHAR2(200),
  operatype VARCHAR2(80),
  operation VARCHAR2(200),
  bz        VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 11M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_NMGL
prompt ==========================
prompt
create table TXZY_M_NMGL
(
  nm   VARCHAR2(40) not null,
  bdnm VARCHAR2(40),
  sfsy VARCHAR2(40),
  wxbm VARCHAR2(60)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_NMGL
  add primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJFF_BZDR
prompt ===============================
prompt
create table TXZY_M_SJFF_BZDR
(
  jlbm       NUMBER not null,
  ffbdnm     VARCHAR2(40),
  ffsj       DATE,
  jssj       DATE,
  gxjg       VARCHAR2(50),
  ffdwipaddr VARCHAR2(15),
  wjid       VARCHAR2(14)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJFF_BZDR
  is '数据分发_标准导入表';
comment on column TXZY_M_SJFF_BZDR.jlbm
  is '记录编码';
comment on column TXZY_M_SJFF_BZDR.ffbdnm
  is '标准分发单位内码';
comment on column TXZY_M_SJFF_BZDR.ffsj
  is '标准分发时间';
comment on column TXZY_M_SJFF_BZDR.jssj
  is '标准接收时间';
comment on column TXZY_M_SJFF_BZDR.gxjg
  is '更新结果';
comment on column TXZY_M_SJFF_BZDR.ffdwipaddr
  is '分发单位IP地址';
comment on column TXZY_M_SJFF_BZDR.wjid
  is '文件ID';

prompt
prompt Creating table TXZY_M_SJFF_BZFF
prompt ===============================
prompt
create table TXZY_M_SJFF_BZFF
(
  jlbm   VARCHAR2(36) not null,
  dwmc   VARCHAR2(500),
  ipaddr VARCHAR2(15),
  ffsj   DATE,
  gxjg   VARCHAR2(50),
  bdnm   VARCHAR2(40) not null,
  wjid   VARCHAR2(14)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJFF_BZFF
  is '数据分发_标准分发表';
comment on column TXZY_M_SJFF_BZFF.jlbm
  is '记录编码';
comment on column TXZY_M_SJFF_BZFF.dwmc
  is '子节点单位名称';
comment on column TXZY_M_SJFF_BZFF.ipaddr
  is '子节点IP地址';
comment on column TXZY_M_SJFF_BZFF.ffsj
  is '标准分发时间';
comment on column TXZY_M_SJFF_BZFF.gxjg
  is '更新结果';
comment on column TXZY_M_SJFF_BZFF.bdnm
  is '内码';
comment on column TXZY_M_SJFF_BZFF.wjid
  is '文件ID';
create unique index INDEX_UNIQUE_DWMC on TXZY_M_SJFF_BZFF (DWMC)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create unique index INDEX_UNIQUE_IPADDR on TXZY_M_SJFF_BZFF (IPADDR)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJFF_BZFF
  add constraint PK_TXZY_M_SJFF_BZFF primary key (BDNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJFF_BZFF_DETAIL
prompt ======================================
prompt
create table TXZY_M_SJFF_BZFF_DETAIL
(
  jlbm VARCHAR2(36) not null,
  bdnm VARCHAR2(40) not null,
  ffsj DATE,
  gxjg VARCHAR2(50),
  wjid VARCHAR2(14)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJFF_BZFF_DETAIL
  is '标准分发明细表';
comment on column TXZY_M_SJFF_BZFF_DETAIL.jlbm
  is '记录编码';
comment on column TXZY_M_SJFF_BZFF_DETAIL.bdnm
  is '内码';
comment on column TXZY_M_SJFF_BZFF_DETAIL.ffsj
  is '分发时间';
comment on column TXZY_M_SJFF_BZFF_DETAIL.gxjg
  is '更新结果';
comment on column TXZY_M_SJFF_BZFF_DETAIL.wjid
  is '文件ID';
alter table TXZY_M_SJFF_BZFF_DETAIL
  add constraint PK_TXZY_M_SJFF_BZFF_DETAIL primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJFL
prompt ==========================
prompt
create table TXZY_M_SJFL
(
  flccm    VARCHAR2(40) not null,
  flmc     VARCHAR2(40),
  flsm     VARCHAR2(255),
  flbs     VARCHAR2(100),
  xh       VARCHAR2(40),
  parentnm VARCHAR2(40),
  bdnm     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_SJFL.flccm
  is '分类层次码';
comment on column TXZY_M_SJFL.flmc
  is '分类名称';
comment on column TXZY_M_SJFL.flsm
  is '分类说明';
comment on column TXZY_M_SJFL.flbs
  is '分类标识';
comment on column TXZY_M_SJFL.xh
  is '序号';
comment on column TXZY_M_SJFL.parentnm
  is '父节点内码';
alter table TXZY_M_SJFL
  add primary key (FLCCM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJJDCFA
prompt =============================
prompt
create table TXZY_M_SJJDCFA
(
  bm          VARCHAR2(40) not null,
  sm          VARCHAR2(500),
  servicename VARCHAR2(100),
  username    VARCHAR2(100),
  password    VARCHAR2(100),
  mc          VARCHAR2(200),
  ip          VARCHAR2(18),
  port        VARCHAR2(22),
  bdnm        VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJJDCFA
  is '数据集导出方案表';
comment on column TXZY_M_SJJDCFA.bm
  is '方案编码';
comment on column TXZY_M_SJJDCFA.sm
  is '方案说明';
comment on column TXZY_M_SJJDCFA.servicename
  is '目标库服务名';
comment on column TXZY_M_SJJDCFA.username
  is '目标库用户名';
comment on column TXZY_M_SJJDCFA.password
  is '目标库用户口令';
comment on column TXZY_M_SJJDCFA.mc
  is '方案名称';
comment on column TXZY_M_SJJDCFA.ip
  is '目标库IP地址';
comment on column TXZY_M_SJJDCFA.port
  is '目标库端口';
comment on column TXZY_M_SJJDCFA.bdnm
  is '内码，分发对象';
alter table TXZY_M_SJJDCFA
  add constraint PK_TXZY_M_SJJDCFA primary key (BM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJJDCFA_ML
prompt ================================
prompt
create table TXZY_M_SJJDCFA_ML
(
  wxbm VARCHAR2(10),
  nm   VARCHAR2(40),
  fabm VARCHAR2(40),
  gbbs VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJJDCFA_ML
  is '数据集导出方案_目录';
comment on column TXZY_M_SJJDCFA_ML.wxbm
  is '网系编码';
comment on column TXZY_M_SJJDCFA_ML.nm
  is '目录项内码';
comment on column TXZY_M_SJJDCFA_ML.fabm
  is '方案编码';
comment on column TXZY_M_SJJDCFA_ML.gbbs
  is '根表标识';

prompt
prompt Creating table TXZY_M_SJJDCFA_ST
prompt ================================
prompt
create table TXZY_M_SJJDCFA_ST
(
  wxbm VARCHAR2(10),
  nm   VARCHAR2(40),
  fabm VARCHAR2(40),
  lx   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 9M
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJJDCFA_ST
  is '数据集导出方案_实体';
comment on column TXZY_M_SJJDCFA_ST.lx
  is '类型';

prompt
prompt Creating table TXZY_M_SJJYGF
prompt ============================
prompt
create table TXZY_M_SJJYGF
(
  nm       VARCHAR2(40) not null,
  xh       VARCHAR2(40),
  mc       VARCHAR2(40),
  lb       VARCHAR2(255),
  jysql    VARCHAR2(2000),
  xzsql    VARCHAR2(2000),
  gzsm     VARCHAR2(1000),
  bbs      VARCHAR2(80),
  nmzd     VARCHAR2(80),
  wtms     VARCHAR2(1000),
  parentnm VARCHAR2(40),
  bdnm     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJJYGF
  is '数据校验规范';
comment on column TXZY_M_SJJYGF.nm
  is '内码';
comment on column TXZY_M_SJJYGF.xh
  is '序号';
comment on column TXZY_M_SJJYGF.mc
  is '名称';
comment on column TXZY_M_SJJYGF.lb
  is '类别';
comment on column TXZY_M_SJJYGF.jysql
  is '校验SQL';
comment on column TXZY_M_SJJYGF.xzsql
  is '修正SQL';
comment on column TXZY_M_SJJYGF.gzsm
  is '规则说明';
comment on column TXZY_M_SJJYGF.bbs
  is '表标识';
comment on column TXZY_M_SJJYGF.nmzd
  is '内码字段';
comment on column TXZY_M_SJJYGF.wtms
  is '问题描述';
comment on column TXZY_M_SJJYGF.parentnm
  is '父节点内码';
alter table TXZY_M_SJJYGF
  add primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJJYJG
prompt ============================
prompt
create table TXZY_M_SJJYJG
(
  username VARCHAR2(200) not null,
  jyxm     VARCHAR2(100),
  sjwz     VARCHAR2(500),
  gzsm     VARCHAR2(1000),
  wtms     VARCHAR2(1000),
  xh       VARCHAR2(10),
  wxbm     VARCHAR2(10),
  stnm     VARCHAR2(40),
  stmc     VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 6M
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJJYJG
  is '数据校验结果';
comment on column TXZY_M_SJJYJG.username
  is '内码';
comment on column TXZY_M_SJJYJG.jyxm
  is '校验项目';
comment on column TXZY_M_SJJYJG.sjwz
  is '数据位置';
comment on column TXZY_M_SJJYJG.gzsm
  is '规则说明';
comment on column TXZY_M_SJJYJG.wtms
  is '问题描述';
comment on column TXZY_M_SJJYJG.xh
  is '序号';
comment on column TXZY_M_SJJYJG.wxbm
  is '网系编码';
comment on column TXZY_M_SJJYJG.stnm
  is '实体内码';
comment on column TXZY_M_SJJYJG.stmc
  is '实体名称';

prompt
prompt Creating table TXZY_M_SJSBFA
prompt ============================
prompt
create table TXZY_M_SJSBFA
(
  bm               VARCHAR2(40) not null,
  sm               VARCHAR2(500),
  servicename      VARCHAR2(100),
  reportdbusername VARCHAR2(100),
  reportdbpassword VARCHAR2(100),
  mc               VARCHAR2(200),
  ip               VARCHAR2(18),
  port             VARCHAR2(22),
  reporterid       VARCHAR2(200),
  reportername     VARCHAR2(200),
  receiverid       VARCHAR2(200),
  receivername     VARCHAR2(200),
  receiverip       VARCHAR2(200),
  receiverport     VARCHAR2(22),
  reporttype       VARCHAR2(30),
  refreshtime      DATE,
  refreshresult    VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSBFA
  add constraint PK_TXZY_M_SJSBFA primary key (BM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBFA_B
prompt ==============================
prompt
create table TXZY_M_SJSBFA_B
(
  bccm VARCHAR2(100),
  fabm VARCHAR2(40),
  id   VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBFA_B_BCCM on TXZY_M_SJSBFA_B (BCCM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBFA_B_FABM on TXZY_M_SJSBFA_B (FABM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSBFA_B
  add constraint PK_TXZY_M_SJSBFA_B primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBFA_BDFW
prompt =================================
prompt
create table TXZY_M_SJSBFA_BDFW
(
  bm   VARCHAR2(40) not null,
  nm   VARCHAR2(40) not null,
  sfqx VARCHAR2(5)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJSBFA_BDFW
  is '数据上报方案关联范围';
comment on column TXZY_M_SJSBFA_BDFW.bm
  is '方案编码';
comment on column TXZY_M_SJSBFA_BDFW.nm
  is '内码';
comment on column TXZY_M_SJSBFA_BDFW.sfqx
  is '是否全选';
alter table TXZY_M_SJSBFA_BDFW
  add constraint PK_SJSBFA_BDFW primary key (BM, NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBFA_BDFW_DETAIL
prompt ========================================
prompt
create table TXZY_M_SJSBFA_BDFW_DETAIL
(
  bm VARCHAR2(40) not null,
  nm VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBFA_B_ZD
prompt =================================
prompt
create table TXZY_M_SJSBFA_B_ZD
(
  bfaid VARCHAR2(100),
  zdid  VARCHAR2(40),
  id    VARCHAR2(40) not null,
  xh    VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBFA_B_ZD_BFAID on TXZY_M_SJSBFA_B_ZD (BFAID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBFA_B_ZD_ZDID on TXZY_M_SJSBFA_B_ZD (ZDID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSBFA_B_ZD
  add constraint PK_TXZY_M_SJSBFA_B_ZD primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBFA_WX
prompt ===============================
prompt
create table TXZY_M_SJSBFA_WX
(
  id   VARCHAR2(50) not null,
  fabm VARCHAR2(40),
  wxbm VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJSBFA_WX
  is '数据上报方案_网系';
comment on column TXZY_M_SJSBFA_WX.id
  is 'ID';
comment on column TXZY_M_SJSBFA_WX.fabm
  is '方案编码';
comment on column TXZY_M_SJSBFA_WX.wxbm
  is '网系编码';
create index IN_TXZY_M_SJSBFA_WX_FABM on TXZY_M_SJSBFA_WX (FABM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBFA_WX_WXBM on TXZY_M_SJSBFA_WX (WXBM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSBFA_WX
  add constraint PK_TXZY_M_SJSBFA_WX primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSBJL
prompt ============================
prompt
create table TXZY_M_SJSBJL
(
  jlbm VARCHAR2(40),
  bdnm VARCHAR2(40),
  qssj DATE,
  zzsj DATE,
  scsj DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJSBJL
  is '数据上报记录表';
comment on column TXZY_M_SJSBJL.jlbm
  is '记录编码';
comment on column TXZY_M_SJSBJL.bdnm
  is '内码';
comment on column TXZY_M_SJSBJL.qssj
  is '起始时间';
comment on column TXZY_M_SJSBJL.zzsj
  is '终止时间';
comment on column TXZY_M_SJSBJL.scsj
  is '生成时间';
create unique index PK_TXZY_M_SJSBJL on TXZY_M_SJSBJL (JLBM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJRKQK
prompt =================================
prompt
create table TXZY_M_SJSB_SJRKQK
(
  jlbm       VARCHAR2(100) not null,
  jssj       DATE,
  rkfs       VARCHAR2(20),
  sbr        VARCHAR2(500),
  sjwjmc     VARCHAR2(500),
  hzzt       VARCHAR2(30),
  hzwjmc     VARCHAR2(500),
  hznr       VARCHAR2(50),
  rkzt       VARCHAR2(30),
  sjwjid     VARCHAR2(100),
  hzwjid     VARCHAR2(100),
  errorsql   VARCHAR2(4000),
  errorinfo  VARCHAR2(4000),
  sbdw       VARCHAR2(500),
  hzh        VARCHAR2(100),
  rpid       VARCHAR2(50),
  rcid       VARCHAR2(50),
  timestamp1 NUMBER,
  xjlbz      VARCHAR2(10),
  jlckrymc   VARCHAR2(100),
  filesize   NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_JSSJ on TXZY_M_SJSB_SJRKQK (JSSJ)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_RCID on TXZY_M_SJSB_SJRKQK (RCID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_RKZT on TXZY_M_SJSB_SJRKQK (RKZT)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_RPID on TXZY_M_SJSB_SJRKQK (RPID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_SBDW on TXZY_M_SJSB_SJRKQK (SBDW)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJRKQK_SJWJID on TXZY_M_SJSB_SJRKQK (SJWJID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSB_SJRKQK
  add constraint PK_TXZY_M_SJRKQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJRKQK_CT
prompt ====================================
prompt
create table TXZY_M_SJSB_SJRKQK_CT
(
  jlbm   VARCHAR2(40) not null,
  sjwjid VARCHAR2(100),
  nr     VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJRKQK_DETAIL
prompt ========================================
prompt
create table TXZY_M_SJSB_SJRKQK_DETAIL
(
  jlbm   VARCHAR2(100) not null,
  sjwjid VARCHAR2(100),
  bm     VARCHAR2(200),
  cz     VARCHAR2(30),
  zjm    VARCHAR2(100),
  zjz    VARCHAR2(50),
  nr     VARCHAR2(4000),
  sqlyj  VARCHAR2(4000),
  px     NUMBER,
  xsbm   VARCHAR2(200),
  ynr    VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
create index IN_SJSRKQK_DETAIL_BM on TXZY_M_SJSB_SJRKQK_DETAIL (BM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_SJSRKQK_DETAIL_CZ on TXZY_M_SJSB_SJRKQK_DETAIL (CZ)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_SJSRKQK_DETAIL_SJWJID on TXZY_M_SJSB_SJRKQK_DETAIL (SJWJID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSB_SJRKQK_DETAIL
  add constraint PK_SJRKQK_DETAIL primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJRKQK_ZDXS
prompt ======================================
prompt
create table TXZY_M_SJSB_SJRKQK_ZDXS
(
  id           VARCHAR2(40) not null,
  tablename    VARCHAR2(200),
  type         VARCHAR2(2),
  reftable     VARCHAR2(200),
  reffield     VARCHAR2(100),
  field        VARCHAR2(100),
  displayfield VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJSB_SJRKQK_ZDXS
  is '数据上报_数据入库情况_字段显示';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.id
  is 'ID';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.tablename
  is '表名';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.type
  is '表类型（1：单位目录，2：关岗人员基本情况，3：相关表，4：关岗人员相关表）';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.reftable
  is '外键表';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.reffield
  is '外键字段';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.field
  is '字段';
comment on column TXZY_M_SJSB_SJRKQK_ZDXS.displayfield
  is '显示字段';
create index IN_SJSB_SJRKQK_ZDXS_TABLENAME on TXZY_M_SJSB_SJRKQK_ZDXS (TABLENAME)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSB_SJRKQK_ZDXS
  add constraint PK_TXZY_M_SJSB_SJRKQK_ZDXS primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJSBQK
prompt =================================
prompt
create table TXZY_M_SJSB_SJSBQK
(
  jlbm       VARCHAR2(100) not null,
  famc       VARCHAR2(200),
  fabm       VARCHAR2(40),
  cjsj       DATE,
  sbfs       VARCHAR2(20),
  sbr        VARCHAR2(500),
  sjwjmc     VARCHAR2(500),
  hzzt       VARCHAR2(20),
  hzwjmc     VARCHAR2(500),
  hznr       VARCHAR2(50),
  hzrkzt     VARCHAR2(20),
  bdsjtbzt   VARCHAR2(30),
  sjwjid     VARCHAR2(100),
  hzwjid     VARCHAR2(100),
  sbqk       VARCHAR2(50),
  errorsql   VARCHAR2(4000),
  errorinfo  VARCHAR2(4000),
  hzh        VARCHAR2(100),
  rpid       VARCHAR2(50),
  rcid       VARCHAR2(50),
  timestamp1 NUMBER,
  filesize   NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_SJSB_SJSBQK.jlbm
  is '记录编码（主键）';
comment on column TXZY_M_SJSB_SJSBQK.famc
  is '方案名称';
comment on column TXZY_M_SJSB_SJSBQK.fabm
  is '方案编码';
comment on column TXZY_M_SJSB_SJSBQK.cjsj
  is '采集时间';
comment on column TXZY_M_SJSB_SJSBQK.sbfs
  is '上报方式';
comment on column TXZY_M_SJSB_SJSBQK.sbr
  is '上报人';
comment on column TXZY_M_SJSB_SJSBQK.sjwjmc
  is '数据文件名称';
comment on column TXZY_M_SJSB_SJSBQK.hzzt
  is '回执状态';
comment on column TXZY_M_SJSB_SJSBQK.hzwjmc
  is '回执文件名称';
comment on column TXZY_M_SJSB_SJSBQK.hznr
  is '回执内容';
comment on column TXZY_M_SJSB_SJSBQK.hzrkzt
  is '回执入库状态';
comment on column TXZY_M_SJSB_SJSBQK.bdsjtbzt
  is '本地数据同步状态';
comment on column TXZY_M_SJSB_SJSBQK.sjwjid
  is '数据文件ID';
comment on column TXZY_M_SJSB_SJSBQK.hzwjid
  is '回执文件ID';
comment on column TXZY_M_SJSB_SJSBQK.sbqk
  is '上报情况';
comment on column TXZY_M_SJSB_SJSBQK.errorsql
  is '出错SQL';
comment on column TXZY_M_SJSB_SJSBQK.errorinfo
  is '出错信息';
comment on column TXZY_M_SJSB_SJSBQK.hzh
  is '回执号';
comment on column TXZY_M_SJSB_SJSBQK.rpid
  is '上报者ID';
comment on column TXZY_M_SJSB_SJSBQK.rcid
  is '接收者ID';
comment on column TXZY_M_SJSB_SJSBQK.timestamp1
  is '时间戳';
comment on column TXZY_M_SJSB_SJSBQK.filesize
  is '文件大小';
create index IN_TXZY_M_SJSBQK_BDSJTBZT on TXZY_M_SJSB_SJSBQK (BDSJTBZT)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBQK_CJSJ on TXZY_M_SJSB_SJSBQK (CJSJ)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBQK_HZZT on TXZY_M_SJSB_SJSBQK (HZZT)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBQK_RCID on TXZY_M_SJSB_SJSBQK (RCID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBQK_SJWJID on TXZY_M_SJSB_SJSBQK (SJWJID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_SJSBQK_SJWJMC on TXZY_M_SJSB_SJSBQK (SJWJMC)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJSB_SJSBQK
  add constraint PK_TXZY_M_SJSBQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJSBQK_CT
prompt ====================================
prompt
create table TXZY_M_SJSB_SJSBQK_CT
(
  jlbm   VARCHAR2(40) not null,
  sjwjid VARCHAR2(100),
  nr     VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJSB_SJSBQK_DETAIL
prompt ========================================
prompt
create table TXZY_M_SJSB_SJSBQK_DETAIL
(
  jlbm   VARCHAR2(100) not null,
  sjwjid VARCHAR2(100),
  bm     VARCHAR2(200),
  cz     VARCHAR2(30),
  zjm    VARCHAR2(100),
  zjz    VARCHAR2(50),
  nr     VARCHAR2(4000),
  sqlyj  VARCHAR2(4000),
  px     NUMBER,
  xsbm   VARCHAR2(200),
  ynr    VARCHAR2(4000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_SJSB_SJSBQK_DETAIL
  is '数据上报情况_详情';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.jlbm
  is '记录编码';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.sjwjid
  is '数据文件ID';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.bm
  is '表名';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.cz
  is '操作';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.zjm
  is '主键名';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.zjz
  is '主键值';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.nr
  is '内容';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.sqlyj
  is 'SQL语句';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.px
  is '排序';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.xsbm
  is '显示表名';
comment on column TXZY_M_SJSB_SJSBQK_DETAIL.ynr
  is '原内容';
create index IN_SJSB_SJSBQK_DETAIL_BM on TXZY_M_SJSB_SJSBQK_DETAIL (BM)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_SJSB_SJSBQK_DETAIL_SJWJID on TXZY_M_SJSB_SJSBQK_DETAIL (SJWJID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJWTFK
prompt ============================
prompt
create table TXZY_M_SJWTFK
(
  id        VARCHAR2(100) not null,
  jjsj      DATE,
  jjyh      VARCHAR2(100),
  sjwz      VARCHAR2(500),
  stnm      VARCHAR2(40),
  tcsj      DATE,
  tcyh      VARCHAR2(100),
  wtlx      VARCHAR2(100),
  wtms      VARCHAR2(1000),
  wxbm      VARCHAR2(10),
  jlbm      VARCHAR2(100),
  tablename VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_SJWTFK
  add primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SJYB
prompt ==========================
prompt
create table TXZY_M_SJYB
(
  username VARCHAR2(100),
  bdnm     VARCHAR2(40),
  year     VARCHAR2(40),
  month    VARCHAR2(40),
  sbsj     DATE,
  sftj     VARCHAR2(10),
  gxqk     VARCHAR2(500),
  sm       VARCHAR2(2000),
  jlzs     NUMBER,
  kxjls    NUMBER,
  cwjls    NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SYSUPDATE
prompt ===============================
prompt
create table TXZY_M_SYSUPDATE
(
  id             VARCHAR2(40) not null,
  version        VARCHAR2(40),
  updatetime     DATE,
  currentversion NUMBER(1)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_SYSUPDATE.id
  is 'ID';
comment on column TXZY_M_SYSUPDATE.version
  is '版本号';
comment on column TXZY_M_SYSUPDATE.updatetime
  is '更新时间';
comment on column TXZY_M_SYSUPDATE.currentversion
  is '是否当前版本(1:是，0否)';
alter table TXZY_M_SYSUPDATE
  add constraint PK_TXZY_M_SYSUPDATE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SYSUPDATEPUSH
prompt ===================================
prompt
create table TXZY_M_SYSUPDATEPUSH
(
  id         VARCHAR2(40) not null,
  receiverid VARCHAR2(40),
  senderid   VARCHAR2(40),
  version    VARCHAR2(40),
  sendtime   DATE,
  state      VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_SYSUPDATEPUSH.id
  is 'ID';
comment on column TXZY_M_SYSUPDATEPUSH.receiverid
  is '接收方单位内码';
comment on column TXZY_M_SYSUPDATEPUSH.senderid
  is '发送方单位内码';
comment on column TXZY_M_SYSUPDATEPUSH.version
  is '版本号';
comment on column TXZY_M_SYSUPDATEPUSH.sendtime
  is '发送通知时间';
comment on column TXZY_M_SYSUPDATEPUSH.state
  is '通知状态(成功\失败)';
alter table TXZY_M_SYSUPDATEPUSH
  add constraint PK_TXZY_M_SYSUPDATEPUSH primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_SYSVERSION
prompt ================================
prompt
create table TXZY_M_SYSVERSION
(
  id         VARCHAR2(40) not null,
  bdnm       VARCHAR2(40),
  version    VARCHAR2(40),
  timestamp1 DATE,
  filename   VARCHAR2(255) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_SYSVERSION.id
  is 'ID';
comment on column TXZY_M_SYSVERSION.bdnm
  is '提供升级包单位内码';
comment on column TXZY_M_SYSVERSION.version
  is '版本号，和升级包名称对应';
comment on column TXZY_M_SYSVERSION.timestamp1
  is '上传/接收时间';
comment on column TXZY_M_SYSVERSION.filename
  is '升级包文件名称';
alter table TXZY_M_SYSVERSION
  add constraint PK_TXZY_M_SYSVERSION primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_TBYS
prompt ==========================
prompt
create table TXZY_M_TBYS
(
  tblx     VARCHAR2(20) not null,
  tbysbm   VARCHAR2(50) not null,
  mc       VARCHAR2(200),
  bs       VARCHAR2(100),
  zlx      VARCHAR2(50),
  parentbm VARCHAR2(50),
  sfbj     VARCHAR2(50),
  mrz      VARCHAR2(255),
  sfsj     VARCHAR2(50),
  yh       VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_TBYS
  add primary key (TBYSBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WD
prompt ========================
prompt
create table TXZY_M_WD
(
  wdid VARCHAR2(50),
  wdmc VARCHAR2(100),
  wdlx VARCHAR2(50),
  wdsm VARCHAR2(255),
  wddx VARCHAR2(100),
  gxsj VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_WD.wdid
  is '文档ID';
comment on column TXZY_M_WD.wdmc
  is '文档名称';

prompt
prompt Creating table TXZY_M_WJCS
prompt ==========================
prompt
create table TXZY_M_WJCS
(
  filename      VARCHAR2(100) not null,
  filepath      VARCHAR2(100) not null,
  fileinfo      VARCHAR2(500),
  senderip      VARCHAR2(20) not null,
  sendername    VARCHAR2(100),
  receiverip    VARCHAR2(20) not null,
  receivername  VARCHAR2(100),
  sendtime      DATE,
  receivetime   DATE,
  senduser      VARCHAR2(60) not null,
  downloadtimes INTEGER not null,
  id            VARCHAR2(40) not null,
  recv_user     VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_WJCS.filename
  is '文件名称';
comment on column TXZY_M_WJCS.filepath
  is '文件路径';
comment on column TXZY_M_WJCS.fileinfo
  is '文件附带说明';
comment on column TXZY_M_WJCS.senderip
  is '发送方ip';
comment on column TXZY_M_WJCS.sendername
  is '发送方名称';
comment on column TXZY_M_WJCS.receiverip
  is '接收方ip';
comment on column TXZY_M_WJCS.receivername
  is '接收方名称';
comment on column TXZY_M_WJCS.sendtime
  is '发送时间';
comment on column TXZY_M_WJCS.receivetime
  is '接受时间';
comment on column TXZY_M_WJCS.senduser
  is '发送方登陆用户';
comment on column TXZY_M_WJCS.downloadtimes
  is '下载次数';
alter table TXZY_M_WJCS
  add constraint PK_TXZY_M_WJCS primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WJCS_LXR
prompt ==============================
prompt
create table TXZY_M_WJCS_LXR
(
  lxrmc VARCHAR2(100),
  lxrnm VARCHAR2(40),
  lxrip VARCHAR2(40),
  lxrfz VARCHAR2(40),
  lxrbz VARCHAR2(200),
  id    VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_WJCS_LXR
  add constraint PK_TXZY_M_WJCS_LXR primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WJCS_WJFSJL
prompt =================================
prompt
create table TXZY_M_WJCS_WJFSJL
(
  lxrmc         VARCHAR2(100),
  filename      VARCHAR2(500),
  fileinfo      VARCHAR2(500),
  sendtime      DATE,
  sendstate     VARCHAR2(40),
  receivehztime DATE,
  receivestate  VARCHAR2(40),
  senduser      VARCHAR2(60),
  id            VARCHAR2(40) not null,
  lxrip         VARCHAR2(100),
  recv_user     VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_WJCS_WJFSJL.lxrmc
  is '联系人名称';
comment on column TXZY_M_WJCS_WJFSJL.filename
  is '文件名';
comment on column TXZY_M_WJCS_WJFSJL.fileinfo
  is '文件附带说明';
comment on column TXZY_M_WJCS_WJFSJL.sendtime
  is '发送时间';
comment on column TXZY_M_WJCS_WJFSJL.sendstate
  is '发送状态';
comment on column TXZY_M_WJCS_WJFSJL.receivehztime
  is '收到回执时间';
comment on column TXZY_M_WJCS_WJFSJL.receivestate
  is '接收状态';
comment on column TXZY_M_WJCS_WJFSJL.senduser
  is '发送用户';
comment on column TXZY_M_WJCS_WJFSJL.id
  is 'ID';
comment on column TXZY_M_WJCS_WJFSJL.lxrip
  is '联系人IP';
alter table TXZY_M_WJCS_WJFSJL
  add constraint PK_TXZY_M_WJCS_WJFSJL primary key (ID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ
prompt ==========================
prompt
create table TXZY_M_WXPZ
(
  id      VARCHAR2(50),
  wxmc    VARCHAR2(50),
  wxnr    VARCHAR2(50),
  wxbm    VARCHAR2(50),
  zbbm    VARCHAR2(150),
  nmzd    VARCHAR2(50),
  xszd    VARCHAR2(50),
  bmzd    VARCHAR2(50),
  tablebm VARCHAR2(40),
  sfyx    VARCHAR2(10),
  gbbs    VARCHAR2(150),
  flccm   VARCHAR2(40),
  gbbjzd  VARCHAR2(150),
  bdnm    VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ
  is '网系配置管理表';
comment on column TXZY_M_WXPZ.sfyx
  is '';
comment on column TXZY_M_WXPZ.flccm
  is '分类层次码';
comment on column TXZY_M_WXPZ.gbbjzd
  is '根表标记字段';
alter table TXZY_M_WXPZ
  add constraint UK_TXZY_M_WXPZ_WXBM unique (WXBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ_BBTJ
prompt ===============================
prompt
create table TXZY_M_WXPZ_BBTJ
(
  bm      VARCHAR2(50) not null,
  mc      VARCHAR2(200),
  sqlstr  VARCHAR2(2000),
  sm      VARCHAR2(500),
  enabled NUMBER(10),
  bdnm    VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_BBTJ
  is '网系的统计报表';
comment on column TXZY_M_WXPZ_BBTJ.bm
  is '统计报表编码';
comment on column TXZY_M_WXPZ_BBTJ.mc
  is '统计报表表名';
comment on column TXZY_M_WXPZ_BBTJ.sqlstr
  is 'sql';
comment on column TXZY_M_WXPZ_BBTJ.sm
  is '统计报表说明';
alter table TXZY_M_WXPZ_BBTJ
  add constraint PK_TXZY_M_WXPZ_BBTJ primary key (BM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ_BBTJ_ZD
prompt ==================================
prompt
create table TXZY_M_WXPZ_BBTJ_ZD
(
  zdid     VARCHAR2(50) not null,
  bbbm     VARCHAR2(50) not null,
  zdmc     VARCHAR2(50),
  zdbs     VARCHAR2(50),
  sffz     VARCHAR2(20),
  kd       VARCHAR2(20),
  xh       VARCHAR2(50),
  parentid VARCHAR2(50),
  tjlx     VARCHAR2(50),
  bdnm     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_BBTJ_ZD
  is '网系_统计报表_字段';
comment on column TXZY_M_WXPZ_BBTJ_ZD.zdid
  is '字段ID';
comment on column TXZY_M_WXPZ_BBTJ_ZD.bbbm
  is '统计报表编码';
comment on column TXZY_M_WXPZ_BBTJ_ZD.zdmc
  is '字段名称';
comment on column TXZY_M_WXPZ_BBTJ_ZD.zdbs
  is '字段标识';
comment on column TXZY_M_WXPZ_BBTJ_ZD.sffz
  is '分组标识';
comment on column TXZY_M_WXPZ_BBTJ_ZD.kd
  is '字段的宽度';
comment on column TXZY_M_WXPZ_BBTJ_ZD.xh
  is '序号';
comment on column TXZY_M_WXPZ_BBTJ_ZD.parentid
  is 'PARENTID';
comment on column TXZY_M_WXPZ_BBTJ_ZD.tjlx
  is '统计类型';
alter table TXZY_M_WXPZ_BBTJ_ZD
  add constraint PK_TXZY_M_WXPZ_BBTJ_ZD primary key (ZDID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ_CXSQL
prompt ================================
prompt
create table TXZY_M_WXPZ_CXSQL
(
  bm     VARCHAR2(50) not null,
  mc     VARCHAR2(200),
  sqlstr VARCHAR2(2000),
  sm     VARCHAR2(500)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_CXSQL
  is '网系的综合查询Sql';
comment on column TXZY_M_WXPZ_CXSQL.bm
  is '综合查询sql编码';
comment on column TXZY_M_WXPZ_CXSQL.mc
  is '统计报表表名';
comment on column TXZY_M_WXPZ_CXSQL.sqlstr
  is 'sql';
comment on column TXZY_M_WXPZ_CXSQL.sm
  is '统计报表说明';
alter table TXZY_M_WXPZ_CXSQL
  add constraint PK_TXZY_M_WXPZ_ZHCXSQL primary key (BM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ_JYJG
prompt ===============================
prompt
create table TXZY_M_WXPZ_JYJG
(
  jyxm VARCHAR2(50),
  xmbm VARCHAR2(50),
  jyjg VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_JYJG
  is '网系配置校验结果表';
comment on column TXZY_M_WXPZ_JYJG.jyxm
  is '校验项目';
comment on column TXZY_M_WXPZ_JYJG.xmbm
  is '项目编码';
comment on column TXZY_M_WXPZ_JYJG.jyjg
  is '校验结果';

prompt
prompt Creating table TXZY_M_WXPZ_TBTJ
prompt ===============================
prompt
create table TXZY_M_WXPZ_TBTJ
(
  bm     VARCHAR2(50) not null,
  mc     VARCHAR2(200),
  lx     VARCHAR2(2000),
  sm     VARCHAR2(500),
  fbt    VARCHAR2(200),
  sqlstr VARCHAR2(2000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_TBTJ
  is '网系的统计图表';
comment on column TXZY_M_WXPZ_TBTJ.bm
  is '图表编码';
comment on column TXZY_M_WXPZ_TBTJ.mc
  is '图表名';
comment on column TXZY_M_WXPZ_TBTJ.lx
  is '图表类型';
comment on column TXZY_M_WXPZ_TBTJ.sm
  is '图表说明';
comment on column TXZY_M_WXPZ_TBTJ.fbt
  is '图表副标题';
alter table TXZY_M_WXPZ_TBTJ
  add primary key (BM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_WXPZ_TBTJ_TBYS
prompt ====================================
prompt
create table TXZY_M_WXPZ_TBTJ_TBYS
(
  tbbm     VARCHAR2(50),
  tbysbm   VARCHAR2(50),
  z        VARCHAR2(4000),
  parentbm VARCHAR2(50),
  mc       VARCHAR2(50),
  zlx      VARCHAR2(50),
  sfsj     VARCHAR2(50),
  yh       VARCHAR2(50),
  bs       VARCHAR2(50),
  sfbj     VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_TBTJ_TBYS
  is '网系统计图表样式';
comment on column TXZY_M_WXPZ_TBTJ_TBYS.tbbm
  is '图表编码';
comment on column TXZY_M_WXPZ_TBTJ_TBYS.tbysbm
  is '图表样式编码';
comment on column TXZY_M_WXPZ_TBTJ_TBYS.z
  is '值';

prompt
prompt Creating table TXZY_M_WXPZ_YWZD
prompt ===============================
prompt
create table TXZY_M_WXPZ_YWZD
(
  id    VARCHAR2(50),
  wxbm  VARCHAR2(10),
  zdbbs VARCHAR2(200),
  zdbmc VARCHAR2(200),
  bdnm  VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_WXPZ_YWZD
  is '网系业务字典表';
comment on column TXZY_M_WXPZ_YWZD.id
  is 'id';
comment on column TXZY_M_WXPZ_YWZD.wxbm
  is '网系编码';
comment on column TXZY_M_WXPZ_YWZD.zdbbs
  is '字典表标识';
comment on column TXZY_M_WXPZ_YWZD.zdbmc
  is '字典表表名';

prompt
prompt Creating table TXZY_M_XTGG
prompt ==========================
prompt
create table TXZY_M_XTGG
(
  id          VARCHAR2(50),
  title       VARCHAR2(255),
  body        CLOB,
  created_by  VARCHAR2(50),
  created_on  DATE,
  modified_by VARCHAR2(50),
  modified_on DATE,
  sffb        VARCHAR2(50),
  bdnm        VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_YSB
prompt =========================
prompt
create table TXZY_M_YSB
(
  id            NUMBER(10),
  table_name    VARCHAR2(100),
  s_column_name VARCHAR2(100),
  s_data_type   VARCHAR2(100),
  d_column_name VARCHAR2(100),
  d_data_type   VARCHAR2(100),
  pk            VARCHAR2(10)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_ZCPZ
prompt ==========================
prompt
create table TXZY_M_ZCPZ
(
  xh     VARCHAR2(10),
  zbbm   VARCHAR2(50),
  zbglzd VARCHAR2(50),
  cbbm   VARCHAR2(50),
  cbbs   VARCHAR2(255),
  cbmc   VARCHAR2(50),
  cbglzd VARCHAR2(50),
  xszd   VARCHAR2(50),
  zjzd   VARCHAR2(50),
  pxzd   VARCHAR2(50),
  id     VARCHAR2(50),
  bdnm   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_ZCPZ
  is '主从配置管理表';
comment on column TXZY_M_ZCPZ.bdnm
  is '内码';

prompt
prompt Creating table TXZY_M_ZD
prompt ========================
prompt
create table TXZY_M_ZD
(
  zdbs   VARCHAR2(100),
  zdmc   VARCHAR2(40),
  zdsm   VARCHAR2(500),
  zdsl   VARCHAR2(500),
  gsgf   VARCHAR2(500),
  zdlx   VARCHAR2(50),
  zdcd   NUMBER(10),
  sfzj   VARCHAR2(4),
  wjb    VARCHAR2(100),
  wjxszd VARCHAR2(100),
  wjtj   VARCHAR2(255),
  nfwk   VARCHAR2(4),
  jldw   VARCHAR2(50),
  nfxg   VARCHAR2(4),
  sfxs   VARCHAR2(4),
  zdbq   VARCHAR2(100),
  kjlx   VARCHAR2(100),
  wjnmzd VARCHAR2(100),
  wjxhzd VARCHAR2(100),
  zxyzjd VARCHAR2(4),
  zdid   VARCHAR2(40) not null,
  bdnm   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_ZD
  is '字段元数据表';
comment on column TXZY_M_ZD.zxyzjd
  is '标记是否只选择叶子节点';
create index IN_TXYZ_M_ZD_KJLX on TXZY_M_ZD (KJLX)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index IN_TXZY_M_ZD_ZDBS on TXZY_M_ZD (ZDBS)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table TXZY_M_ZD
  add constraint PK_TXZY_M_ZD primary key (ZDID)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_ZYWX
prompt ==========================
prompt
create table TXZY_M_ZYWX
(
  wxbm      VARCHAR2(4) not null,
  wxmc      VARCHAR2(100),
  wxtl      BLOB,
  wxzzt     BLOB,
  wxzztmc   VARCHAR2(100),
  zhzwtb    BLOB,
  zhzwtbsel BLOB,
  treesql   VARCHAR2(4000),
  dotsql    VARCHAR2(2000),
  linesql   VARCHAR2(2000),
  dottable  VARCHAR2(100),
  dotfk     VARCHAR2(100),
  linetable VARCHAR2(100),
  linepk    VARCHAR2(100),
  linestart VARCHAR2(100),
  lineend   VARCHAR2(100),
  xh        INTEGER,
  djfllx    INTEGER,
  sfxs      INTEGER,
  sfzh      INTEGER,
  zhsql     VARCHAR2(2000),
  iconfile  VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_M_ZYWX.dotsql
  is '获取点资源的SQL';
comment on column TXZY_M_ZYWX.linesql
  is '获取线资源的SQL';
comment on column TXZY_M_ZYWX.dottable
  is '点元素表名';
comment on column TXZY_M_ZYWX.dotfk
  is '点元素战备工程外键';
comment on column TXZY_M_ZYWX.linetable
  is '线元素表名';
comment on column TXZY_M_ZYWX.linepk
  is '线元素主键';
comment on column TXZY_M_ZYWX.linestart
  is '线元素起点字段';
comment on column TXZY_M_ZYWX.lineend
  is '线元素终点字段';
comment on column TXZY_M_ZYWX.xh
  is '序号';
comment on column TXZY_M_ZYWX.djfllx
  is '等级分类类型0：点分类,1:线分类';
comment on column TXZY_M_ZYWX.sfxs
  is '是否显示';
alter table TXZY_M_ZYWX
  add constraint PK_ZYWXJLBM primary key (WXBM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_ZYWX_DTB
prompt ==============================
prompt
create table TXZY_M_ZYWX_DTB
(
  id        VARCHAR2(10) not null,
  wxbm      VARCHAR2(2),
  lxval     VARCHAR2(10),
  tbfile    VARCHAR2(50),
  seltbfile VARCHAR2(50),
  lxmc      VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_ZYWX_DTB
  is '点图标配置';
comment on column TXZY_M_ZYWX_DTB.wxbm
  is '网系编码';
comment on column TXZY_M_ZYWX_DTB.tbfile
  is '图标文件';
comment on column TXZY_M_ZYWX_DTB.seltbfile
  is '选中图标文件';
comment on column TXZY_M_ZYWX_DTB.lxmc
  is '名称';
alter table TXZY_M_ZYWX_DTB
  add constraint PK_ZYWXTBID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_ZYWX_LINETB
prompt =================================
prompt
create table TXZY_M_ZYWX_LINETB
(
  id       VARCHAR2(10) not null,
  wxbm     VARCHAR2(2),
  lxval    VARCHAR2(10),
  width    NUMBER(5,2),
  color    VARCHAR2(50),
  selcolor VARCHAR2(50),
  lxmc     VARCHAR2(50),
  selwidth NUMBER(5,2)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_ZYWX_LINETB
  is '线图标配置';
comment on column TXZY_M_ZYWX_LINETB.wxbm
  is '网系编码';
comment on column TXZY_M_ZYWX_LINETB.lxval
  is '类型值';
comment on column TXZY_M_ZYWX_LINETB.width
  is '线宽';
comment on column TXZY_M_ZYWX_LINETB.color
  is '颜色';
comment on column TXZY_M_ZYWX_LINETB.selcolor
  is '选中颜色';
comment on column TXZY_M_ZYWX_LINETB.lxmc
  is '名称';
comment on column TXZY_M_ZYWX_LINETB.selwidth
  is '选中线宽';
alter table TXZY_M_ZYWX_LINETB
  add constraint PK_ZYWXLINETBID primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_M_ZYXSPZ
prompt ============================
prompt
create table TXZY_M_ZYXSPZ
(
  xh     INTEGER,
  nm     VARCHAR2(40) not null,
  mc     VARCHAR2(40),
  dywxbm VARCHAR2(20),
  dywxmc VARCHAR2(40),
  zylx   NUMBER,
  dyb    VARCHAR2(40),
  dyzd   VARCHAR2(40),
  dysj   VARCHAR2(40),
  sfxs   NUMBER,
  jdlx   NUMBER,
  jbzdmc VARCHAR2(50),
  xsxs   NUMBER default 3
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table TXZY_M_ZYXSPZ
  is '资源网系显示配置';
comment on column TXZY_M_ZYXSPZ.xh
  is '序号';
comment on column TXZY_M_ZYXSPZ.nm
  is '内码';
comment on column TXZY_M_ZYXSPZ.mc
  is '名称';
comment on column TXZY_M_ZYXSPZ.dywxbm
  is '对应网系编码';
comment on column TXZY_M_ZYXSPZ.dywxmc
  is '对应网系名称';
comment on column TXZY_M_ZYXSPZ.zylx
  is '资源类型';
comment on column TXZY_M_ZYXSPZ.dyb
  is '对应表';
comment on column TXZY_M_ZYXSPZ.dyzd
  is '对应字段';
comment on column TXZY_M_ZYXSPZ.dysj
  is '对应数据';
comment on column TXZY_M_ZYXSPZ.sfxs
  is '是否显示';
comment on column TXZY_M_ZYXSPZ.jdlx
  is '节点类型';
comment on column TXZY_M_ZYXSPZ.jbzdmc
  is '级别字段名称';
comment on column TXZY_M_ZYXSPZ.xsxs
  is '显示系数';
alter table TXZY_M_ZYXSPZ
  add constraint P_TXZY_TS_ZYXSPZ primary key (NM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_TS_ZBGC
prompt ===========================
prompt
create table TXZY_TS_ZBGC
(
  nm       VARCHAR2(50) not null,
  xh       VARCHAR2(60),
  mc       VARCHAR2(100),
  dh       VARCHAR2(50),
  sfjd     VARCHAR2(10),
  sfysj    VARCHAR2(2),
  sjcjdwnm VARCHAR2(50),
  parentnm VARCHAR2(50),
  sjcjdwxh VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
alter table TXZY_TS_ZBGC
  add constraint PK_TXZY_TS_ZBGC_NM primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TXZY_T_DBW_TZ
prompt ============================
prompt
create table TXZY_T_DBW_TZ
(
  tznm   VARCHAR2(40),
  jlbm   VARCHAR2(40) not null,
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column TXZY_T_DBW_TZ.jlbm
  is '记录编码';
comment on column TXZY_T_DBW_TZ.sjcjsj
  is '数据采集时间';
comment on column TXZY_T_DBW_TZ.sjcjry
  is '数据采集人员';
alter table TXZY_T_DBW_TZ
  add constraint PK_TXZY_T_DBW_TZ primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WHRYXX
prompt =====================
prompt
create table WHRYXX
(
  rybm       VARCHAR2(40),
  ryxm       VARCHAR2(50),
  dlkl       VARCHAR2(40),
  bdnm       VARCHAR2(50),
  whcdnm     VARCHAR2(50),
  jssjzypxqk CLOB,
  rylx       VARCHAR2(40),
  jxnm       VARCHAR2(40),
  zwnm       VARCHAR2(40),
  cssj       DATE,
  rwsj       DATE,
  sfzh       VARCHAR2(20),
  lxdh       VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WHRYXX_WX
prompt ========================
prompt
create table WHRYXX_WX
(
  rybm VARCHAR2(50),
  wxbm VARCHAR2(50),
  wxmc VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table XC_S_MTLX
prompt ========================
prompt
create table XC_S_MTLX
(
  mtlxnm VARCHAR2(50) not null,
  xh     VARCHAR2(100),
  mc     VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XC_S_MTLX
  is '宣传媒体类型表';
comment on column XC_S_MTLX.mtlxnm
  is '媒体类型内码';
comment on column XC_S_MTLX.xh
  is '序号';
comment on column XC_S_MTLX.mc
  is '名称';
alter table XC_S_MTLX
  add constraint PK_XC_S_MTLX00 primary key (MTLXNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_DM
prompt ===========================
prompt
create table ZZBZ_S_TY_DM
(
  dmnm VARCHAR2(12) not null,
  mc   VARCHAR2(40),
  xh   VARCHAR2(16),
  qc   VARCHAR2(255),
  jd   VARCHAR2(12),
  wd   VARCHAR2(11),
  gc   NUMBER(10),
  js   VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
comment on column ZZBZ_S_TY_DM.js
  is '简述';
alter table ZZBZ_S_TY_DM
  add constraint PK_ZZBZ_S_TY_DM primary key (DMNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table XC_MTPT
prompt ======================
prompt
create table XC_MTPT
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(50),
  mtlxnm   VARCHAR2(50),
  ptzhmc   VARCHAR2(50),
  fzrxm    VARCHAR2(50),
  fzrbzb   VARCHAR2(50),
  fzrsfzhm VARCHAR2(50),
  fzrdh    VARCHAR2(50),
  ddqy     VARCHAR2(50),
  jtdz     VARCHAR2(50),
  wlym     VARCHAR2(50),
  wlip     VARCHAR2(50),
  yyrs     NUMBER(10),
  zbsjx    VARCHAR2(50),
  bz       VARCHAR2(200),
  sjcjsj   DATE,
  sjcjry   VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XC_MTPT
  is '宣传媒体平台表';
comment on column XC_MTPT.jlbm
  is '记录编码';
comment on column XC_MTPT.bdnm
  is '内码';
comment on column XC_MTPT.mtlxnm
  is '媒体类型内码';
comment on column XC_MTPT.ptzhmc
  is '平台\账号名称';
comment on column XC_MTPT.fzrxm
  is '负责人姓名';
comment on column XC_MTPT.fzrbzb
  is '负责人部职别';
comment on column XC_MTPT.fzrsfzhm
  is '负责人身份证号';
comment on column XC_MTPT.fzrdh
  is '负责人手机号';
comment on column XC_MTPT.ddqy
  is '地点区域内码';
comment on column XC_MTPT.jtdz
  is '具体地址';
comment on column XC_MTPT.wlym
  is '网络域名';
comment on column XC_MTPT.wlip
  is '网络IP';
comment on column XC_MTPT.yyrs
  is '运营人数';
comment on column XC_MTPT.zbsjx
  is '值班室军线';
comment on column XC_MTPT.bz
  is '备注';
comment on column XC_MTPT.sjcjsj
  is '数据采集时间';
comment on column XC_MTPT.sjcjry
  is '数据采集人员';
alter table XC_MTPT
  add constraint PK_XC_MTPT00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table XC_MTPT
  add constraint FK_XC_MTPT_DDQY00 foreign key (DDQY)
  references ZZBZ_S_TY_DM (DMNM) on delete set null;
alter table XC_MTPT
  add constraint FK_XC_MTPT_MTLXNM00 foreign key (MTLXNM)
  references XC_S_MTLX (MTLXNM) on delete set null;

prompt
prompt Creating table XC_S_SJLX
prompt ========================
prompt
create table XC_S_SJLX
(
  sjlxnm VARCHAR2(50) not null,
  xh     VARCHAR2(100),
  mc     VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XC_S_SJLX
  is '宣传数据类型字典表';
comment on column XC_S_SJLX.sjlxnm
  is '数据类型内码';
comment on column XC_S_SJLX.xh
  is '序号';
comment on column XC_S_SJLX.mc
  is '名称';
alter table XC_S_SJLX
  add constraint PK_XC_S_SJLX00 primary key (SJLXNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table XC_S_ZBLX
prompt ========================
prompt
create table XC_S_ZBLX
(
  zblxnm VARCHAR2(50) not null,
  xh     VARCHAR2(100),
  mc     VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XC_S_ZBLX
  is '宣传指标类型字典表';
comment on column XC_S_ZBLX.zblxnm
  is '指标类型内码';
comment on column XC_S_ZBLX.xh
  is '序号';
comment on column XC_S_ZBLX.mc
  is '名称';
alter table XC_S_ZBLX
  add constraint PK_XC_S_ZBLX00 primary key (ZBLXNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table XC_MTPT_CBLZB
prompt ============================
prompt
create table XC_MTPT_CBLZB
(
  jlbm   VARCHAR2(40) not null,
  mtptbm VARCHAR2(50),
  tjsj   DATE,
  sjlxnm VARCHAR2(50),
  zblxnm VARCHAR2(50),
  zbz    FLOAT,
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table XC_MTPT_CBLZB
  is '宣传媒体平台传播力指标表';
comment on column XC_MTPT_CBLZB.jlbm
  is '记录编码';
comment on column XC_MTPT_CBLZB.mtptbm
  is '媒体平台编码';
comment on column XC_MTPT_CBLZB.tjsj
  is '统计时间';
comment on column XC_MTPT_CBLZB.sjlxnm
  is '数据类型内码';
comment on column XC_MTPT_CBLZB.zblxnm
  is '指标类型内码';
comment on column XC_MTPT_CBLZB.zbz
  is '指标值';
comment on column XC_MTPT_CBLZB.sjcjsj
  is '数据采集时间';
comment on column XC_MTPT_CBLZB.sjcjry
  is '数据采集人员';
alter table XC_MTPT_CBLZB
  add constraint PK_XC_MTPT_CBLZB00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table XC_MTPT_CBLZB
  add constraint FK_XC_MTPT_CBLZB_SJLXNM00 foreign key (SJLXNM)
  references XC_S_SJLX (SJLXNM) on delete set null;
alter table XC_MTPT_CBLZB
  add constraint FK_XC_MTPT_CBLZB_ZBLXNM00 foreign key (ZBLXNM)
  references XC_S_ZBLX (ZBLXNM) on delete set null;

prompt
prompt Creating table YKXN_S_DDLX
prompt ==========================
prompt
create table YKXN_S_DDLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_DDLX
  is '类型字典表';
comment on column YKXN_S_DDLX.nm
  is '内码';
comment on column YKXN_S_DDLX.xh
  is '序号';
comment on column YKXN_S_DDLX.mc
  is '名称';
alter table YKXN_S_DDLX
  add constraint PK_YKXN_S_DDLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_DD
prompt ======================
prompt
create table YKXN_DD
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  ddlbnm  VARCHAR2(50),
  xh      VARCHAR2(500),
  zbtp    VARCHAR2(50),
  dddzsd  FLOAT,
  ddxhsd  FLOAT,
  zdsg    FLOAT,
  ddxhgd  FLOAT,
  ddzdsc  FLOAT,
  ddyxsc  FLOAT,
  ddzxsc  FLOAT,
  zjxh    VARCHAR2(1000),
  dycd    FLOAT,
  dyzj    FLOAT,
  sqaqfw  FLOAT,
  yjchlq  VARCHAR2(1000),
  ejchlq  VARCHAR2(2000),
  mxjchlq VARCHAR2(2000),
  ddmq    VARCHAR2(2000),
  tbdw    VARCHAR2(1000),
  lxdh    VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_DD
  is '';
comment on column YKXN_DD.jlbm
  is '记录编码';
comment on column YKXN_DD.bdnm
  is '内码';
comment on column YKXN_DD.ddlbnm
  is '类别内码';
comment on column YKXN_DD.xh
  is '型号';
comment on column YKXN_DD.zbtp
  is '图片';
comment on column YKXN_DD.dddzsd
  is '最大速度';
comment on column YKXN_DD.ddxhsd
  is '巡航速度';
comment on column YKXN_DD.zdsg
  is '最大射高';
comment on column YKXN_DD.ddxhgd
  is '巡航高度';
comment on column YKXN_DD.ddzdsc
  is '最大射程';
comment on column YKXN_DD.ddyxsc
  is '有效射程';
comment on column YKXN_DD.ddzxsc
  is '最小射程';
comment on column YKXN_DD.zjxh
  is '载机型号';
comment on column YKXN_DD.dycd
  is '弹长';
comment on column YKXN_DD.dyzj
  is '弹径';
comment on column YKXN_DD.sqaqfw
  is '首区安全范围';
comment on column YKXN_DD.yjchlq
  is '一级残骸落区';
comment on column YKXN_DD.ejchlq
  is '二级残骸落区';
comment on column YKXN_DD.mxjchlq
  is '末修级残骸落区';
comment on column YKXN_DD.ddmq
  is '末区';
comment on column YKXN_DD.tbdw
  is '填报单位';
comment on column YKXN_DD.lxdh
  is '联系电话';
comment on column YKXN_DD.sjcjsj
  is '数据采集时间';
comment on column YKXN_DD.sjcjry
  is '数据采集人员';
alter table YKXN_DD
  add constraint PK_YKXN_DD00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_DD
  add constraint FK_YKXN_DD_DDLBNM00 foreign key (DDLBNM)
  references YKXN_S_DDLX (NM) on delete set null;

prompt
prompt Creating table YKXN_S_FJLX
prompt ==========================
prompt
create table YKXN_S_FJLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_FJLX
  is '飞机类型字典表';
comment on column YKXN_S_FJLX.nm
  is '内码';
comment on column YKXN_S_FJLX.xh
  is '序号';
comment on column YKXN_S_FJLX.mc
  is '名称';
alter table YKXN_S_FJLX
  add constraint PK_YKXN_S_FJLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_FJ
prompt ======================
prompt
create table YKXN_FJ
(
  jlbm       VARCHAR2(40) not null,
  bdnm       VARCHAR2(24),
  fjlbnm     VARCHAR2(50),
  xh         VARCHAR2(500),
  zbtp       VARCHAR2(50),
  zdpfsj     FLOAT,
  xhsd       FLOAT,
  zxpfsd     FLOAT,
  zdsx       FLOAT,
  sysx       FLOAT,
  ydxxtsx    FLOAT,
  wdxxtsx    FLOAT,
  xhgd       FLOAT,
  zzbj       FLOAT,
  yckzjyzzbj FLOAT,
  zdhc       FLOAT,
  zdhs       FLOAT,
  zdpsl      FLOAT,
  dxgzfa     VARCHAR2(2000),
  jc         FLOAT,
  jg         FLOAT,
  yz         FLOAT,
  xyzj       FLOAT,
  jzcys      NUMBER(10),
  hcrj       FLOAT,
  hccd       FLOAT,
  hckd       FLOAT,
  hcgd       FLOAT,
  hcmcc      FLOAT,
  zdqfzl     FLOAT,
  zdzlzl     FLOAT,
  zdzzl      FLOAT,
  zdzylbhfyx FLOAT,
  zdgyl      FLOAT,
  pjxshyl    FLOAT,
  zxsyyl     FLOAT,
  zdzyhc     FLOAT,
  zdzzhc     FLOAT,
  qfhpjl     FLOAT,
  zlhpjl     FLOAT,
  wqwgds     NUMBER(10),
  zdzdl      FLOAT,
  fdjxh      VARCHAR2(1000),
  fdjzdtl    FLOAT,
  tbdw       VARCHAR2(1000),
  lxdh       VARCHAR2(50),
  sjcjry     VARCHAR2(200),
  sjcjsj     DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_FJ
  is '飞机';
comment on column YKXN_FJ.jlbm
  is '记录编码';
comment on column YKXN_FJ.bdnm
  is '内码';
comment on column YKXN_FJ.fjlbnm
  is '飞机类别内码';
comment on column YKXN_FJ.xh
  is '型号';
comment on column YKXN_FJ.zbtp
  is '图片';
comment on column YKXN_FJ.zdpfsj
  is '最大平飞速度';
comment on column YKXN_FJ.xhsd
  is '巡航速度';
comment on column YKXN_FJ.zxpfsd
  is '最小平飞速度';
comment on column YKXN_FJ.zdsx
  is '最大升限';
comment on column YKXN_FJ.sysx
  is '实用升限';
comment on column YKXN_FJ.ydxxtsx
  is '有地效悬停升限';
comment on column YKXN_FJ.wdxxtsx
  is '无地效悬停升限';
comment on column YKXN_FJ.xhgd
  is '巡航高度';
comment on column YKXN_FJ.zzbj
  is '半径';
comment on column YKXN_FJ.yckzjyzzbj
  is '一次空中加油半径';
comment on column YKXN_FJ.zdhc
  is '最大航程';
comment on column YKXN_FJ.zdhs
  is '最大航时';
comment on column YKXN_FJ.zdpsl
  is '最大上升率';
comment on column YKXN_FJ.dxgzfa
  is '典型挂载方案';
comment on column YKXN_FJ.jc
  is '机长';
comment on column YKXN_FJ.jg
  is '机高';
comment on column YKXN_FJ.yz
  is '翼展';
comment on column YKXN_FJ.xyzj
  is '旋翼直径';
comment on column YKXN_FJ.jzcys
  is '空勤组';
comment on column YKXN_FJ.hcrj
  is '货舱容积';
comment on column YKXN_FJ.hccd
  is '货舱长度';
comment on column YKXN_FJ.hckd
  is '货舱宽度';
comment on column YKXN_FJ.hcgd
  is '货舱高度';
comment on column YKXN_FJ.hcmcc
  is '货舱门尺寸';
comment on column YKXN_FJ.zdqfzl
  is '最大起飞重量';
comment on column YKXN_FJ.zdzlzl
  is '最大着陆重量';
comment on column YKXN_FJ.zdzzl
  is '最大载重量';
comment on column YKXN_FJ.zdzylbhfyx
  is '最大载油量';
comment on column YKXN_FJ.zdgyl
  is '最大供油量';
comment on column YKXN_FJ.pjxshyl
  is '平均小时耗油量';
comment on column YKXN_FJ.zxsyyl
  is '最小剩余油量';
comment on column YKXN_FJ.zdzyhc
  is '最大载油航程';
comment on column YKXN_FJ.zdzzhc
  is '最大载重航程';
comment on column YKXN_FJ.qfhpjl
  is '起飞滑跑距离';
comment on column YKXN_FJ.zlhpjl
  is '着陆滑跑距离';
comment on column YKXN_FJ.wqwgds
  is '机上挂点数';
comment on column YKXN_FJ.zdzdl
  is '最大载弹量';
comment on column YKXN_FJ.fdjxh
  is '发动机型号';
comment on column YKXN_FJ.fdjzdtl
  is '发送机最大推力';
comment on column YKXN_FJ.tbdw
  is '填报单位';
comment on column YKXN_FJ.lxdh
  is '联系电话';
comment on column YKXN_FJ.sjcjry
  is '数据采集人员';
comment on column YKXN_FJ.sjcjsj
  is '数据采集时间';
alter table YKXN_FJ
  add constraint PK_YKXN_FJ00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_FJ
  add constraint FK_YKXN_FJ_FJLBNM00 foreign key (FJLBNM)
  references YKXN_S_FJLX (NM) on delete set null;

prompt
prompt Creating table ZZBZ_S_TY_JX
prompt ===========================
prompt
create table ZZBZ_S_TY_JX
(
  jxnm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_JX
  add constraint PK_ZZBZ_S_TY_JX primary key (JXNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZW
prompt ===========================
prompt
create table ZZBZ_S_TY_ZW
(
  zwnm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZW
  add constraint PK_ZZBZ_S_TY_ZW_ZWNM primary key (ZWNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_GJGWRY
prompt ==========================
prompt
create table YKXN_GJGWRY
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  xm     VARCHAR2(50),
  zwnm   VARCHAR2(8),
  jxnm   VARCHAR2(8),
  rzjl   VARCHAR2(2000),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_GJGWRY
  is '关键岗位人员';
comment on column YKXN_GJGWRY.jlbm
  is '记录编码';
comment on column YKXN_GJGWRY.bdnm
  is '内码';
comment on column YKXN_GJGWRY.xm
  is '姓名';
comment on column YKXN_GJGWRY.zwnm
  is '职务内码';
comment on column YKXN_GJGWRY.jxnm
  is '军衔内码';
comment on column YKXN_GJGWRY.rzjl
  is '任职经历';
comment on column YKXN_GJGWRY.sjcjsj
  is '数据采集时间';
comment on column YKXN_GJGWRY.sjcjry
  is '数据采集人员';
alter table YKXN_GJGWRY
  add constraint PK_YKXN_GJGWRY00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_GJGWRY
  add constraint FK_YKXN_GJGWRY_JXNM00 foreign key (JXNM)
  references ZZBZ_S_TY_JX (JXNM) on delete set null;
alter table YKXN_GJGWRY
  add constraint FK_YKXN_GJGWRY_ZWNM00 foreign key (ZWNM)
  references ZZBZ_S_TY_ZW (ZWNM) on delete set null;

prompt
prompt Creating table YKXN_HJ
prompt ======================
prompt
create table YKXN_HJ
(
  jlbm      VARCHAR2(40) not null,
  bdnm      VARCHAR2(24),
  xh        VARCHAR2(500),
  zbtp      VARCHAR2(50),
  cd        FLOAT,
  zdjj      FLOAT,
  fscmc     VARCHAR2(2000),
  fsdzb     VARCHAR2(50),
  fssx      FLOAT,
  aksxfw    VARCHAR2(50),
  ckyzb     VARCHAR2(50),
  ztlqzb    VARCHAR2(50),
  yjlqzb    VARCHAR2(50),
  zlzlqzb   VARCHAR2(50),
  ejlqzb    VARCHAR2(50),
  zdfxsd    FLOAT,
  kynfxjss  FLOAT,
  kynzdfxsj FLOAT,
  ztflsj    FLOAT,
  yjflsj    FLOAT,
  zlzflsj   FLOAT,
  ejflsj    FLOAT,
  tbdw      VARCHAR2(1000),
  lxdh      VARCHAR2(50),
  sjcjsj    DATE,
  sjcjry    VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_HJ
  is '火箭';
comment on column YKXN_HJ.jlbm
  is '记录编码';
comment on column YKXN_HJ.bdnm
  is '内码';
comment on column YKXN_HJ.xh
  is '型号';
comment on column YKXN_HJ.zbtp
  is '图片';
comment on column YKXN_HJ.cd
  is '长度';
comment on column YKXN_HJ.zdjj
  is '最大箭径';
comment on column YKXN_HJ.fscmc
  is '发射场名称';
comment on column YKXN_HJ.fsdzb
  is '发射场坐标';
comment on column YKXN_HJ.fssx
  is '发射射向';
comment on column YKXN_HJ.aksxfw
  is '安控射向范围';
comment on column YKXN_HJ.ckyzb
  is '出空域坐标';
comment on column YKXN_HJ.ztlqzb
  is '助推落区坐标';
comment on column YKXN_HJ.yjlqzb
  is '一级落区坐标';
comment on column YKXN_HJ.zlzlqzb
  is '整流罩落区坐标';
comment on column YKXN_HJ.ejlqzb
  is '二级落区坐标';
comment on column YKXN_HJ.zdfxsd
  is '最大飞行速度';
comment on column YKXN_HJ.kynfxjss
  is '空域内飞行加速度';
comment on column YKXN_HJ.kynzdfxsj
  is '空域内最大飞行时间';
comment on column YKXN_HJ.ztflsj
  is '助推分离时间';
comment on column YKXN_HJ.yjflsj
  is '一级分离时间';
comment on column YKXN_HJ.zlzflsj
  is '整流罩分离时间';
comment on column YKXN_HJ.ejflsj
  is '二级分离时间';
comment on column YKXN_HJ.tbdw
  is '填报单位';
comment on column YKXN_HJ.lxdh
  is '联系电话';
comment on column YKXN_HJ.sjcjsj
  is '数据采集时间';
comment on column YKXN_HJ.sjcjry
  is '数据采集人员';
alter table YKXN_HJ
  add constraint PK_YKXN_HJ00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_S_HPLX
prompt ==========================
prompt
create table YKXN_S_HPLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_HPLX
  is '类型字典表';
comment on column YKXN_S_HPLX.nm
  is '内码';
comment on column YKXN_S_HPLX.xh
  is '序号';
comment on column YKXN_S_HPLX.mc
  is '名称';
alter table YKXN_S_HPLX
  add constraint PK_YKXN_S_HPLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_HP
prompt ======================
prompt
create table YKXN_HP
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  hplbnm VARCHAR2(50),
  xh     VARCHAR2(500),
  zbtp   VARCHAR2(50),
  gsj    FLOAT,
  dsj    FLOAT,
  fxsj   FLOAT,
  tbdw   VARCHAR2(1000),
  lxdh   VARCHAR2(50),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_HP
  is '';
comment on column YKXN_HP.jlbm
  is '记录编码';
comment on column YKXN_HP.bdnm
  is '内码';
comment on column YKXN_HP.hplbnm
  is '类别内码';
comment on column YKXN_HP.xh
  is '型号';
comment on column YKXN_HP.zbtp
  is '图片';
comment on column YKXN_HP.gsj
  is '高射界';
comment on column YKXN_HP.dsj
  is '低射界';
comment on column YKXN_HP.fxsj
  is '方向射界';
comment on column YKXN_HP.tbdw
  is '填报单位';
comment on column YKXN_HP.lxdh
  is '联系电话';
comment on column YKXN_HP.sjcjsj
  is '数据采集时间';
comment on column YKXN_HP.sjcjry
  is '数据采集人员';
alter table YKXN_HP
  add constraint PK_YKXN_HP00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_HP
  add constraint FK_YKXN_HP_HPLBNM00 foreign key (HPLBNM)
  references YKXN_S_HPLX (NM) on delete set null;

prompt
prompt Creating table YKXN_S_HPDYLX
prompt ============================
prompt
create table YKXN_S_HPDYLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_HPDYLX
  is '类型字典表';
comment on column YKXN_S_HPDYLX.nm
  is '内码';
comment on column YKXN_S_HPDYLX.xh
  is '序号';
comment on column YKXN_S_HPDYLX.mc
  is '名称';
alter table YKXN_S_HPDYLX
  add constraint PK_YKXN_S_HPDYLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_HP_DY
prompt =========================
prompt
create table YKXN_HP_DY
(
  jlbm     VARCHAR2(40) not null,
  hpqknm   VARCHAR2(50),
  hpdylxnm VARCHAR2(50),
  hpdycs   FLOAT,
  zdddgd   FLOAT,
  dyzdsc   FLOAT,
  dyzxsc   FLOAT,
  dyzdfxsj FLOAT,
  sjcjsj   DATE,
  sjcjry   VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_HP_DY
  is '';
comment on column YKXN_HP_DY.jlbm
  is '记录编码';
comment on column YKXN_HP_DY.hpqknm
  is '情况内码';
comment on column YKXN_HP_DY.hpdylxnm
  is '类型内码';
comment on column YKXN_HP_DY.hpdycs
  is '初速';
comment on column YKXN_HP_DY.zdddgd
  is '最大弹道高度';
comment on column YKXN_HP_DY.dyzdsc
  is '最大射程';
comment on column YKXN_HP_DY.dyzxsc
  is '最小射程';
comment on column YKXN_HP_DY.dyzdfxsj
  is '最大飞行时间';
comment on column YKXN_HP_DY.sjcjsj
  is '数据采集时间';
comment on column YKXN_HP_DY.sjcjry
  is '数据采集人员';
alter table YKXN_HP_DY
  add constraint PK_YKXN_HP_DY00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_HP_DY
  add constraint FK_YKXN_HP_DY_HPDYLXNM00 foreign key (HPDYLXNM)
  references YKXN_S_HPDYLX (NM) on delete set null;

prompt
prompt Creating table YKXN_S_ZQJDW
prompt ===========================
prompt
create table YKXN_S_ZQJDW
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_ZQJDW
  is '战区级单位字典表';
comment on column YKXN_S_ZQJDW.nm
  is '内码';
comment on column YKXN_S_ZQJDW.xh
  is '序号';
comment on column YKXN_S_ZQJDW.mc
  is '名称';
alter table YKXN_S_ZQJDW
  add constraint PK_YKXN_S_ZQJDW00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BDJB
prompt =============================
prompt
create table ZZBZ_S_TY_BDJB
(
  bdjbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BDJB
  add constraint PK_TXZH_TS_BDJB primary key (BDJBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_JZ
prompt ===========================
prompt
create table ZZBZ_S_TY_JZ
(
  jznm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_JZ
  add constraint PK_TXZH_TS_JZ primary key (JZNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_JBQK
prompt ========================
prompt
create table YKXN_JBQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  zqjdwnm VARCHAR2(50),
  jznm    VARCHAR2(50),
  bdjbnm  VARCHAR2(8),
  bswz    VARCHAR2(500),
  lsgx    VARCHAR2(200),
  zbbz    VARCHAR2(500),
  dfrw    VARCHAR2(2000),
  zbdh    VARCHAR2(200),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_JBQK
  is '用空性能基本情况';
comment on column YKXN_JBQK.jlbm
  is '记录编码';
comment on column YKXN_JBQK.bdnm
  is '内码';
comment on column YKXN_JBQK.zqjdwnm
  is '战区级单位内码';
comment on column YKXN_JBQK.jznm
  is '军种内码';
comment on column YKXN_JBQK.bdjbnm
  is '级别内码';
comment on column YKXN_JBQK.bswz
  is '部署位置';
comment on column YKXN_JBQK.lsgx
  is '隶属关系';
comment on column YKXN_JBQK.zbbz
  is '值班编组';
comment on column YKXN_JBQK.dfrw
  is '担负任务';
comment on column YKXN_JBQK.zbdh
  is '值班电话';
comment on column YKXN_JBQK.sjcjsj
  is '数据采集时间';
comment on column YKXN_JBQK.sjcjry
  is '数据采集人员';
alter table YKXN_JBQK
  add constraint PK_YKXN_JBQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_JBQK
  add constraint FK_YKXN_JBQK_BDJBNM00 foreign key (BDJBNM)
  references ZZBZ_S_TY_BDJB (BDJBNM) on delete set null;
alter table YKXN_JBQK
  add constraint FK_YKXN_JBQK_JZNM00 foreign key (JZNM)
  references ZZBZ_S_TY_JZ (JZNM) on delete set null;
alter table YKXN_JBQK
  add constraint FK_YKXN_JBQK_ZQJDWNM00 foreign key (ZQJDWNM)
  references YKXN_S_ZQJDW (NM) on delete set null;

prompt
prompt Creating table YKXN_S_ZLLX
prompt ==========================
prompt
create table YKXN_S_ZLLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_ZLLX
  is '军事航空资料类型字典表';
comment on column YKXN_S_ZLLX.nm
  is '内码';
comment on column YKXN_S_ZLLX.xh
  is '序号';
comment on column YKXN_S_ZLLX.mc
  is '名称';
alter table YKXN_S_ZLLX
  add constraint PK_YKXN_S_ZLLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_JSHKZL
prompt ==========================
prompt
create table YKXN_JSHKZL
(
  jlbm       VARCHAR2(40) not null,
  bdnm       VARCHAR2(24),
  jshkzllbnm VARCHAR2(50),
  wjmc       VARCHAR2(255),
  xdqk       VARCHAR2(2000),
  fwyj       VARCHAR2(1000),
  sxsj       DATE,
  tbdw       VARCHAR2(1000),
  lxdh       VARCHAR2(50),
  sjcjsj     DATE,
  sjcjry     VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_JSHKZL
  is '军事航空资料';
comment on column YKXN_JSHKZL.jlbm
  is '记录编码';
comment on column YKXN_JSHKZL.bdnm
  is '内码';
comment on column YKXN_JSHKZL.jshkzllbnm
  is '军事航空资料类别内码';
comment on column YKXN_JSHKZL.wjmc
  is '文件名称';
comment on column YKXN_JSHKZL.xdqk
  is '修订情况';
comment on column YKXN_JSHKZL.fwyj
  is '发文依据';
comment on column YKXN_JSHKZL.sxsj
  is '生效时间';
comment on column YKXN_JSHKZL.tbdw
  is '填报单位';
comment on column YKXN_JSHKZL.lxdh
  is '联系电话';
comment on column YKXN_JSHKZL.sjcjsj
  is '数据采集时间';
comment on column YKXN_JSHKZL.sjcjry
  is '数据采集人员';
alter table YKXN_JSHKZL
  add constraint PK_YKXN_JSHKZL00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_JSHKZL
  add constraint FK_YKXN_JSHKZL_JSHKZLLBNM00 foreign key (JSHKZLLBNM)
  references YKXN_S_ZLLX (NM) on delete set null;

prompt
prompt Creating table YKXN_S_KYLX
prompt ==========================
prompt
create table YKXN_S_KYLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_KYLX
  is '空域类型字典表';
comment on column YKXN_S_KYLX.nm
  is '内码';
comment on column YKXN_S_KYLX.xh
  is '序号';
comment on column YKXN_S_KYLX.mc
  is '名称';
alter table YKXN_S_KYLX
  add constraint PK_YKXN_S_KYLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_S_KYXZ
prompt ==========================
prompt
create table YKXN_S_KYXZ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_KYXZ
  is '空域形状类别字典表';
comment on column YKXN_S_KYXZ.nm
  is '内码';
comment on column YKXN_S_KYXZ.xh
  is '序号';
comment on column YKXN_S_KYXZ.mc
  is '名称';
alter table YKXN_S_KYXZ
  add constraint PK_YKXN_S_KYXZ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_KY
prompt ======================
prompt
create table YKXN_KY
(
  jlbm        VARCHAR2(40) not null,
  bdnm        VARCHAR2(24),
  kylbnm      VARCHAR2(50),
  kydh        VARCHAR2(500),
  kyyt        VARCHAR2(1000),
  kyfw        VARCHAR2(2000),
  kyxzlbnm    VARCHAR2(50),
  kysx        FLOAT,
  kyxx        VARCHAR2(50),
  zbx         VARCHAR2(1000),
  txpl        VARCHAR2(500),
  ssgzdwjlxdh VARCHAR2(2000),
  sxrq        DATE,
  shixrq      DATE,
  syqk        VARCHAR2(2000),
  tzbhqk      VARCHAR2(2000),
  beizhu      VARCHAR2(2000),
  tbdw        VARCHAR2(1000),
  lxdh        VARCHAR2(50),
  sjcjsj      DATE,
  sjcjry      VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_KY
  is '空域';
comment on column YKXN_KY.jlbm
  is '记录编码';
comment on column YKXN_KY.bdnm
  is '内码';
comment on column YKXN_KY.kylbnm
  is '空域类别内码';
comment on column YKXN_KY.kydh
  is '空域代号';
comment on column YKXN_KY.kyyt
  is '空域用途';
comment on column YKXN_KY.kyfw
  is '空域范围';
comment on column YKXN_KY.kyxzlbnm
  is '空域形状类别内码';
comment on column YKXN_KY.kysx
  is '空域上限';
comment on column YKXN_KY.kyxx
  is '空域下限';
comment on column YKXN_KY.zbx
  is '坐标系';
comment on column YKXN_KY.txpl
  is '通信频率';
comment on column YKXN_KY.ssgzdwjlxdh
  is '所属管制单位及联系电话';
comment on column YKXN_KY.sxrq
  is '生效日期';
comment on column YKXN_KY.shixrq
  is '失效日期';
comment on column YKXN_KY.syqk
  is '使用情况';
comment on column YKXN_KY.tzbhqk
  is '调整变化情况';
comment on column YKXN_KY.beizhu
  is '备注';
comment on column YKXN_KY.tbdw
  is '填报单位';
comment on column YKXN_KY.lxdh
  is '联系电话';
comment on column YKXN_KY.sjcjsj
  is '数据采集时间';
comment on column YKXN_KY.sjcjry
  is '数据采集人员';
alter table YKXN_KY
  add constraint PK_YKXN_KY00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_KY
  add constraint FK_YKXN_KY_KYLBNM00 foreign key (KYLBNM)
  references YKXN_S_KYLX (NM) on delete set null;
alter table YKXN_KY
  add constraint FK_YKXN_KY_KYXZLBNM00 foreign key (KYXZLBNM)
  references YKXN_S_KYXZ (NM) on delete set null;

prompt
prompt Creating table YKXN_S_RYLB
prompt ==========================
prompt
create table YKXN_S_RYLB
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_RYLB
  is '人员情况统计类别字典表';
comment on column YKXN_S_RYLB.nm
  is '内码';
comment on column YKXN_S_RYLB.xh
  is '序号';
comment on column YKXN_S_RYLB.mc
  is '名称';
alter table YKXN_S_RYLB
  add constraint PK_YKXN_S_RYLB00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_RYQK
prompt ========================
prompt
create table YKXN_RYQK
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  rylbnm VARCHAR2(50),
  bzs    NUMBER(10),
  xys    NUMBER(10),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_RYQK
  is '空管人员情况';
comment on column YKXN_RYQK.jlbm
  is '记录编码';
comment on column YKXN_RYQK.bdnm
  is '内码';
comment on column YKXN_RYQK.rylbnm
  is '人员类别内码';
comment on column YKXN_RYQK.bzs
  is '编制数';
comment on column YKXN_RYQK.xys
  is '现有数';
comment on column YKXN_RYQK.sjcjsj
  is '数据采集时间';
comment on column YKXN_RYQK.sjcjry
  is '数据采集人员';
alter table YKXN_RYQK
  add constraint PK_YKXN_RYQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_RYQK
  add constraint FK_YKXN_RYQK_RYLBNM00 foreign key (RYLBNM)
  references YKXN_S_RYLB (NM) on delete set null;

prompt
prompt Creating table YKXN_S_SF
prompt ========================
prompt
create table YKXN_S_SF
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_S_SF
  is '是否字典表';
comment on column YKXN_S_SF.nm
  is '内码';
comment on column YKXN_S_SF.xh
  is '序号';
comment on column YKXN_S_SF.mc
  is '名称';
alter table YKXN_S_SF
  add constraint PK_YKXN_S_SF00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZB
prompt ===========================
prompt
create table ZZBZ_S_TY_ZB
(
  zbnm VARCHAR2(24) not null,
  xh   VARCHAR2(40),
  mc   VARCHAR2(80),
  jldw VARCHAR2(20),
  zzbz VARCHAR2(2)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 3M
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZB
  add constraint PK_ZZBZ_S_TY_ZB primary key (ZBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table YKXN_ZBQK
prompt ========================
prompt
create table YKXN_ZBQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  zbnm    VARCHAR2(24),
  bzs     NUMBER(10),
  xys     NUMBER(10),
  kys     NUMBER(10),
  zbzk    VARCHAR2(2000),
  scdw    VARCHAR2(1000),
  lzsj    DATE,
  zbxnjjj VARCHAR2(2000),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table YKXN_ZBQK
  is '空管装备情况';
comment on column YKXN_ZBQK.jlbm
  is '记录编码';
comment on column YKXN_ZBQK.bdnm
  is '内码';
comment on column YKXN_ZBQK.zbnm
  is '装备内码';
comment on column YKXN_ZBQK.bzs
  is '编制数';
comment on column YKXN_ZBQK.xys
  is '现有数';
comment on column YKXN_ZBQK.kys
  is '可用数';
comment on column YKXN_ZBQK.zbzk
  is '装备状况';
comment on column YKXN_ZBQK.scdw
  is '生产单位';
comment on column YKXN_ZBQK.lzsj
  is '列装时间';
comment on column YKXN_ZBQK.zbxnjjj
  is '装备性能及简介';
comment on column YKXN_ZBQK.sjcjsj
  is '数据采集时间';
comment on column YKXN_ZBQK.sjcjry
  is '数据采集人员';
alter table YKXN_ZBQK
  add constraint PK_YKXN_ZBQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table YKXN_ZBQK
  add constraint FK_YKXN_ZBQK_ZBNM00 foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZBZ_SJYW_SJCJXX
prompt ===============================
prompt
create table ZZBZ_SJYW_SJCJXX
(
  sjb  VARCHAR2(40) not null,
  zjz  VARCHAR2(255) not null,
  cjdw VARCHAR2(24),
  cjr  VARCHAR2(40),
  cjsj DATE default sysdate,
  mj   VARCHAR2(40),
  zlly VARCHAR2(255),
  shdw VARCHAR2(24),
  shr  VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_SJYW_SJCJXX
  is '标准_数据业务_数据采集信息';
comment on column ZZBZ_SJYW_SJCJXX.sjb
  is '数据表';
comment on column ZZBZ_SJYW_SJCJXX.zjz
  is '主键值';
comment on column ZZBZ_SJYW_SJCJXX.cjdw
  is '采集单位';
comment on column ZZBZ_SJYW_SJCJXX.cjr
  is '采集人';
comment on column ZZBZ_SJYW_SJCJXX.cjsj
  is '采集时间';
comment on column ZZBZ_SJYW_SJCJXX.mj
  is '密级';
comment on column ZZBZ_SJYW_SJCJXX.zlly
  is '资料来源';
comment on column ZZBZ_SJYW_SJCJXX.shdw
  is '审核单位';
comment on column ZZBZ_SJYW_SJCJXX.shr
  is '审核人';

prompt
prompt Creating table ZZBZ_SJYW_SJYWRYXX
prompt =================================
prompt
create table ZZBZ_SJYW_SJYWRYXX
(
  bdnm       VARCHAR2(24) not null,
  xm         VARCHAR2(40) not null,
  sfzhm      VARCHAR2(20),
  jxnm       VARCHAR2(8),
  zwnm       VARCHAR2(8),
  whcdnm     VARCHAR2(8),
  cssj       DATE,
  rwsj       DATE,
  jssjzypxqk VARCHAR2(2000),
  bz         VARCHAR2(255)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_SJYW_TY_SJBZBB
prompt ==================================
prompt
create table ZZBZ_SJYW_TY_SJBZBB
(
  bbnm VARCHAR2(8) not null,
  bbh  VARCHAR2(40),
  bzmc VARCHAR2(255),
  xdsj DATE,
  sm   VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_SJYW_TY_SJBZBB
  add constraint PM_ZZBZ_SJYW_SJBZBB primary key (BBNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_HJ_JTXUH
prompt ==============================
prompt
create table ZZBZ_S_HJ_JTXUH
(
  jtxhnm VARCHAR2(9) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40),
  bdnm   VARCHAR2(24),
  zbnm   VARCHAR2(24),
  xnh    VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on column ZZBZ_S_HJ_JTXUH.bdnm
  is '内码';
comment on column ZZBZ_S_HJ_JTXUH.zbnm
  is '装备内码';
comment on column ZZBZ_S_HJ_JTXUH.xnh
  is '舷号';
alter table ZZBZ_S_HJ_JTXUH
  add constraint PK_ZZBZ_S_HJ_JTXUH primary key (JTXHNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_HJ_JTZXLDJ
prompt ================================
prompt
create table ZZBZ_S_HJ_JTZXLDJ
(
  zzxlnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_HJ_JTZXLDJ
  add constraint PK_ZZBZ_S_HJ_JTZXLDJ primary key (ZZXLNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_HQBZ_BZQ
prompt ==============================
prompt
create table ZZBZ_S_HQBZ_BZQ
(
  bzqnm VARCHAR2(8) not null,
  xh    VARCHAR2(9),
  mc    VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_HQBZ_BZQ
  add constraint PK_TXZY_TS_TXBD_BZQ primary key (BZQNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_HQBZ_GYXZ
prompt ===============================
prompt
create table ZZBZ_S_HQBZ_GYXZ
(
  gyxznm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_HQBZ_GYXZ
  add constraint PK_TXZY_TS_TXBD_GYXZ primary key (GYXZNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BCLB
prompt =============================
prompt
create table ZZBZ_S_TY_BCLB
(
  bclbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BCLB
  add constraint PK_TXZH_TS_BCLB primary key (BCLBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BCLBXF
prompt ===============================
prompt
create table ZZBZ_S_TY_BCLBXF
(
  bclbxfnm VARCHAR2(8) not null,
  xh       VARCHAR2(9),
  mc       VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BCLBXF
  add constraint PK_TXZH_TS_BCLBXF primary key (BCLBXFNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BDLB
prompt =============================
prompt
create table ZZBZ_S_TY_BDLB
(
  bdlbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BDLB
  add constraint TXZH_TS_BDLB primary key (BDLBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BSWZLB
prompt ===============================
prompt
create table ZZBZ_S_TY_BSWZLB
(
  bslbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BSWZLB
  add constraint PK_TXZY_TS_TXBD_BSLB primary key (BSLBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BSXS
prompt =============================
prompt
create table ZZBZ_S_TY_BSXS
(
  bsxsnm VARCHAR2(8) not null,
  mc     VARCHAR2(40),
  xh     VARCHAR2(9)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BSXS
  add constraint PK_TXZY_TS_TXBD_BSXS primary key (BSXSNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_BZ
prompt ===========================
prompt
create table ZZBZ_S_TY_BZ
(
  bznm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_BZ
  add constraint PK_TXZH_TS_BZ primary key (BZNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_FXJSDJ
prompt ===============================
prompt
create table ZZBZ_S_TY_FXJSDJ
(
  fxjsnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_FXJSDJ
  add constraint PK_ZZBZ_S_TY_FXJSDJ primary key (FXJSNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_FXXLSP
prompt ===============================
prompt
create table ZZBZ_S_TY_FXXLSP
(
  fxspnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_FXXLSP
  add constraint PK_ZZBZ_S_TY_FXXLSP primary key (FXSPNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_GJGWRYLB
prompt =================================
prompt
create table ZZBZ_S_TY_GJGWRYLB
(
  ggrlnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_GJGWRYLB
  add constraint PK_ZZBZ_S_TY_GJGWRYLB primary key (GGRLNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_JBDH
prompt =============================
prompt
create table ZZBZ_S_TY_JBDH
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(9),
  mc VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_TY_JBDH
  is '军标代号字典表';
comment on column ZZBZ_S_TY_JBDH.nm
  is '字典内码';
comment on column ZZBZ_S_TY_JBDH.xh
  is '序号';
comment on column ZZBZ_S_TY_JBDH.mc
  is '名称';
alter table ZZBZ_S_TY_JBDH
  add constraint PK_ZZBZ_S_TY_JBDH primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_JBYS
prompt =============================
prompt
create table ZZBZ_S_TY_JBYS
(
  jbysnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40),
  rz     INTEGER,
  gz     INTEGER,
  bz     INTEGER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_JBYS
  add constraint PK_TXZY_TS_TY_YS primary key (JBYSNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_JZLB
prompt =============================
prompt
create table ZZBZ_S_TY_JZLB
(
  jzlbnm VARCHAR2(8) not null,
  xh     VARCHAR2(10),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_JZLB
  add constraint PK_TXZH_TS_JZLB primary key (JZLBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_MTGS
prompt =============================
prompt
create table ZZBZ_S_TY_MTGS
(
  mtgsnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_MTGS
  add constraint PK_ZZBZ_S_TY_MTGS primary key (MTGSNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_MTLX
prompt =============================
prompt
create table ZZBZ_S_TY_MTLX
(
  mtlxnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_MTLX
  add constraint PK_ZZBZ_S_TY_MTLX primary key (MTLXNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_MZ
prompt ===========================
prompt
create table ZZBZ_S_TY_MZ
(
  mznm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_MZ
  add constraint PK_TXZH_TS_MZ primary key (MZNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_NM
prompt ===========================
prompt
create table ZZBZ_S_TY_NM
(
  xh VARCHAR2(9),
  mc VARCHAR2(40),
  nm VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_TY_NM
  is '力量_通用_内码流水号字典';
comment on column ZZBZ_S_TY_NM.xh
  is '序号';
comment on column ZZBZ_S_TY_NM.mc
  is '名称';
comment on column ZZBZ_S_TY_NM.nm
  is '字典内码';
alter table ZZBZ_S_TY_NM
  add constraint PK_ZZBZ_S_TY_NM primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_RYLB
prompt =============================
prompt
create table ZZBZ_S_TY_RYLB
(
  rylbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_RYLB
  add constraint PK_TXZY_TS_TY_RYLB primary key (RYLBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_RZFS
prompt =============================
prompt
create table ZZBZ_S_TY_RZFS
(
  rzfsnm VARCHAR2(40),
  xh     VARCHAR2(100),
  mc     VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_RZFS
  add constraint UK_ZZBZ_S_TY_RZFS00 unique (RZFSNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_RZFS
  add constraint FK_ZZBZ_S_TY_RZFS_RZFSNM00 foreign key (RZFSNM)
  references ZZBZ_S_TY_RZFS (RZFSNM) on delete set null;

prompt
prompt Creating table ZZBZ_S_TY_SF
prompt ===========================
prompt
create table ZZBZ_S_TY_SF
(
  sfnm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_SF
  add constraint PK_TXZY_TS_TY_SF primary key (SFNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_TSDJ
prompt =============================
prompt
create table ZZBZ_S_TY_TSDJ
(
  tsdjnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_TSDJ
  add constraint PK_ZZBZ_S_TY_TSDJ primary key (TSDJNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_WHCD
prompt =============================
prompt
create table ZZBZ_S_TY_WHCD
(
  whcdnm VARCHAR2(8) not null,
  xh     VARCHAR2(9) not null,
  mc     VARCHAR2(40) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_WHCD
  add constraint PK_ZZBZ_S_TY_WHCD primary key (WHCDNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_WZ
prompt ===========================
prompt
create table ZZBZ_S_TY_WZ
(
  wznm VARCHAR2(24),
  xh   VARCHAR2(100),
  mc   VARCHAR2(80),
  ggxh VARCHAR2(40),
  jldw VARCHAR2(20)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_WZ
  add constraint UK_ZZBZ_S_TY_WZ00 unique (WZNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_WZLLQF
prompt ===============================
prompt
create table ZZBZ_S_TY_WZLLQF
(
  llqfnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_WZLLQF
  add constraint PK_TXZH_TS_WZLLQF primary key (LLQFNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_XB
prompt ===========================
prompt
create table ZZBZ_S_TY_XB
(
  xbnm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_XB
  add constraint PK_TXZH_TS_XB primary key (XBNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_XLDJ
prompt =============================
prompt
create table ZZBZ_S_TY_XLDJ
(
  xldjnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_XLDJ
  add constraint PK_ZZBZ_S_TY_XLDJ primary key (XLDJNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZBDJ
prompt =============================
prompt
create table ZZBZ_S_TY_ZBDJ
(
  zbdjnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZBDJ
  add constraint PK_TXZY_TS_TY_ZBDJ primary key (ZBDJNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZBZK
prompt =============================
prompt
create table ZZBZ_S_TY_ZBZK
(
  zbzknm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZBZK
  add constraint PK_TXZY_TS_TY_ZBZK primary key (ZBZKNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZLFX
prompt =============================
prompt
create table ZZBZ_S_TY_ZLFX
(
  zlfxnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZLFX
  add constraint PK_TXZY_TS_TXBD_ZLFX primary key (ZLFXNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZQ
prompt ===========================
prompt
create table ZZBZ_S_TY_ZQ
(
  zqnm VARCHAR2(8) not null,
  xh   VARCHAR2(9),
  mc   VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZQ
  add constraint PK_TXZY_TS_TXBD_SZZQ primary key (ZQNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZWJB
prompt =============================
prompt
create table ZZBZ_S_TY_ZWJB
(
  zwjbnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZWJB
  add constraint PK_ZZBZ_S_TY_ZWJB primary key (ZWJBNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_TY_ZYRYLB
prompt ===============================
prompt
create table ZZBZ_S_TY_ZYRYLB
(
  zyrynm VARCHAR2(8),
  mc     VARCHAR2(80),
  xh     VARCHAR2(9)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZYRYLB
  add constraint UK_ZZBZ_S_TY_ZYRYLB00 unique (ZYRYNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZYRYLB
  add constraint FK_ZZBZ_S_TY_ZYRYLB_ZYRYN00 foreign key (ZYRYNM)
  references ZZBZ_S_TY_ZYRYLB (ZYRYNM) on delete set null;

prompt
prompt Creating table ZZBZ_S_TY_ZZMM
prompt =============================
prompt
create table ZZBZ_S_TY_ZZMM
(
  zzmmnm VARCHAR2(8) not null,
  xh     VARCHAR2(9),
  mc     VARCHAR2(40)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZBZ_S_TY_ZZMM
  add constraint PK_ZZBZ_S_TY_ZZMM primary key (ZZMMNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_CCLX
prompt =============================
prompt
create table ZZBZ_S_YL_CCLX
(
  xh VARCHAR2(100),
  mc VARCHAR2(80),
  nm VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_CCLX
  is '存储类型字典表';
comment on column ZZBZ_S_YL_CCLX.xh
  is '序号';
comment on column ZZBZ_S_YL_CCLX.mc
  is '名称';
comment on column ZZBZ_S_YL_CCLX.nm
  is '字典内码';
alter table ZZBZ_S_YL_CCLX
  add constraint PK_ZZBZ_S_YL_CCLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_DYJLDW
prompt ===============================
prompt
create table ZZBZ_S_YL_DYJLDW
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(250)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_DYJLDW
  is '计量单位';
comment on column ZZBZ_S_YL_DYJLDW.nm
  is '字典内码';
comment on column ZZBZ_S_YL_DYJLDW.xh
  is '序号';
comment on column ZZBZ_S_YL_DYJLDW.mc
  is '字典名称';
alter table ZZBZ_S_YL_DYJLDW
  add constraint PK_ZZBZ_S_YL_DYJLDW00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_FXXLCJ
prompt ===============================
prompt
create table ZZBZ_S_YL_FXXLCJ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_FXXLCJ
  is '成绩字典表';
comment on column ZZBZ_S_YL_FXXLCJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_FXXLCJ.xh
  is '序号';
comment on column ZZBZ_S_YL_FXXLCJ.mc
  is '名称';
alter table ZZBZ_S_YL_FXXLCJ
  add constraint PK_ZZBZ_S_YL_FXXLCJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_HJYXCJ
prompt ===============================
prompt
create table ZZBZ_S_YL_HJYXCJ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_HJYXCJ
  is '成绩字典表';
comment on column ZZBZ_S_YL_HJYXCJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_HJYXCJ.xh
  is '序号';
comment on column ZZBZ_S_YL_HJYXCJ.mc
  is '名称';
alter table ZZBZ_S_YL_HJYXCJ
  add constraint PK_ZZBZ_S_YL_HJYXCJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_JDDY
prompt =============================
prompt
create table ZZBZ_S_YL_JDDY
(
  nm   VARCHAR2(40) not null,
  xh   VARCHAR2(100),
  mc   VARCHAR2(250),
  jldw VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_JDDY
  is '精导字典表';
comment on column ZZBZ_S_YL_JDDY.nm
  is '字典内码';
comment on column ZZBZ_S_YL_JDDY.xh
  is '序号';
comment on column ZZBZ_S_YL_JDDY.mc
  is '字典名称';
comment on column ZZBZ_S_YL_JDDY.jldw
  is '计量单位';
alter table ZZBZ_S_YL_JDDY
  add constraint PK_ZZBZ_S_YL_JDDY00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_JDDYLB
prompt ===============================
prompt
create table ZZBZ_S_YL_JDDYLB
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(250)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_JDDYLB
  is '精导类别字典表';
comment on column ZZBZ_S_YL_JDDYLB.nm
  is '字典内码';
comment on column ZZBZ_S_YL_JDDYLB.xh
  is '序号';
comment on column ZZBZ_S_YL_JDDYLB.mc
  is '字典名称';
alter table ZZBZ_S_YL_JDDYLB
  add constraint PK_ZZBZ_S_YL_JDDYLB00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_JTXH
prompt =============================
prompt
create table ZZBZ_S_YL_JTXH
(
  jtxhnm VARCHAR2(50) not null,
  xh     VARCHAR2(100),
  mc     VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_JTXH
  is '型号字典表';
comment on column ZZBZ_S_YL_JTXH.jtxhnm
  is '型号内码';
comment on column ZZBZ_S_YL_JTXH.xh
  is '序号';
comment on column ZZBZ_S_YL_JTXH.mc
  is '名称';
alter table ZZBZ_S_YL_JTXH
  add constraint PK_ZZBZ_S_YL_JTXH00 primary key (JTXHNM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_KHDJ
prompt =============================
prompt
create table ZZBZ_S_YL_KHDJ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_KHDJ
  is '考核等级字典表';
comment on column ZZBZ_S_YL_KHDJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_KHDJ.xh
  is '序号';
comment on column ZZBZ_S_YL_KHDJ.mc
  is '名称';
alter table ZZBZ_S_YL_KHDJ
  add constraint PK_ZZBZ_S_YL_KHDJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_LJZHYDJ
prompt ================================
prompt
create table ZZBZ_S_YL_LJZHYDJ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_LJZHYDJ
  is '等级字典表';
comment on column ZZBZ_S_YL_LJZHYDJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_LJZHYDJ.xh
  is '序号';
comment on column ZZBZ_S_YL_LJZHYDJ.mc
  is '名称';
alter table ZZBZ_S_YL_LJZHYDJ
  add constraint PK_ZZBZ_S_YL_LJZHYDJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_NDYXCJ
prompt ===============================
prompt
create table ZZBZ_S_YL_NDYXCJ
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_NDYXCJ
  is '年度层级字典表';
comment on column ZZBZ_S_YL_NDYXCJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_NDYXCJ.xh
  is '序号';
comment on column ZZBZ_S_YL_NDYXCJ.mc
  is '名称';
alter table ZZBZ_S_YL_NDYXCJ
  add constraint PK_ZZBZ_S_YL_NDYXCJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_WZJLDW
prompt ===============================
prompt
create table ZZBZ_S_YL_WZJLDW
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(250)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_WZJLDW
  is '计量单位字典表';
comment on column ZZBZ_S_YL_WZJLDW.nm
  is '字典内码';
comment on column ZZBZ_S_YL_WZJLDW.xh
  is '序号';
comment on column ZZBZ_S_YL_WZJLDW.mc
  is '字典名称';
alter table ZZBZ_S_YL_WZJLDW
  add constraint PK_ZZBZ_S_YL_WZJLDW00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_YXCJ
prompt =============================
prompt
create table ZZBZ_S_YL_YXCJ
(
  xh VARCHAR2(100),
  nm VARCHAR2(40) not null,
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_YXCJ
  is '成绩字典表';
comment on column ZZBZ_S_YL_YXCJ.xh
  is '序号';
comment on column ZZBZ_S_YL_YXCJ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_YXCJ.mc
  is '名称';
alter table ZZBZ_S_YL_YXCJ
  add constraint PK_ZZBZ_S_YL_YXCJ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_YXRWLX
prompt ===============================
prompt
create table ZZBZ_S_YL_YXRWLX
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(80)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_YXRWLX
  is '主战平台任务类型字典表';
comment on column ZZBZ_S_YL_YXRWLX.nm
  is '字典内码';
comment on column ZZBZ_S_YL_YXRWLX.xh
  is '序号';
comment on column ZZBZ_S_YL_YXRWLX.mc
  is '名称';
alter table ZZBZ_S_YL_YXRWLX
  add constraint PK_ZZBZ_S_YL_YXRWLX00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_ZCWZ
prompt =============================
prompt
create table ZZBZ_S_YL_ZCWZ
(
  nm   VARCHAR2(40) not null,
  xh   VARCHAR2(100),
  mc   VARCHAR2(250),
  jldw VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_ZCWZ
  is '战储物资字典表';
comment on column ZZBZ_S_YL_ZCWZ.nm
  is '字典内码';
comment on column ZZBZ_S_YL_ZCWZ.xh
  is '序号';
comment on column ZZBZ_S_YL_ZCWZ.mc
  is '字典名称';
comment on column ZZBZ_S_YL_ZCWZ.jldw
  is '计量单位';
alter table ZZBZ_S_YL_ZCWZ
  add constraint PK_ZZBZ_S_YL_ZCWZ00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZBZ_S_YL_ZCWZLB
prompt ===============================
prompt
create table ZZBZ_S_YL_ZCWZLB
(
  nm VARCHAR2(40) not null,
  xh VARCHAR2(100),
  mc VARCHAR2(250)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZBZ_S_YL_ZCWZLB
  is '战储物资类别字典表';
comment on column ZZBZ_S_YL_ZCWZLB.nm
  is '字典内码';
comment on column ZZBZ_S_YL_ZCWZLB.xh
  is '序号';
comment on column ZZBZ_S_YL_ZCWZLB.mc
  is '字典名称';
alter table ZZBZ_S_YL_ZCWZLB
  add constraint PK_ZZBZ_S_YL_ZCWZLB00 primary key (NM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_BD
prompt ======================
prompt
create table ZZLL_BD
(
  bdnm   VARCHAR2(24) not null,
  bdhfnm VARCHAR2(8),
  bdxh   VARCHAR2(24),
  bdfh   VARCHAR2(255),
  bdjc   VARCHAR2(80),
  bzxh   VARCHAR2(24),
  bzfh   VARCHAR2(255),
  bzjc   VARCHAR2(80)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 7M
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_BD
  is '力量_
';
comment on column ZZLL_BD.bdnm
  is '内码';
comment on column ZZLL_BD.bdhfnm
  is '划分内码';
comment on column ZZLL_BD.bdxh
  is '序号';
comment on column ZZLL_BD.bdfh
  is '番号';
comment on column ZZLL_BD.bdjc
  is '简称';
comment on column ZZLL_BD.bzxh
  is '编制序号';
comment on column ZZLL_BD.bzfh
  is '编制番号';
comment on column ZZLL_BD.bzjc
  is '编制简称';
create index RELATIONSHIP_59_FK on ZZLL_BD (BDHFNM)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD
  add constraint PK_ZZLL_BD primary key (BDNM)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 3M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_BD$$
prompt ========================
prompt
create table ZZLL_BD$$
(
  bdnm$ VARCHAR2(40) not null
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ZZLL_BD$$_INDEX on ZZLL_BD$$ (BDNM$)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_BDQK
prompt ========================
prompt
create table ZZLL_BDQK
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(24),
  bdjbnm   VARCHAR2(8),
  zqnm     VARCHAR2(8),
  bzqnm    VARCHAR2(8),
  gyxznm   VARCHAR2(8),
  jznm     VARCHAR2(8),
  bznm     VARCHAR2(8),
  bddh     VARCHAR2(40),
  sfcz     VARCHAR2(2),
  jzlbnm   VARCHAR2(8),
  bdlbnm   VARCHAR2(8),
  bclbnm   VARCHAR2(8),
  bclbxfnm VARCHAR2(8),
  bzsj     DATE,
  xldjnm   VARCHAR2(8),
  zbdjnm   VARCHAR2(8),
  zbdh     VARCHAR2(200),
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  js       VARCHAR2(2000),
  sjcjry   VARCHAR2(200),
  bzdh     VARCHAR2(40),
  llqfnm   VARCHAR2(8),
  sjly     VARCHAR2(80),
  sjsj     DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 23M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BDQK.bzdh
  is '编制代号';
comment on column ZZLL_BDQK.llqfnm
  is '武装力量区分内码';
comment on column ZZLL_BDQK.sjly
  is '数据来源';
comment on column ZZLL_BDQK.sjsj
  is '数据时间';
create index INDEX_BD111 on ZZLL_BDQK (BZNM)
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 3M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BDQK
  add constraint PK_TXZY_T_TXBD_BD primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 4M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BCLBNM foreign key (BCLBNM)
  references ZZBZ_S_TY_BCLB (BCLBNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BCLBXFNM foreign key (BCLBXFNM)
  references ZZBZ_S_TY_BCLBXF (BCLBXFNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BDJBNM foreign key (BDJBNM)
  references ZZBZ_S_TY_BDJB (BDJBNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BDLBNM foreign key (BDLBNM)
  references ZZBZ_S_TY_BDLB (BDLBNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BZNM foreign key (BZNM)
  references ZZBZ_S_TY_BZ (BZNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_BZQNM foreign key (BZQNM)
  references ZZBZ_S_HQBZ_BZQ (BZQNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_GYXZNM foreign key (GYXZNM)
  references ZZBZ_S_HQBZ_GYXZ (GYXZNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_JZLBNM foreign key (JZLBNM)
  references ZZBZ_S_TY_JZLB (JZLBNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_JZNM foreign key (JZNM)
  references ZZBZ_S_TY_JZ (JZNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_LLQFNM foreign key (LLQFNM)
  references ZZBZ_S_TY_WZLLQF (LLQFNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_SFCZ foreign key (SFCZ)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_XLDJNM foreign key (XLDJNM)
  references ZZBZ_S_TY_XLDJ (XLDJNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_ZBDJNM foreign key (ZBDJNM)
  references ZZBZ_S_TY_ZBDJ (ZBDJNM) on delete set null;
alter table ZZLL_BDQK
  add constraint FK_ZZLL_BDQK_ZQNM foreign key (ZQNM)
  references ZZBZ_S_TY_ZQ (ZQNM) on delete set null;

prompt
prompt Creating table ZZLL_BDQK_ZLFX
prompt =============================
prompt
create table ZZLL_BDQK_ZLFX
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  zlfxnm VARCHAR2(8),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 3M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BDQK_ZLFX
  add constraint PK_ZZLL_BDQK_ZLFX primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BDQK_ZLFX
  add constraint FK_ZZLL_BDQK_ZLFX_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BDQK_ZLFX
  add constraint FK_ZZLL_BDQK_ZLFX_ZLFXNM foreign key (ZLFXNM)
  references ZZBZ_S_TY_ZLFX (ZLFXNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_BS
prompt =========================
prompt
create table ZZLL_BD_BS
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  bslbnm VARCHAR2(8),
  bsxsnm VARCHAR2(8),
  twsj   DATE,
  dmnm   VARCHAR2(12),
  kzdm   VARCHAR2(60),
  jd     VARCHAR2(12),
  wd     VARCHAR2(11),
  gc     FLOAT,
  bz     VARCHAR2(250),
  sjcjsj DATE,
  sjcjry VARCHAR2(200),
  zzsj   DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 9M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_BS.zzsj
  is '时间';
alter table ZZLL_BD_BS
  add constraint PK_TXZY_T_TXBD_BSQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 5M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_BS
  add constraint FK_ZZLL_BD_BS_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_BS
  add constraint FK_ZZLL_BD_BS_BSLBNM foreign key (BSLBNM)
  references ZZBZ_S_TY_BSWZLB (BSLBNM) on delete set null;
alter table ZZLL_BD_BS
  add constraint FK_ZZLL_BD_BS_BSXSNM foreign key (BSXSNM)
  references ZZBZ_S_TY_BSXS (BSXSNM) on delete set null;
alter table ZZLL_BD_BS
  add constraint FK_ZZLL_BD_BS_DMNM foreign key (DMNM)
  references ZZBZ_S_TY_DM (DMNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_DFRW
prompt ===========================
prompt
create table ZZLL_BD_DFRW
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  lsh    VARCHAR2(8),
  twsj   DATE,
  bz     VARCHAR2(250),
  sjcjsj DATE,
  dfrw   VARCHAR2(2000),
  sjcjry VARCHAR2(200),
  zzsj   DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 18M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_DFRW.zzsj
  is '时间';
alter table ZZLL_BD_DFRW
  add constraint PK_TXZY_T_TXBD_DFRW primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 5M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_DFRW
  add constraint FK_ZZLL_BD_DFRW_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_DFRW
  add constraint FK_ZZLL_BD_DFRW_LSH foreign key (LSH)
  references ZZBZ_S_TY_NM (NM) on delete set null;

prompt
prompt Creating table ZZLL_BD_DYDTQK
prompt =============================
prompt
create table ZZLL_BD_DYDTQK
(
  jlbm   VARCHAR2(40),
  bdnm   VARCHAR2(24),
  zbnm   VARCHAR2(24),
  twsj   DATE,
  zzsj   DATE,
  xxl    FLOAT,
  yxl    FLOAT,
  jdl    FLOAT,
  xhl    FLOAT,
  bcl    FLOAT,
  sjly   VARCHAR2(80),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_DYDTQK
  add constraint FK_ZZLL_BD_DYDTQK_BDNM00 foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete set null;
alter table ZZLL_BD_DYDTQK
  add constraint FK_ZZLL_BD_DYDTQK_ZBNM00 foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_JB
prompt =========================
prompt
create table ZZLL_BD_JB
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  jbysnm  VARCHAR2(8),
  jbdh    VARCHAR2(40),
  jbdz    VARCHAR2(40),
  jbdzh   VARCHAR2(40),
  jbkh    VARCHAR2(20),
  sjcjsj  DATE,
  bz      VARCHAR2(250),
  jbxk    NUMBER(10),
  sjcjry  VARCHAR2(200),
  jbqjsnm VARCHAR2(8)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 7M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_JB.jbqjsnm
  is '军标前景颜色内码';
alter table ZZLL_BD_JB
  add constraint PK_TXZY_T_TXBD_JB primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 3M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_JB
  add constraint FK_ZZLL_BD_JB_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_JB
  add constraint FK_ZZLL_BD_JB_JBDH foreign key (JBDH)
  references ZZBZ_S_TY_JBDH (NM) on delete set null;
alter table ZZLL_BD_JB
  add constraint FK_ZZLL_BD_JB_JBQJSNM foreign key (JBQJSNM)
  references ZZBZ_S_TY_JBYS (JBYSNM) on delete set null;
alter table ZZLL_BD_JB
  add constraint FK_ZZLL_BD_JB_JBYSNM foreign key (JBYSNM)
  references ZZBZ_S_TY_JBYS (JBYSNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_LSYG
prompt ===========================
prompt
create table ZZLL_BD_LSYG
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(24),
  wjm      VARCHAR2(255),
  sjcjsj   DATE,
  bz       VARCHAR2(250),
  sjcjry   VARCHAR2(200),
  mtgsnm   VARCHAR2(8),
  lsyg     BLOB,
  zjjlsqk  VARCHAR2(2000),
  zdzzyxqk VARCHAR2(2000),
  zy       VARCHAR2(2000),
  zyrw     VARCHAR2(2000),
  lrzg     VARCHAR2(2000)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 33M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_LSYG.mtgsnm
  is '媒体格式内码';
comment on column ZZLL_BD_LSYG.lsyg
  is '历史沿革';
comment on column ZZLL_BD_LSYG.zjjlsqk
  is '组建及隶属情况';
comment on column ZZLL_BD_LSYG.zdzzyxqk
  is '重大情况';
comment on column ZZLL_BD_LSYG.zy
  is '荣誉';
comment on column ZZLL_BD_LSYG.zyrw
  is '重要人物';
comment on column ZZLL_BD_LSYG.lrzg
  is '历任主官';
alter table ZZLL_BD_LSYG
  add constraint PK_TXZY_T_TXBD_LSYG primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_LSYG
  add constraint FK_ZZLL_BD_LSYG_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_LSYG
  add constraint FK_ZZLL_BD_LSYG_MTGSNM foreign key (MTGSNM)
  references ZZBZ_S_TY_MTGS (MTGSNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_LSYG$$
prompt =============================
prompt
create table ZZLL_BD_LSYG$$
(
  wjm      VARCHAR2(255),
  bdnm     VARCHAR2(24),
  no       NUMBER not null,
  group_id NUMBER,
  status   NUMBER(2)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ZZLL_BD_LSYG$$_INX on ZZLL_BD_LSYG$$ (GROUP_ID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_LSYG$$
  add constraint ZZLL_BD_LSYG$$_PK primary key (NO)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_BD_MT
prompt =========================
prompt
create table ZZLL_BD_MT
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  bt     VARCHAR2(80),
  mtgsnm VARCHAR2(8),
  mtlxnm VARCHAR2(8),
  wjm    VARCHAR2(255),
  mtsj   DATE,
  bz     VARCHAR2(250),
  sjcjsj DATE,
  js     VARCHAR2(2000),
  sjcjry VARCHAR2(200),
  mtnm   VARCHAR2(16),
  mtdx   BLOB
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 27M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_MT.mtnm
  is '媒体内码';
comment on column ZZLL_BD_MT.mtdx
  is '媒体对象';
alter table ZZLL_BD_MT
  add constraint PK_TXZY_T_TXBD_MT primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 5M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_MT
  add constraint FK_ZZLL_BD_MT_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_MT
  add constraint FK_ZZLL_BD_MT_MTGSNM foreign key (MTGSNM)
  references ZZBZ_S_TY_MTGS (MTGSNM) on delete set null;
alter table ZZLL_BD_MT
  add constraint FK_ZZLL_BD_MT_MTLXNM foreign key (MTLXNM)
  references ZZBZ_S_TY_MTLX (MTLXNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_MT$$
prompt ===========================
prompt
create table ZZLL_BD_MT$$
(
  wjm      VARCHAR2(255),
  bdnm     VARCHAR2(24),
  mtnm     VARCHAR2(16),
  no       NUMBER not null,
  group_id NUMBER,
  status   NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ZZLL_BD_MT$$_INX on ZZLL_BD_MT$$ (GROUP_ID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_MT$$
  add constraint ZZLL_BD_MT$$_PK primary key (NO)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_BD_RYDTQK
prompt =============================
prompt
create table ZZLL_BD_RYDTQK
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  rylbnm VARCHAR2(8),
  twsj   DATE,
  zzsj   DATE,
  zws    NUMBER,
  kcds   NUMBER,
  bzs    NUMBER,
  bz     VARCHAR2(250),
  sjcjsj DATE,
  sjcjry VARCHAR2(200),
  sjly   VARCHAR2(80),
  sys    NUMBER(10)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 45M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_RYDTQK.sjly
  is '数据来源';
comment on column ZZLL_BD_RYDTQK.sys
  is '实有数';
alter table ZZLL_BD_RYDTQK
  add constraint PK_TXZY_T_TXBD_RY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 30M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_RYDTQK
  add constraint FK_ZZLL_BD_RYDTQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_RYDTQK
  add constraint FK_ZZLL_BD_RYDTQK_RYLBNM foreign key (RYLBNM)
  references ZZBZ_S_TY_RYLB (RYLBNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_WZDTQK
prompt =============================
prompt
create table ZZLL_BD_WZDTQK
(
  jlbm   VARCHAR2(40),
  bdnm   VARCHAR2(24),
  wznm   VARCHAR2(24),
  twsj   DATE,
  zzsj   DATE,
  xxl    FLOAT,
  yxl    FLOAT,
  jdl    FLOAT,
  xhl    FLOAT,
  bcl    FLOAT,
  sjly   VARCHAR2(80),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_WZDTQK
  add constraint FK_ZZLL_BD_WZDTQK_WZNM00 foreign key (WZNM)
  references ZZBZ_S_TY_WZ (WZNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_ZBDTQK
prompt =============================
prompt
create table ZZLL_BD_ZBDTQK
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  zbnm   VARCHAR2(24),
  twsj   DATE,
  bzs    INTEGER,
  xys    INTEGER,
  kys    INTEGER,
  nzjs   INTEGER,
  bz     VARCHAR2(250),
  sjcjsj DATE,
  sjcjry VARCHAR2(200),
  sjly   VARCHAR2(80),
  zzsj   DATE,
  sfzzzb VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_ZBDTQK.sjly
  is '数据来源';
comment on column ZZLL_BD_ZBDTQK.zzsj
  is '时间';
comment on column ZZLL_BD_ZBDTQK.sfzzzb
  is '是否主战装备';
alter table ZZLL_BD_ZBDTQK
  add constraint PK_TXZY_T_TXBD_ZBDTQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 72M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_ZBDTQK
  add constraint FK_ZZLL_BD_ZBDTQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_ZBDTQK
  add constraint FK_ZZLL_BD_ZBDTQK_SFZZZB00 foreign key (SFZZZB)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;
alter table ZZLL_BD_ZBDTQK
  add constraint FK_ZZLL_BD_ZBDTQK_ZBNM foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_ZBZK
prompt ===========================
prompt
create table ZZLL_BD_ZBZK
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  zbnm   VARCHAR2(24),
  zbzknm VARCHAR2(9),
  twsj   DATE,
  sl     NUMBER(10),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jtxhnm VARCHAR2(8),
  sjcjry VARCHAR2(200),
  zzsj   DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 53M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_BD_ZBZK.zzsj
  is '时间';
alter table ZZLL_BD_ZBZK
  add constraint PK_TXZY_T_TXBD_ZBZK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 36M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_ZBZK
  add constraint FK_ZZLL_BD_ZBZK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_BD_ZBZK
  add constraint FK_ZZLL_BD_ZBZK_JTXHNM foreign key (JTXHNM)
  references ZZBZ_S_HJ_JTXUH (JTXHNM) on delete set null;
alter table ZZLL_BD_ZBZK
  add constraint FK_ZZLL_BD_ZBZK_ZBNM foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;
alter table ZZLL_BD_ZBZK
  add constraint FK_ZZLL_BD_ZBZK_ZBZKNM foreign key (ZBZKNM)
  references ZZBZ_S_TY_ZBZK (ZBZKNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_ZRQ
prompt ==========================
prompt
create table ZZLL_BD_ZRQ
(
  jlbm   VARCHAR2(40),
  bdnm   VARCHAR2(24),
  zrqnm  VARCHAR2(8),
  zzj    FLOAT,
  qsj    FLOAT,
  sfbh   VARCHAR2(2),
  qybj   FLOAT,
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_ZRQ
  add constraint UK_ZZLL_BD_ZRQ00 unique (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_BD_ZRQ
  add constraint FK_ZZLL_BD_ZRQ_BDNM00 foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete set null;
alter table ZZLL_BD_ZRQ
  add constraint FK_ZZLL_BD_ZRQ_SFBH00 foreign key (SFBH)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;

prompt
prompt Creating table ZZLL_BD_ZYRYDTQK
prompt ===============================
prompt
create table ZZLL_BD_ZYRYDTQK
(
  jlbm   VARCHAR2(40),
  bdnm   VARCHAR2(24),
  zyrynm VARCHAR2(8),
  twsj   DATE,
  zzsj   DATE,
  bzs    NUMBER(10),
  sys    NUMBER(10),
  zws    NUMBER(10),
  sjly   VARCHAR2(80),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_GJGWRY
prompt ==========================
prompt
create table ZZLL_GJGWRY
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  mc     VARCHAR2(40),
  xh     VARCHAR2(24),
  sfzhm  VARCHAR2(20),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 8M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY.sjcjsj
  is '数据采集时间';
comment on column ZZLL_GJGWRY.sjcjry
  is '数据采集人员';
alter table ZZLL_GJGWRY
  add constraint PK_ZZLL_GJGWRY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 6M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY
  add constraint FK_ZZLL_GJGWRY_XH00 foreign key (XH)
  references ZZBZ_S_TY_NM (NM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY$$
prompt ============================
prompt
create table ZZLL_GJGWRY$$
(
  jlbm$ VARCHAR2(40)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ZZLL_GJGWRY$$_INDEX on ZZLL_GJGWRY$$ (JLBM$)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_GJGWRY_JBQK
prompt ===============================
prompt
create table ZZLL_GJGWRY_JBQK
(
  sfzhm    VARCHAR2(20),
  zzmmnm   VARCHAR2(8),
  mznm     VARCHAR2(8),
  jxnm     VARCHAR2(8),
  whcdnm   VARCHAR2(8),
  zwjbnm   VARCHAR2(8),
  dyxl     VARCHAR2(8),
  dmnm     VARCHAR2(12),
  xbnm     VARCHAR2(8),
  csny     DATE,
  rwsj     DATE,
  jsyxpxqk VARCHAR2(2000),
  sfcyzb   VARCHAR2(2),
  js       VARCHAR2(2000),
  sjsj     DATE,
  sjly     VARCHAR2(80),
  cjzdrwqk VARCHAR2(2000),
  mc       VARCHAR2(40),
  bdnm     VARCHAR2(24),
  sjcjry   VARCHAR2(200),
  xh       VARCHAR2(24),
  jlbm     VARCHAR2(40) not null,
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  jszjnm   VARCHAR2(8),
  zwnm     VARCHAR2(8),
  rxjszjsj DATE,
  rxzjsj   DATE,
  rxzwsj   DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 60M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_JBQK.mc
  is '名称';
comment on column ZZLL_GJGWRY_JBQK.bdnm
  is '内码';
comment on column ZZLL_GJGWRY_JBQK.sjcjry
  is '数据采集人员';
comment on column ZZLL_GJGWRY_JBQK.xh
  is '序号';
comment on column ZZLL_GJGWRY_JBQK.jlbm
  is '记录编码';
comment on column ZZLL_GJGWRY_JBQK.bz
  is '备注';
comment on column ZZLL_GJGWRY_JBQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_GJGWRY_JBQK.jszjnm
  is '技术职级内码';
comment on column ZZLL_GJGWRY_JBQK.zwnm
  is '职务内码';
comment on column ZZLL_GJGWRY_JBQK.rxjszjsj
  is '任现技术职级时间';
comment on column ZZLL_GJGWRY_JBQK.rxzjsj
  is '任现职级时间';
comment on column ZZLL_GJGWRY_JBQK.rxzwsj
  is '任现职务时间';
alter table ZZLL_GJGWRY_JBQK
  add constraint PK_ZZLL_GJGWRY_JBQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 7M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_DMNM foreign key (DMNM)
  references ZZBZ_S_TY_DM (DMNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_DYXL foreign key (DYXL)
  references ZZBZ_S_TY_WHCD (WHCDNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_JSZJNM foreign key (JSZJNM)
  references ZZBZ_S_TY_ZWJB (ZWJBNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_JXNM foreign key (JXNM)
  references ZZBZ_S_TY_JX (JXNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_MZNM foreign key (MZNM)
  references ZZBZ_S_TY_MZ (MZNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_SFCYZB foreign key (SFCYZB)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_WHCDNM foreign key (WHCDNM)
  references ZZBZ_S_TY_WHCD (WHCDNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_XBNM foreign key (XBNM)
  references ZZBZ_S_TY_XB (XBNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_XH foreign key (XH)
  references ZZBZ_S_TY_NM (NM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_ZWJBNM foreign key (ZWJBNM)
  references ZZBZ_S_TY_ZWJB (ZWJBNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_ZWNM foreign key (ZWNM)
  references ZZBZ_S_TY_ZW (ZWNM) on delete set null;
alter table ZZLL_GJGWRY_JBQK
  add constraint FK_ZZLL_GJGWRY_JBQK_ZZMMNM foreign key (ZZMMNM)
  references ZZBZ_S_TY_ZZMM (ZZMMNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_DDFSYZ
prompt =================================
prompt
create table ZZLL_GJGWRY_DDFSYZ
(
  xldjnm VARCHAR2(8),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_DDFSYZ.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_DDFSYZ
  add constraint PK_ZZLL_GJGWRY_DDFSYZ primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_DDFSYZ
  add constraint FK_ZZLL_GJGWRY_DDFSYZ_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_DDFSYZ
  add constraint FK_ZZLL_GJGWRY_DDFSYZ_XLDJN foreign key (XLDJNM)
  references ZZBZ_S_TY_XLDJ (XLDJNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_FXY
prompt ==============================
prompt
create table ZZLL_GJGWRY_FXY
(
  fxspnm VARCHAR2(8),
  fxjsnm VARCHAR2(8),
  fxzsj  NUMBER(10),
  xjjxsj NUMBER(10),
  fxydh  VARCHAR2(20),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 1M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_FXY.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_FXY
  add constraint PK_ZZLL_GJGWRY_FXY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_FXY
  add constraint FK_ZZLL_GJGWRY_FXY_FXJSNM foreign key (FXJSNM)
  references ZZBZ_S_TY_FXJSDJ (FXJSNM) on delete set null;
alter table ZZLL_GJGWRY_FXY
  add constraint FK_ZZLL_GJGWRY_FXY_FXSPNM foreign key (FXSPNM)
  references ZZBZ_S_TY_FXXLSP (FXSPNM) on delete set null;
alter table ZZLL_GJGWRY_FXY
  add constraint FK_ZZLL_GJGWRY_FXY_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_GJGWRYLB
prompt ===================================
prompt
create table ZZLL_GJGWRY_GJGWRYLB
(
  ggrlnm VARCHAR2(8),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 13M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_GJGWRYLB.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_GJGWRYLB
  add constraint PK_ZZLL_GJGWRY_GJGWRYLB primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 8M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_GJGWRYLB
  add constraint FK_ZZLL_GJGWRY_GJGWRYLB_GGR foreign key (GGRLNM)
  references ZZBZ_S_TY_GJGWRYLB (GGRLNM) on delete set null;
alter table ZZLL_GJGWRY_GJGWRYLB
  add constraint FK_ZZLL_GJGWRY_GJGWRYLB_RYB foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_JTZ
prompt ==============================
prompt
create table ZZLL_GJGWRY_JTZ
(
  zzxlnm VARCHAR2(8),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_JTZ.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_JTZ
  add constraint FK_ZZLL_GJGWRY_JTZ_JLBM primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_JTZ
  add constraint FK_ZZLL_GJGWRY_JTZ_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_JTZ
  add constraint FK_ZZLL_GJGWRY_JTZ_ZZXLNM foreign key (ZZXLNM)
  references ZZBZ_S_HJ_JTZXLDJ (ZZXLNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_JTZ_RZJT
prompt ===================================
prompt
create table ZZLL_GJGWRY_JTZ_RZJT
(
  jtxhnm VARCHAR2(9),
  sfdqrz VARCHAR2(2),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_JTZ_RZJT.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_JTZ_RZJT
  add constraint PK_ZZLL_GJGWRY_JTZ_RZJT primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_JTZ_RZJT
  add constraint FK_ZZLL_GJGWRY_JTZ_RZJT_JTX foreign key (JTXHNM)
  references ZZBZ_S_HJ_JTXUH (JTXHNM) on delete set null;
alter table ZZLL_GJGWRY_JTZ_RZJT
  add constraint FK_ZZLL_GJGWRY_JTZ_RZJT_RYB foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_MT
prompt =============================
prompt
create table ZZLL_GJGWRY_MT
(
  mtnm   VARCHAR2(16),
  mtlxnm VARCHAR2(8),
  mtgsnm VARCHAR2(8),
  bt     VARCHAR2(80),
  js     VARCHAR2(2000),
  wjm    VARCHAR2(255),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20),
  mtsj   DATE,
  mtdx   BLOB
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 23M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_MT.sfzhm
  is '身份证号';
comment on column ZZLL_GJGWRY_MT.mtsj
  is '媒体时间';
comment on column ZZLL_GJGWRY_MT.mtdx
  is '媒体对象';
alter table ZZLL_GJGWRY_MT
  add constraint PK_ZZLL_GJGWRY_MT primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 7M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_MT
  add constraint FK_ZZLL_GJGWRY_MT_MTGSNM foreign key (MTGSNM)
  references ZZBZ_S_TY_MTGS (MTGSNM) on delete set null;
alter table ZZLL_GJGWRY_MT
  add constraint FK_ZZLL_GJGWRY_MT_MTLXNM foreign key (MTLXNM)
  references ZZBZ_S_TY_MTLX (MTLXNM) on delete set null;
alter table ZZLL_GJGWRY_MT
  add constraint FK_ZZLL_GJGWRY_MT_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_MT$$
prompt ===============================
prompt
create table ZZLL_GJGWRY_MT$$
(
  wjm      VARCHAR2(255),
  sfzhm    VARCHAR2(20),
  mtnm     VARCHAR2(16),
  no       NUMBER not null,
  group_id NUMBER,
  status   NUMBER
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
create index ZZLL_GJGWRY_MT$$_INX on ZZLL_GJGWRY_MT$$ (GROUP_ID)
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_MT$$
  add constraint ZZLL_GJGWRY_MT$$_PK primary key (NO)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_GJGWRY_SDFSQK
prompt =================================
prompt
create table ZZLL_GJGWRY_SDFSQK
(
  zbnm   VARCHAR2(24),
  cs     NUMBER(10),
  fsdysl NUMBER(10),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 832K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_SDFSQK.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_SDFSQK
  add constraint PK_ZZLL_GJGWRY_SDFSQK primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 384K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_SDFSQK
  add constraint FK_ZZLL_GJGWRY_SDFSQK_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_SDFSQK
  add constraint FK_ZZLL_GJGWRY_SDFSQK_ZBNM foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_SYWQ
prompt ===============================
prompt
create table ZZLL_GJGWRY_SYWQ
(
  zbnm   VARCHAR2(24),
  sfdqsy VARCHAR2(2),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 2M
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_SYWQ.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_SYWQ
  add constraint PK_ZZLL_GJGWRY_SYWQ primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 704K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_SYWQ
  add constraint FK_ZZLL_GJGWRY_SYWQ_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_SYWQ
  add constraint FK_ZZLL_GJGWRY_SYWQ_SFDQSY foreign key (SFDQSY)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;
alter table ZZLL_GJGWRY_SYWQ
  add constraint FK_ZZLL_GJGWRY_SYWQ_ZBNM foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_BPS
prompt =====================================
prompt
create table ZZLL_GJGWRY_TZZZGG_BPS
(
  dzymbphnl VARCHAR2(255),
  syzylx    VARCHAR2(255),
  sbcs      NUMBER(10),
  bpqczzsy  VARCHAR2(255),
  rybm      VARCHAR2(40),
  bz        VARCHAR2(250),
  sjcjsj    DATE,
  jlbm      VARCHAR2(40) not null,
  sjcjry    VARCHAR2(200),
  sfzhm     VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_BPS.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_BPS
  add constraint PK_ZZLL_GJGWRY_TZZZGG_BPS primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_BPS
  add constraint FK_ZZLL_GJGWRY_TZZZGG_BPS_R foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_CFZJSY
prompt ========================================
prompt
create table ZZLL_GJGWRY_TZZZGG_CFZJSY
(
  czzxj       FLOAT,
  czzjl       FLOAT,
  ychxzyjl    FLOAT,
  fzhktjxhxnl VARCHAR2(255),
  hxjl        FLOAT,
  fxpc        FLOAT,
  rybm        VARCHAR2(40),
  bz          VARCHAR2(250),
  sjcjsj      DATE,
  jlbm        VARCHAR2(40) not null,
  sjcjry      VARCHAR2(200),
  sfzhm       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_CFZJSY.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_CFZJSY
  add constraint PK_ZZLL_GJGWRY_TZZZGG_CFZJS primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_CFZJSY
  add constraint FK_ZZLL_GJGWRY_TZZZGG_CFZJS foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_DLSJYJSY
prompt ==========================================
prompt
create table ZZLL_GJGWRY_TZZZGG_DLSJYJSY
(
  fxzsj       FLOAT,
  fxzjl       FLOAT,
  fxzggd      FLOAT,
  fxzdgd      FLOAT,
  ycfxzyjl    FLOAT,
  dzqxtjxfxnl VARCHAR2(255),
  rybm        VARCHAR2(40),
  bz          VARCHAR2(250),
  sjcjsj      DATE,
  jlbm        VARCHAR2(40) not null,
  sjcjry      VARCHAR2(200),
  sfzhm       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_DLSJYJSY.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_DLSJYJSY
  add constraint PK_ZZLL_GJGWRY_TZZZGG_DLSJY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_DLSJYJSY
  add constraint FK_ZZLL_GJGWRY_TZZZGG_DLSJY foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_HQS
prompt =====================================
prompt
create table ZZLL_GJGWRY_TZZZGG_HQS
(
  hqzl     VARCHAR2(255),
  hqczsyqk VARCHAR2(255),
  sdsjcs   NUMBER(10),
  zznl     VARCHAR2(255),
  rybm     VARCHAR2(40),
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  jlbm     VARCHAR2(40) not null,
  sjcjry   VARCHAR2(200),
  sfzhm    VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_HQS.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_HQS
  add constraint PK_ZZLL_GJGWRY_TZZZGG_HQS primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_HQS
  add constraint FK_ZZLL_GJGWRY_TZZZGG_HQS_R foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_JJS
prompt =====================================
prompt
create table ZZLL_GJGWRY_TZZZGG_JJS
(
  syqxzl VARCHAR2(255),
  wzjn   VARCHAR2(255),
  zznl   VARCHAR2(255),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_JJS.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_JJS
  add constraint PK_ZZLL_GJGWRY_TZZZGG_JJS primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_JJS
  add constraint FK_ZZLL_GJGWRY_TZZZGG_JJS_R foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_QSY
prompt =====================================
prompt
create table ZZLL_GJGWRY_TZZZGG_QSY
(
  qszsj    FLOAT,
  qsjxsd   FLOAT,
  yczdqssj FLOAT,
  yczdqsjl FLOAT,
  dxqyjl   FLOAT,
  fxpc     FLOAT,
  qsgjnl   VARCHAR2(255),
  sxphnl   VARCHAR2(255),
  rybm     VARCHAR2(40),
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  jlbm     VARCHAR2(40) not null,
  sjcjry   VARCHAR2(200),
  sfzhm    VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_QSY.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_QSY
  add constraint PK_ZZLL_GJGWRY_TZZZGG_QSY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_QSY
  add constraint FK_ZZLL_GJGWRY_TZZZGG_QSY_R foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_SYZB
prompt ======================================
prompt
create table ZZLL_GJGWRY_TZZZGG_SYZB
(
  zbnm   VARCHAR2(24),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_SYZB.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_SYZB
  add constraint PK_ZZLL_GJGWRY_TZZZGG_SYZB primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_SYZB
  add constraint FK_ZZLL_GJGWRY_TZZZGG_SYZB_ foreign key (ZBNM)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;
alter table ZZLL_GJGWRY_TZZZGG_SYZB
  add constraint FK_ZZLL_GJGWRY_TZZZGG_SYZB_1 foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_TSY
prompt =====================================
prompt
create table ZZLL_GJGWRY_TZZZGG_TSY
(
  tsdjnm      VARCHAR2(8),
  tscs        NUMBER(10),
  sysx        VARCHAR2(255),
  tsjx        VARCHAR2(255),
  tsgd        FLOAT,
  fztjtsnl    VARCHAR2(255),
  xztstjxtsnl VARCHAR2(255),
  rybm        VARCHAR2(40),
  bz          VARCHAR2(250),
  sjcjsj      DATE,
  jlbm        VARCHAR2(40) not null,
  sjcjry      VARCHAR2(200),
  sfzhm       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_TSY.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_TSY
  add constraint PK_ZZLL_GJGWRY_TZZZGG_TSY primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_TSY
  add constraint FK_ZZLL_GJGWRY_TZZZGG_TSY_R foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_TZZZGG_TSY
  add constraint FK_ZZLL_GJGWRY_TZZZGG_TSY_T foreign key (TSDJNM)
  references ZZBZ_S_TY_TSDJ (TSDJNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_WRJCZS
prompt ========================================
prompt
create table ZZLL_GJGWRY_TZZZGG_WRJCZS
(
  czzsj    FLOAT,
  czfs     VARCHAR2(255),
  fxjc     NUMBER(10),
  czfxzyjl FLOAT,
  hkpdsp   VARCHAR2(255),
  rybm     VARCHAR2(40),
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  jlbm     VARCHAR2(40) not null,
  sjcjry   VARCHAR2(200),
  sfzhm    VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_WRJCZS.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_WRJCZS
  add constraint PK_ZZLL_GJGWRY_TZZZGG_WRJCZ primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_WRJCZS
  add constraint FK_ZZLL_GJGWRY_TZZZGG_WRJCZ foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_YCTLZBCZS
prompt ===========================================
prompt
create table ZZLL_GJGWRY_TZZZGG_YCTLZBCZS
(
  mmhyqk VARCHAR2(255),
  zbsyqk VARCHAR2(255),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 512K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_YCTLZBCZS.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_YCTLZBCZS
  add constraint PK_ZZLL_GJGWRY_TZZZGG_YCTLZ primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_YCTLZBCZS
  add constraint FK_ZZLL_GJGWRY_TZZZGG_YCTLZ foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_TZZZGG_YDDJGG
prompt ========================================
prompt
create table ZZLL_GJGWRY_TZZZGG_YDDJGG
(
  yddjqc VARCHAR2(255),
  dwjd   FLOAT,
  yddjff VARCHAR2(255),
  zzxg   VARCHAR2(255),
  rybm   VARCHAR2(40),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 256K
    minextents 1
    maxextents unlimited
  );
comment on column ZZLL_GJGWRY_TZZZGG_YDDJGG.sfzhm
  is '身份证号';
alter table ZZLL_GJGWRY_TZZZGG_YDDJGG
  add constraint PK_ZZLL_GJGWRY_TZZZGG_YDDJG primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_TZZZGG_YDDJGG
  add constraint FK_ZZLL_GJGWRY_TZZZGG_YDDJG foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_GJGWRY_ZHY
prompt ==============================
prompt
create table ZZLL_GJGWRY_ZHY
(
  zwnm   VARCHAR2(8),
  szdh   VARCHAR2(40),
  rxzjsj DATE,
  xgsj   DATE,
  rzjl   VARCHAR2(2000),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  jlbm   VARCHAR2(40) not null,
  rybm   VARCHAR2(40),
  sjcjry VARCHAR2(200),
  sfzhm  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 88M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_ZHY
  add constraint PK_ZZLL_GJGWRY_ZHY_JLBM primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 7M
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_ZHY
  add constraint FK_ZZLL_GJGWRY_ZHY_RYBM foreign key (RYBM)
  references ZZLL_GJGWRY_JBQK (JLBM) on delete cascade;
alter table ZZLL_GJGWRY_ZHY
  add constraint FK_ZZLL_GJGWRY_ZHY_SZDH foreign key (SZDH)
  references ZZBZ_S_TY_NM (NM) on delete set null;
alter table ZZLL_GJGWRY_ZHY
  add constraint FK_ZZLL_GJGWRY_ZHY_ZWNM foreign key (ZWNM)
  references ZZBZ_S_TY_ZW (ZWNM) on delete set null;

prompt
prompt Creating table ZZLL_GJGWRY_ZWJRQK
prompt =================================
prompt
create table ZZLL_GJGWRY_ZWJRQK
(
  jlbm   VARCHAR2(40),
  rybm   VARCHAR2(40),
  sfzhm  VARCHAR2(20),
  bdnm   VARCHAR2(24),
  zwnm   VARCHAR2(8),
  rxzwsj DATE,
  rzfsnm VARCHAR2(50),
  bz     VARCHAR2(250),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_GJGWRY_ZWJRQK
  add constraint FK_ZZLL_GJGWRY_ZWJRQK_BDN00 foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete set null;
alter table ZZLL_GJGWRY_ZWJRQK
  add constraint FK_ZZLL_GJGWRY_ZWJRQK_RZF00 foreign key (RZFSNM)
  references ZZBZ_S_TY_RZFS (RZFSNM) on delete set null;
alter table ZZLL_GJGWRY_ZWJRQK
  add constraint FK_ZZLL_GJGWRY_ZWJRQK_ZWN00 foreign key (ZWNM)
  references ZZBZ_S_TY_ZW (ZWNM) on delete set null;

prompt
prompt Creating table ZZLL_HJ_YXQK_ND
prompt ==============================
prompt
create table ZZLL_HJ_YXQK_ND
(
  jlbm      VARCHAR2(40) not null,
  jtjbqknm  VARCHAR2(50),
  ndyxdh    VARCHAR2(100),
  ndyxkt    VARCHAR2(100),
  ndyxsj    VARCHAR2(50),
  ndyxhy    VARCHAR2(200),
  yxcjnm    VARCHAR2(50),
  yxzzdw    VARCHAR2(100),
  zyylnr    VARCHAR2(4000),
  sfksbzzhs VARCHAR2(50),
  sjsywqqk  VARCHAR2(200),
  hjyxcj    VARCHAR2(50),
  jsxm      VARCHAR2(50),
  jsbzb     VARCHAR2(100),
  zzxm      VARCHAR2(50),
  zzbzb     VARCHAR2(100),
  wjm       VARCHAR2(50),
  sjcjsj    DATE,
  sjcjry    VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HJ_YXQK_ND
  is '主战平台（驱护舰）年度情况';
comment on column ZZLL_HJ_YXQK_ND.jlbm
  is '记录编码';
comment on column ZZLL_HJ_YXQK_ND.jtjbqknm
  is '基本情况内码';
comment on column ZZLL_HJ_YXQK_ND.ndyxdh
  is '年度代号';
comment on column ZZLL_HJ_YXQK_ND.ndyxkt
  is '年度课题';
comment on column ZZLL_HJ_YXQK_ND.ndyxsj
  is '年度时间';
comment on column ZZLL_HJ_YXQK_ND.ndyxhy
  is '年度海域';
comment on column ZZLL_HJ_YXQK_ND.yxcjnm
  is '年度层级';
comment on column ZZLL_HJ_YXQK_ND.yxzzdw
  is '组织单位';
comment on column ZZLL_HJ_YXQK_ND.zyylnr
  is '主要内容';
comment on column ZZLL_HJ_YXQK_ND.sfksbzzhs
  is '是否开设编组指挥所';
comment on column ZZLL_HJ_YXQK_ND.sjsywqqk
  is '实际使用武器情况';
comment on column ZZLL_HJ_YXQK_ND.hjyxcj
  is '成绩';
comment on column ZZLL_HJ_YXQK_ND.jsxm
  is '军事姓名';
comment on column ZZLL_HJ_YXQK_ND.jsbzb
  is '军事部职别';
comment on column ZZLL_HJ_YXQK_ND.zzxm
  is '政治姓名';
comment on column ZZLL_HJ_YXQK_ND.zzbzb
  is '政治部职别';
comment on column ZZLL_HJ_YXQK_ND.wjm
  is '文件名（不启用）';
comment on column ZZLL_HJ_YXQK_ND.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HJ_YXQK_ND.sjcjry
  is '数据采集人员';
alter table ZZLL_HJ_YXQK_ND
  add constraint PK_ZZLL_HJ_YXQK_ND00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_HJ_YXQK_ND
  add constraint FK_ZZLL_HJ_YXQK_ND_HJYXCJ00 foreign key (HJYXCJ)
  references ZZBZ_S_YL_HJYXCJ (NM) on delete set null;
alter table ZZLL_HJ_YXQK_ND
  add constraint FK_ZZLL_HJ_YXQK_ND_SFKSBZ00 foreign key (SFKSBZZHS)
  references ZZBZ_S_TY_SF (SFNM) on delete set null;
alter table ZZLL_HJ_YXQK_ND
  add constraint FK_ZZLL_HJ_YXQK_ND_YXCJNM00 foreign key (YXCJNM)
  references ZZBZ_S_YL_NDYXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_HJ_ZZPTZXRW
prompt ===============================
prompt
create table ZZLL_HJ_ZZPTZXRW
(
  jlbm     VARCHAR2(40) not null,
  jtjbqknm VARCHAR2(50),
  rwdh     VARCHAR2(50),
  rwmc     VARCHAR2(200),
  rwblbc   VARCHAR2(4000),
  rwcxsj   VARCHAR2(50),
  rwhy     VARCHAR2(200),
  ytgjjyd  VARCHAR2(4000),
  sjsywqqk VARCHAR2(200),
  rwwcqkzy VARCHAR2(4000),
  jsxm     VARCHAR2(50),
  jsbzb    VARCHAR2(100),
  zzxm     VARCHAR2(50),
  zzbzb    VARCHAR2(100),
  wjm      VARCHAR2(50),
  sjcjsj   DATE,
  sjcjry   VARCHAR2(200),
  rwnrv    VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HJ_ZZPTZXRW
  is '主战平台年度执行重大任务情况';
comment on column ZZLL_HJ_ZZPTZXRW.jlbm
  is '记录编码';
comment on column ZZLL_HJ_ZZPTZXRW.jtjbqknm
  is '基本情况内码';
comment on column ZZLL_HJ_ZZPTZXRW.rwdh
  is '任务代号';
comment on column ZZLL_HJ_ZZPTZXRW.rwmc
  is '任务名称';
comment on column ZZLL_HJ_ZZPTZXRW.rwblbc
  is '所在任务编组兵力编成';
comment on column ZZLL_HJ_ZZPTZXRW.rwcxsj
  is '任务持续时间';
comment on column ZZLL_HJ_ZZPTZXRW.rwhy
  is '任务海域';
comment on column ZZLL_HJ_ZZPTZXRW.ytgjjyd
  is '与他国舰机遭遇及应对情况';
comment on column ZZLL_HJ_ZZPTZXRW.sjsywqqk
  is '实际使用武器情况';
comment on column ZZLL_HJ_ZZPTZXRW.rwwcqkzy
  is '任务完成情况摘要';
comment on column ZZLL_HJ_ZZPTZXRW.jsxm
  is '军事姓名';
comment on column ZZLL_HJ_ZZPTZXRW.jsbzb
  is '军事部职别';
comment on column ZZLL_HJ_ZZPTZXRW.zzxm
  is '政治姓名';
comment on column ZZLL_HJ_ZZPTZXRW.zzbzb
  is '政治部职别';
comment on column ZZLL_HJ_ZZPTZXRW.wjm
  is '文件名（不启用）';
comment on column ZZLL_HJ_ZZPTZXRW.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HJ_ZZPTZXRW.sjcjry
  is '数据采集人员';
comment on column ZZLL_HJ_ZZPTZXRW.rwnrv
  is '任务内容';
alter table ZZLL_HJ_ZZPTZXRW
  add constraint PK_ZZLL_HJ_ZZPTZXRW00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table ZZLL_HJ_ZZPT_JT
prompt ==============================
prompt
create table ZZLL_HJ_ZZPT_JT
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  xuh    VARCHAR2(50),
  xih    VARCHAR2(50),
  jtzt   VARCHAR2(50),
  bz     VARCHAR2(1000),
  sjcjsj DATE,
  sjcjry VARCHAR2(200),
  sszd   VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HJ_ZZPT_JT
  is '基本情况表';
comment on column ZZLL_HJ_ZZPT_JT.jlbm
  is '记录编码';
comment on column ZZLL_HJ_ZZPT_JT.bdnm
  is '内码';
comment on column ZZLL_HJ_ZZPT_JT.xuh
  is '舷号';
comment on column ZZLL_HJ_ZZPT_JT.xih
  is '型号';
comment on column ZZLL_HJ_ZZPT_JT.jtzt
  is '状态';
comment on column ZZLL_HJ_ZZPT_JT.bz
  is '备注';
comment on column ZZLL_HJ_ZZPT_JT.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HJ_ZZPT_JT.sjcjry
  is '数据采集人员';
comment on column ZZLL_HJ_ZZPT_JT.sszd
  is '所属支队';
alter table ZZLL_HJ_ZZPT_JT
  add constraint PK_ZZLL_HJ_ZZPT_JT00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_HJ_ZZPT_JT
  add constraint FK_ZZLL_HJ_ZZPT_JT_JTZT00 foreign key (JTZT)
  references ZZBZ_S_YL_YXRWLX (NM) on delete set null;
alter table ZZLL_HJ_ZZPT_JT
  add constraint FK_ZZLL_HJ_ZZPT_JT_XIH00 foreign key (XIH)
  references ZZBZ_S_YL_JTXH (JTXHNM) on delete set null;
alter table ZZLL_HJ_ZZPT_JT
  add constraint FK_ZZLL_HJ_ZZPT_JT_XUH00 foreign key (XUH)
  references ZZBZ_S_HJ_JTXUH (JTXHNM) on delete set null;

prompt
prompt Creating table ZZLL_HU_YXJBQK
prompt =============================
prompt
create table ZZLL_HU_YXJBQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  ddxh    VARCHAR2(500),
  hlskfw  VARCHAR2(100),
  yxdh    VARCHAR2(100),
  yxkt    VARCHAR2(100),
  ylkm    VARCHAR2(200),
  yxzzdw  VARCHAR2(100),
  yxsj    VARCHAR2(50),
  yxdd    VARCHAR2(200),
  sdfsqk  VARCHAR2(2000),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200),
  yxcjd   VARCHAR2(50),
  zzbz    VARCHAR2(4000),
  zdblx   VARCHAR2(500),
  ryzbcxl VARCHAR2(400),
  zhycjqk VARCHAR2(50),
  djmblx  VARCHAR2(100)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HU_YXJBQK
  is '旅、营基本情况';
comment on column ZZLL_HU_YXJBQK.jlbm
  is '记录编码';
comment on column ZZLL_HU_YXJBQK.bdnm
  is '内码';
comment on column ZZLL_HU_YXJBQK.ddxh
  is '型号';
comment on column ZZLL_HU_YXJBQK.hlskfw
  is '火力摄控范围';
comment on column ZZLL_HU_YXJBQK.yxdh
  is '代号';
comment on column ZZLL_HU_YXJBQK.yxkt
  is '课题';
comment on column ZZLL_HU_YXJBQK.ylkm
  is '科目';
comment on column ZZLL_HU_YXJBQK.yxzzdw
  is '组织单位';
comment on column ZZLL_HU_YXJBQK.yxsj
  is '时间';
comment on column ZZLL_HU_YXJBQK.yxdd
  is '地点';
comment on column ZZLL_HU_YXJBQK.sdfsqk
  is '发射情况';
comment on column ZZLL_HU_YXJBQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HU_YXJBQK.sjcjry
  is '数据采集人员';
comment on column ZZLL_HU_YXJBQK.yxcjd
  is '成绩';
comment on column ZZLL_HU_YXJBQK.zzbz
  is '编组';
comment on column ZZLL_HU_YXJBQK.zdblx
  is '部类型';
comment on column ZZLL_HU_YXJBQK.ryzbcxl
  is '人员、装备参训率';
comment on column ZZLL_HU_YXJBQK.zhycjqk
  is '参加情况';
comment on column ZZLL_HU_YXJBQK.djmblx
  is '打击目标类型';
alter table ZZLL_HU_YXJBQK
  add constraint PK_ZZLL_HU_YXJBQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_HU_YXJBQK
  add constraint FK_ZZLL_HU_YXJBQK_YXCJD00 foreign key (YXCJD)
  references ZZBZ_S_YL_YXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_HU_YZHQK
prompt ============================
prompt
create table ZZLL_HU_YZHQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  cjpddw  VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200),
  xldd    VARCHAR2(100),
  xlkm    VARCHAR2(100),
  zyxlnr  VARCHAR2(4000),
  xlsj    VARCHAR2(50),
  xlcj    VARCHAR2(50),
  ryzbcxl VARCHAR2(400)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HU_YZHQK
  is '营综合情况';
comment on column ZZLL_HU_YZHQK.jlbm
  is '记录编码';
comment on column ZZLL_HU_YZHQK.bdnm
  is '内码';
comment on column ZZLL_HU_YZHQK.cjpddw
  is '成绩评定单位';
comment on column ZZLL_HU_YZHQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HU_YZHQK.sjcjry
  is '数据采集人员';
comment on column ZZLL_HU_YZHQK.xldd
  is '地点';
comment on column ZZLL_HU_YZHQK.xlkm
  is '科目';
comment on column ZZLL_HU_YZHQK.zyxlnr
  is '主要内容';
comment on column ZZLL_HU_YZHQK.xlsj
  is '时间';
comment on column ZZLL_HU_YZHQK.xlcj
  is '成绩';
comment on column ZZLL_HU_YZHQK.ryzbcxl
  is '人员、装备参训率';
alter table ZZLL_HU_YZHQK
  add constraint PK_ZZLL_HU_YZHQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_HU_YZHQK
  add constraint FK_ZZLL_HU_YZHQK_XLCJ00 foreign key (XLCJ)
  references ZZBZ_S_YL_YXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_HU_ZHYQK
prompt ============================
prompt
create table ZZLL_HU_ZHYQK
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(24),
  xm       VARCHAR2(50),
  ndxlcj   VARCHAR2(50),
  pddw     VARCHAR2(100),
  cjdxyxjl VARCHAR2(4000),
  sjcjsj   DATE,
  sjcjry   VARCHAR2(200),
  pdrqv    VARCHAR2(50),
  lzyspddj VARCHAR2(500),
  zhyzw    VARCHAR2(50)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_HU_ZHYQK
  is '旅、营情况';
comment on column ZZLL_HU_ZHYQK.jlbm
  is '记录编码';
comment on column ZZLL_HU_ZHYQK.bdnm
  is '内码';
comment on column ZZLL_HU_ZHYQK.xm
  is '姓名';
comment on column ZZLL_HU_ZHYQK.ndxlcj
  is '年度成绩';
comment on column ZZLL_HU_ZHYQK.pddw
  is '评定单位';
comment on column ZZLL_HU_ZHYQK.cjdxyxjl
  is '参加大项经历';
comment on column ZZLL_HU_ZHYQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_HU_ZHYQK.sjcjry
  is '数据采集人员';
comment on column ZZLL_HU_ZHYQK.pdrqv
  is '评定日期';
comment on column ZZLL_HU_ZHYQK.lzyspddj
  is '“两长一手”评定等级';
comment on column ZZLL_HU_ZHYQK.zhyzw
  is '职务';
alter table ZZLL_HU_ZHYQK
  add constraint PK_ZZLL_HU_ZHYQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_HU_ZHYQK
  add constraint FK_ZZLL_HU_ZHYQK_NDXLCJ00 foreign key (NDXLCJ)
  references ZZBZ_S_YL_YXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_KJ_BDXLQK
prompt =============================
prompt
create table ZZLL_KJ_BDXLQK
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  xlsj   VARCHAR2(50),
  xlkm   VARCHAR2(200),
  fxsj   VARCHAR2(50),
  rycxl  VARCHAR2(50),
  fjcxl  VARCHAR2(200),
  kmjcpd VARCHAR2(50),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_KJ_BDXLQK
  is '情况';
comment on column ZZLL_KJ_BDXLQK.jlbm
  is '记录编码';
comment on column ZZLL_KJ_BDXLQK.bdnm
  is '内码';
comment on column ZZLL_KJ_BDXLQK.xlsj
  is '时间';
comment on column ZZLL_KJ_BDXLQK.xlkm
  is '科目';
comment on column ZZLL_KJ_BDXLQK.fxsj
  is '飞行时间';
comment on column ZZLL_KJ_BDXLQK.rycxl
  is '人员参训率';
comment on column ZZLL_KJ_BDXLQK.fjcxl
  is '飞机参训率';
comment on column ZZLL_KJ_BDXLQK.kmjcpd
  is '科目架次评定';
comment on column ZZLL_KJ_BDXLQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_KJ_BDXLQK.sjcjry
  is '数据采集人员';
alter table ZZLL_KJ_BDXLQK
  add constraint PK_ZZLL_KJ_BDXLQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_KJ_BDXLQK
  add constraint FK_ZZLL_KJ_BDXLQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;

prompt
prompt Creating table ZZLL_KJ_BDYXXLQK
prompt ===============================
prompt
create table ZZLL_KJ_BDYXXLQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  yxdh    VARCHAR2(100),
  yxsj    VARCHAR2(50),
  yxdd    VARCHAR2(200),
  yxkt    VARCHAR2(100),
  rycyl   VARCHAR2(40),
  zbcyl   VARCHAR2(200),
  zhycjqk VARCHAR2(200),
  dwyxcj  VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200),
  cyddqk  VARCHAR2(200),
  dymzgl  VARCHAR2(200),
  yxky    VARCHAR2(2000),
  cybbqk  VARCHAR2(50),
  dymzjdv VARCHAR2(200),
  bsjc    VARCHAR2(50),
  cyfjqk  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_KJ_BDYXXLQK
  is '参加情况';
comment on column ZZLL_KJ_BDYXXLQK.jlbm
  is '记录编码';
comment on column ZZLL_KJ_BDYXXLQK.bdnm
  is '内码';
comment on column ZZLL_KJ_BDYXXLQK.yxdh
  is '代号';
comment on column ZZLL_KJ_BDYXXLQK.yxsj
  is '时间';
comment on column ZZLL_KJ_BDYXXLQK.yxdd
  is '地点';
comment on column ZZLL_KJ_BDYXXLQK.yxkt
  is '课题';
comment on column ZZLL_KJ_BDYXXLQK.rycyl
  is '人员参演率';
comment on column ZZLL_KJ_BDYXXLQK.zbcyl
  is '装备参演率';
comment on column ZZLL_KJ_BDYXXLQK.zhycjqk
  is '参加情况';
comment on column ZZLL_KJ_BDYXXLQK.dwyxcj
  is '单位成绩';
comment on column ZZLL_KJ_BDYXXLQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_KJ_BDYXXLQK.sjcjry
  is '数据采集人员';
comment on column ZZLL_KJ_BDYXXLQK.cyddqk
  is '参演情况';
comment on column ZZLL_KJ_BDYXXLQK.dymzgl
  is '命中概率';
comment on column ZZLL_KJ_BDYXXLQK.yxky
  is '空域';
comment on column ZZLL_KJ_BDYXXLQK.cybbqk
  is '参演靶标情况';
comment on column ZZLL_KJ_BDYXXLQK.dymzjdv
  is '命中精度';
comment on column ZZLL_KJ_BDYXXLQK.bsjc
  is '部署机场';
comment on column ZZLL_KJ_BDYXXLQK.cyfjqk
  is '参演飞机情况';
alter table ZZLL_KJ_BDYXXLQK
  add constraint PK_ZZLL_KJ_BDYXXLQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_KJ_BDYXXLQK
  add constraint FK_ZZLL_KJ_BDYXXLQK_DWYXC00 foreign key (DWYXCJ)
  references ZZBZ_S_YL_KHDJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_KJ_FXYXLQK
prompt ==============================
prompt
create table ZZLL_KJ_FXYXLQK
(
  jlbm    VARCHAR2(40) not null,
  yxqknm  VARCHAR2(50),
  cyfxyxm VARCHAR2(50),
  fxydj   VARCHAR2(200),
  fxyyxcj VARCHAR2(50),
  wjm     VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_KJ_FXYXLQK
  is '情况';
comment on column ZZLL_KJ_FXYXLQK.jlbm
  is '记录编码';
comment on column ZZLL_KJ_FXYXLQK.yxqknm
  is '情况内码';
comment on column ZZLL_KJ_FXYXLQK.cyfxyxm
  is '参演姓名';
comment on column ZZLL_KJ_FXYXLQK.fxydj
  is '参演等级';
comment on column ZZLL_KJ_FXYXLQK.fxyyxcj
  is '成绩';
comment on column ZZLL_KJ_FXYXLQK.wjm
  is '文件名（不启用）';
comment on column ZZLL_KJ_FXYXLQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_KJ_FXYXLQK.sjcjry
  is '数据采集人员';
alter table ZZLL_KJ_FXYXLQK
  add constraint PK_ZZLL_KJ_FXYXLQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_KJ_FXYXLQK
  add constraint FK_ZZLL_KJ_FXYXLQK_FXYDJ00 foreign key (FXYDJ)
  references ZZBZ_S_TY_FXJSDJ (FXJSNM) on delete set null;
alter table ZZLL_KJ_FXYXLQK
  add constraint FK_ZZLL_KJ_FXYXLQK_FXYYXC00 foreign key (FXYYXCJ)
  references ZZBZ_S_YL_FXXLCJ (NM) on delete set null;
alter table ZZLL_KJ_FXYXLQK
  add constraint FK_ZZLL_KJ_FXYXLQK_YXQKNM foreign key (YXQKNM)
  references ZZLL_KJ_BDYXXLQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_KJ_KMJCPD
prompt =============================
prompt
create table ZZLL_KJ_KMJCPD
(
  jlbm   VARCHAR2(40) not null,
  xlqknm VARCHAR2(50),
  fxyxm  VARCHAR2(50),
  km     VARCHAR2(100),
  jc     VARCHAR2(50),
  cjpd   VARCHAR2(50),
  wjm    VARCHAR2(50),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_KJ_KMJCPD
  is '科目架次评定';
comment on column ZZLL_KJ_KMJCPD.jlbm
  is '记录编码';
comment on column ZZLL_KJ_KMJCPD.xlqknm
  is '情况内码';
comment on column ZZLL_KJ_KMJCPD.fxyxm
  is '姓名';
comment on column ZZLL_KJ_KMJCPD.km
  is '科目';
comment on column ZZLL_KJ_KMJCPD.jc
  is '架次';
comment on column ZZLL_KJ_KMJCPD.cjpd
  is '成绩评定';
comment on column ZZLL_KJ_KMJCPD.wjm
  is '文件名（不启用）';
comment on column ZZLL_KJ_KMJCPD.sjcjsj
  is '数据采集时间';
comment on column ZZLL_KJ_KMJCPD.sjcjry
  is '数据采集人员';
alter table ZZLL_KJ_KMJCPD
  add constraint PK_ZZLL_KJ_KMJCPD00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_KJ_KMJCPD
  add constraint FK_ZZLL_KJ_KMJCPD_CJPD00 foreign key (CJPD)
  references ZZBZ_S_YL_FXXLCJ (NM) on delete set null;
alter table ZZLL_KJ_KMJCPD
  add constraint FK_ZZLL_KJ_KMJCPD_XLQKNM foreign key (XLQKNM)
  references ZZLL_KJ_BDXLQK (JLBM) on delete cascade;

prompt
prompt Creating table ZZLL_LJ_LHZXXLQK
prompt ===============================
prompt
create table ZZLL_LJ_LHZXXLQK
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  xlkm    VARCHAR2(100),
  cxbl    VARCHAR2(200),
  cxzb    VARCHAR2(4000),
  zhycjqk VARCHAR2(500),
  xldd    VARCHAR2(200),
  xlsj    VARCHAR2(50),
  xlcj    VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_LJ_LHZXXLQK
  is '联合情况';
comment on column ZZLL_LJ_LHZXXLQK.jlbm
  is '记录编码';
comment on column ZZLL_LJ_LHZXXLQK.bdnm
  is '内码';
comment on column ZZLL_LJ_LHZXXLQK.xlkm
  is '科目';
comment on column ZZLL_LJ_LHZXXLQK.cxbl
  is '参训兵力';
comment on column ZZLL_LJ_LHZXXLQK.cxzb
  is '参训装备';
comment on column ZZLL_LJ_LHZXXLQK.zhycjqk
  is '参加情况';
comment on column ZZLL_LJ_LHZXXLQK.xldd
  is '地点';
comment on column ZZLL_LJ_LHZXXLQK.xlsj
  is '时间';
comment on column ZZLL_LJ_LHZXXLQK.xlcj
  is '成绩';
comment on column ZZLL_LJ_LHZXXLQK.sjcjsj
  is '数据采集时间';
comment on column ZZLL_LJ_LHZXXLQK.sjcjry
  is '数据采集人员';
alter table ZZLL_LJ_LHZXXLQK
  add constraint PK_ZZLL_LJ_LHZXXLQK00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_LJ_LHZXXLQK
  add constraint FK_ZZLL_LJ_LHZXXLQK_BDNM foreign key (BDNM)
  references TXZH_TS_BDDWML (NM) on delete cascade;
alter table ZZLL_LJ_LHZXXLQK
  add constraint FK_ZZLL_LJ_LHZXXLQK_XLCJ00 foreign key (XLCJ)
  references ZZBZ_S_YL_YXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_LJ_SLXLQK_ND
prompt ================================
prompt
create table ZZLL_LJ_SLXLQK_ND
(
  jlbm    VARCHAR2(40) not null,
  bdnm    VARCHAR2(24),
  yxdh    VARCHAR2(100),
  yxkt    VARCHAR2(100),
  yxsj    VARCHAR2(50),
  yxdd    VARCHAR2(200),
  yxzzdw  VARCHAR2(100),
  yxzdbz  VARCHAR2(4000),
  zyylnr  VARCHAR2(4000),
  ryzbcxl VARCHAR2(400),
  sdsjqk  VARCHAR2(1000),
  zhycjqk VARCHAR2(100),
  yxcj    VARCHAR2(50),
  sjcjsj  DATE,
  sjcjry  VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_LJ_SLXLQK_ND
  is '年度情况';
comment on column ZZLL_LJ_SLXLQK_ND.jlbm
  is '记录编码';
comment on column ZZLL_LJ_SLXLQK_ND.bdnm
  is '内码';
comment on column ZZLL_LJ_SLXLQK_ND.yxdh
  is '代号';
comment on column ZZLL_LJ_SLXLQK_ND.yxkt
  is '课题';
comment on column ZZLL_LJ_SLXLQK_ND.yxsj
  is '时间';
comment on column ZZLL_LJ_SLXLQK_ND.yxdd
  is '地点';
comment on column ZZLL_LJ_SLXLQK_ND.yxzzdw
  is '组织单位';
comment on column ZZLL_LJ_SLXLQK_ND.yxzdbz
  is '编组';
comment on column ZZLL_LJ_SLXLQK_ND.zyylnr
  is '主要内容';
comment on column ZZLL_LJ_SLXLQK_ND.ryzbcxl
  is '人员、装备参训率';
comment on column ZZLL_LJ_SLXLQK_ND.sdsjqk
  is '情况';
comment on column ZZLL_LJ_SLXLQK_ND.zhycjqk
  is '旅（师、团）参加情况';
comment on column ZZLL_LJ_SLXLQK_ND.yxcj
  is '成绩';
comment on column ZZLL_LJ_SLXLQK_ND.sjcjsj
  is '数据采集时间';
comment on column ZZLL_LJ_SLXLQK_ND.sjcjry
  is '数据采集人员';
alter table ZZLL_LJ_SLXLQK_ND
  add constraint PK_ZZLL_LJ_SLXLQK_ND00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_LJ_SLXLQK_ND
  add constraint FK_ZZLL_LJ_SLXLQK_ND_YXCJ00 foreign key (YXCJ)
  references ZZBZ_S_YL_YXCJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_LJ_SLZHYXL
prompt ==============================
prompt
create table ZZLL_LJ_SLZHYXL
(
  jlbm   VARCHAR2(40) not null,
  bdnm   VARCHAR2(24),
  zhyxm  VARCHAR2(100),
  zhyzw  VARCHAR2(50),
  xldjnm VARCHAR2(50),
  pdsj   DATE,
  pddw   VARCHAR2(100),
  nlkpkt VARCHAR2(200),
  sjcjsj DATE,
  sjcjry VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_LJ_SLZHYXL
  is '旅（师、团）等级情况';
comment on column ZZLL_LJ_SLZHYXL.jlbm
  is '记录编码';
comment on column ZZLL_LJ_SLZHYXL.bdnm
  is '内码';
comment on column ZZLL_LJ_SLZHYXL.zhyxm
  is '姓名';
comment on column ZZLL_LJ_SLZHYXL.zhyzw
  is '职务';
comment on column ZZLL_LJ_SLZHYXL.xldjnm
  is '等级内码';
comment on column ZZLL_LJ_SLZHYXL.pdsj
  is '评定时间';
comment on column ZZLL_LJ_SLZHYXL.pddw
  is '评定单位';
comment on column ZZLL_LJ_SLZHYXL.nlkpkt
  is '指挥能力考评课题';
comment on column ZZLL_LJ_SLZHYXL.sjcjsj
  is '数据采集时间';
comment on column ZZLL_LJ_SLZHYXL.sjcjry
  is '数据采集人员';
alter table ZZLL_LJ_SLZHYXL
  add constraint PK_ZZLL_LJ_SLZHYXL00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_LJ_SLZHYXL
  add constraint FK_ZZLL_LJ_SLZHYXL_XLDJNM00 foreign key (XLDJNM)
  references ZZBZ_S_YL_LJZHYDJ (NM) on delete set null;

prompt
prompt Creating table ZZLL_YL_DY
prompt =========================
prompt
create table ZZLL_YL_DY
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(24),
  dynm     VARCHAR2(50),
  dymc     VARCHAR2(50),
  dyflnm   VARCHAR2(50),
  dyjldwnm VARCHAR2(50),
  dysl     FLOAT,
  cclxnm   VARCHAR2(50),
  ccckbd   VARCHAR2(50),
  ccdqnm   VARCHAR2(50),
  ccdd     VARCHAR2(50),
  cczt     VARCHAR2(50),
  syzb     VARCHAR2(50),
  bz       VARCHAR2(250),
  sjcjsj   DATE,
  sjcjry   VARCHAR2(200)
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_YL_DY
  is '';
comment on column ZZLL_YL_DY.jlbm
  is '记录编码';
comment on column ZZLL_YL_DY.bdnm
  is '内码';
comment on column ZZLL_YL_DY.dynm
  is '内码';
comment on column ZZLL_YL_DY.dymc
  is '名称（补充）';
comment on column ZZLL_YL_DY.dyflnm
  is '分类内码';
comment on column ZZLL_YL_DY.dyjldwnm
  is '计量单位内码';
comment on column ZZLL_YL_DY.dysl
  is '数量';
comment on column ZZLL_YL_DY.cclxnm
  is '存储类型内码';
comment on column ZZLL_YL_DY.ccckbd
  is '存储仓库/';
comment on column ZZLL_YL_DY.ccdqnm
  is '存储地区内码';
comment on column ZZLL_YL_DY.ccdd
  is '存储地点';
comment on column ZZLL_YL_DY.cczt
  is '存储状态';
comment on column ZZLL_YL_DY.syzb
  is '使用装备';
comment on column ZZLL_YL_DY.bz
  is '备注';
comment on column ZZLL_YL_DY.sjcjsj
  is '数据采集时间';
comment on column ZZLL_YL_DY.sjcjry
  is '数据采集人员';
alter table ZZLL_YL_DY
  add constraint PK_ZZLL_YL_DY00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_CCDQNM00 foreign key (CCDQNM)
  references ZZBZ_S_TY_DM (DMNM) on delete set null;
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_CCLXNM00 foreign key (CCLXNM)
  references ZZBZ_S_YL_CCLX (NM) on delete set null;
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_DYFLNM00 foreign key (DYFLNM)
  references ZZBZ_S_YL_JDDYLB (NM) on delete set null;
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_DYJLDWNM00 foreign key (DYJLDWNM)
  references ZZBZ_S_YL_DYJLDW (NM) on delete set null;
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_DYNM00 foreign key (DYNM)
  references ZZBZ_S_YL_JDDY (NM) on delete set null;
alter table ZZLL_YL_DY
  add constraint FK_ZZLL_YL_DY_SYZB00 foreign key (SYZB)
  references ZZBZ_S_TY_ZB (ZBNM) on delete set null;

prompt
prompt Creating table ZZLL_YL_WZ
prompt =========================
prompt
create table ZZLL_YL_WZ
(
  jlbm     VARCHAR2(40) not null,
  bdnm     VARCHAR2(24),
  wznm     VARCHAR2(50),
  wzmc     VARCHAR2(50),
  wzflnm   VARCHAR2(50),
  wzjldwnm VARCHAR2(50),
  wzsl     FLOAT,
  cclxnm   VARCHAR2(50),
  ccckbd   VARCHAR2(50),
  ccdqnm   VARCHAR2(50),
  ccdd     VARCHAR2(50),
  cczt     VARCHAR2(50),
  bznl     VARCHAR2(50),
  bz       VARCHAR2(250),
  sjcjry   VARCHAR2(200),
  sjcjsj   DATE
)
tablespace TZZZSJ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ZZLL_YL_WZ
  is '物资';
comment on column ZZLL_YL_WZ.jlbm
  is '记录编码';
comment on column ZZLL_YL_WZ.bdnm
  is '内码';
comment on column ZZLL_YL_WZ.wznm
  is '物资内码';
comment on column ZZLL_YL_WZ.wzmc
  is '物资名称（补充）';
comment on column ZZLL_YL_WZ.wzflnm
  is '物资分类内码';
comment on column ZZLL_YL_WZ.wzjldwnm
  is '物资计量单位内码';
comment on column ZZLL_YL_WZ.wzsl
  is '物资数量';
comment on column ZZLL_YL_WZ.cclxnm
  is '存储类型内码';
comment on column ZZLL_YL_WZ.ccckbd
  is '存储仓库/';
comment on column ZZLL_YL_WZ.ccdqnm
  is '存储地区内码';
comment on column ZZLL_YL_WZ.ccdd
  is '存储地点';
comment on column ZZLL_YL_WZ.cczt
  is '存储状态';
comment on column ZZLL_YL_WZ.bznl
  is '保障能力';
comment on column ZZLL_YL_WZ.bz
  is '备注';
comment on column ZZLL_YL_WZ.sjcjry
  is '数据采集人员';
comment on column ZZLL_YL_WZ.sjcjsj
  is '数据采集时间';
alter table ZZLL_YL_WZ
  add constraint PK_ZZLL_YL_WZ00 primary key (JLBM)
  using index 
  tablespace TZZZSJ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table ZZLL_YL_WZ
  add constraint FK_ZZLL_YL_WZ_CCDQNM00 foreign key (CCDQNM)
  references ZZBZ_S_TY_DM (DMNM) on delete set null;
alter table ZZLL_YL_WZ
  add constraint FK_ZZLL_YL_WZ_CCLXNM00 foreign key (CCLXNM)
  references ZZBZ_S_YL_CCLX (NM) on delete set null;
alter table ZZLL_YL_WZ
  add constraint FK_ZZLL_YL_WZ_WZFLNM00 foreign key (WZFLNM)
  references ZZBZ_S_YL_ZCWZLB (NM) on delete set null;
alter table ZZLL_YL_WZ
  add constraint FK_ZZLL_YL_WZ_WZJLDWNM00 foreign key (WZJLDWNM)
  references ZZBZ_S_YL_WZJLDW (NM) on delete set null;
alter table ZZLL_YL_WZ
  add constraint FK_ZZLL_YL_WZ_WZNM00 foreign key (WZNM)
  references ZZBZ_S_YL_ZCWZ (NM) on delete set null;

prompt
prompt Creating sequence LOGID
prompt =======================
prompt
create sequence LOGID
minvalue 1
maxvalue 9999999999999999999999999999
start with 178541
increment by 1
cache 20;

prompt
prompt Creating sequence SEQBDNM
prompt =========================
prompt
create sequence SEQBDNM
minvalue 1
maxvalue 9999999999999999999999999999
start with 100120
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_BZFF
prompt ==========================
prompt
create sequence SEQ_BZFF
minvalue 1
maxvalue 9999999999999999999999
start with 1201
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_DCR
prompt =========================
prompt
create sequence SEQ_DCR
minvalue 1
maxvalue 999999999
start with 34620
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DCR_ERR_DATA
prompt ==================================
prompt
create sequence SEQ_DCR_ERR_DATA
minvalue 1
maxvalue 999999999
start with 1700
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_DCR_TABLE_PROGRESS
prompt ========================================
prompt
create sequence SEQ_DCR_TABLE_PROGRESS
minvalue 1
maxvalue 999999999
start with 12960
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_JLBM
prompt ==========================
prompt
create sequence SEQ_JLBM
minvalue 1
maxvalue 999999999999999999999999999
start with 1100000001
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_SJRKQK_DETAIL
prompt ===================================
prompt
create sequence SEQ_SJRKQK_DETAIL
minvalue 1
maxvalue 9999999999999999999999999999
start with 1721
increment by 1
cache 20;

prompt
prompt Creating sequence SYS_ATTACHMENT_SEQ
prompt ====================================
prompt
create sequence SYS_ATTACHMENT_SEQ
minvalue 1
maxvalue 999999999
start with 1020
increment by 1
cache 20;

prompt
prompt Creating view TXZY_V_TABLE_FIELD
prompt ================================
prompt
create or replace force view txzy_v_table_field as
(
select t_b.bbs,
       t_b.bmc,
       t_b.bsm,
       t_zd.zdmc,
       t_zd.zdsm,
       t_zd.sfzj,
       t_zd.gsgf,
       t_zd.zdid,
       t_zd.zdbs,
       t_zd.zdlx
  from TXZY_M_BZDGX t_gx, TXZY_M_B t_b, TXZY_M_ZD t_zd
 where t_gx.bccm = t_b.bccm(+)
   and t_gx.zdid = t_zd.zdid(+));

prompt
prompt Creating view V_BD3
prompt ===================
prompt
create or replace force view v_bd3 as
select rownum as id ,bdnm,bdjbnm,jznm,bznm
from zzll_bdqk
where bdjbnm > '10';

prompt
prompt Creating trigger TR_TXZY_TS_ZBGC_SJCJDWXH
prompt =========================================
prompt
CREATE OR REPLACE TRIGGER tr_TXZY_TS_ZBGC_SJCJDWXH
AFTER UPDATE OR DELETE  ON TXZH_TS_BDDWML
For each row
DECLARE
  v_count NUMBER;
  v_sal NUMBER(6,2);
BEGIN
  IF UPDATING THEN
     update txzy_ts_zbgc set sjcjdwxh=:new.xh where sjcjdwnm=:new.nm;
  ELSE
     update txzy_ts_zbgc set sjcjdwxh=null where sjcjdwnm=:new.nm;
  END IF;
END tr_TXZY_TS_ZBGC_SJCJDWXH;
/


prompt Done
spool off
set define on
