--------------------------------------------------------
--  파일이 생성됨 - 금요일-12월-12-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_SSH_BUILD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SSH_CHARACTER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_SSH_CHARACTER_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SSH_MEMBER_NO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_SSH_MEMBER_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SSH_REPLY_NO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_SSH_REPLY_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TBL_BOARD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_TBL_BOARD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_T_BOARD_NO
--------------------------------------------------------

   CREATE SEQUENCE  "HR"."SEQ_T_BOARD_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table SSH_BUILD
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_BUILD" 
   (	"NO" NUMBER(7,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"USER_NO" NUMBER(7,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"REG_DATE" DATE DEFAULT sysdate, 
	"VIEW_CNT" NUMBER(5,0) DEFAULT 0, 
	"RECOMMEND_CNT" NUMBER(5,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_BUILD_DETAIL
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_BUILD_DETAIL" 
   (	"BUILD_NO" NUMBER(7,0), 
	"TYPE" VARCHAR2(100 BYTE), 
	"CHAR_NO" NUMBER(7,0), 
	"POT_NO" NUMBER(7,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_BUILD_RECOMMEND
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_BUILD_RECOMMEND" 
   (	"BUILD_NO" NUMBER(7,0), 
	"USER_NO" NUMBER(7,0), 
	"REG_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_CHARACTER
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_CHARACTER" 
   (	"NO" NUMBER(7,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"IMG_PATH" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_MEMBER
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_MEMBER" 
   (	"NO" NUMBER(7,0), 
	"ID" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"PHONE_NUMBER" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"REG_DATE" DATE DEFAULT sysdate, 
	"TYPE" VARCHAR2(10 BYTE) DEFAULT 'USER'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_POTENTIAL
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_POTENTIAL" 
   (	"NO" NUMBER(7,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"CHAR_NO" NUMBER(7,0), 
	"RANK" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE), 
	"IMG_PATH" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SSH_REPLY
--------------------------------------------------------

  CREATE TABLE "HR"."SSH_REPLY" 
   (	"NO" NUMBER(7,0), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"USER_NO" NUMBER(7,0), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"REG_DATE" DATE DEFAULT sysdate, 
	"BUILD_NO" NUMBER(7,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View EMP_DETAILS_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "HR"."EMP_DETAILS_VIEW" ("EMPLOYEE_ID", "JOB_ID", "MANAGER_ID", "DEPARTMENT_ID", "LOCATION_ID", "COUNTRY_ID", "FIRST_NAME", "LAST_NAME", "SALARY", "COMMISSION_PCT", "DEPARTMENT_NAME", "JOB_TITLE", "CITY", "STATE_PROVINCE", "COUNTRY_NAME", "REGION_NAME") AS 
  SELECT
  e.employee_id,
  e.job_id,
  e.manager_id,
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  employees e,
  departments d,
  jobs j,
  locations l,
  countries c,
  regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id
WITH READ ONLY
;
REM INSERTING into HR.SSH_BUILD
SET DEFINE OFF;
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (4,'테스트 04',22,'테스트02',null,'테스트 04',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (7,'테스트 07',22,'테스트02',null,'테스트 07',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (10,'테스트 10',null,'테스트 03(비회원)','vmfhwprxmdyd!','테스트 10',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (11,'테스트 11',23,'테스트 03',null,'테스트 11',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (6,'테스트 06',22,'테스트02',null,'테스트 06',to_date('25/12/12','RR/MM/DD'),0,12);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (9,'테스트 09',null,'테스트 03(비회원)','vmfhwprxmdyd!','테스트 09',to_date('25/12/12','RR/MM/DD'),15,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (13,'테스트',null,'테스트(비회원)','xptmxm','테스트',to_date('25/12/12','RR/MM/DD'),4,1);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (14,'test',null,'테스트01',null,'test',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (3,'테스트 03',null,'테스트01',null,'테스트 03',to_date('25/12/12','RR/MM/DD'),2,18);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (5,'테스트 05',22,'테스트02',null,'테스트 05',to_date('25/12/12','RR/MM/DD'),0,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (8,'테스트 08',null,'테스트 03(비회원)','vmfhwprxmdyd!','테스트 08',to_date('25/12/12','RR/MM/DD'),11,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (12,'테스트 12',23,'테스트 03',null,'테스트 12',to_date('25/12/12','RR/MM/DD'),10,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (1,'테스트 01',null,'테스트01',null,'테스트 01',to_date('25/12/12','RR/MM/DD'),63,0);
Insert into HR.SSH_BUILD (NO,TITLE,USER_NO,NICKNAME,PASSWORD,CONTENT,REG_DATE,VIEW_CNT,RECOMMEND_CNT) values (2,'테스트 02',null,'테스트01',null,'테스트 02',to_date('25/12/12','RR/MM/DD'),0,0);
REM INSERTING into HR.SSH_BUILD_DETAIL
SET DEFINE OFF;
REM INSERTING into HR.SSH_BUILD_RECOMMEND
SET DEFINE OFF;
REM INSERTING into HR.SSH_CHARACTER
SET DEFINE OFF;
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (103,'코하쿠','/resources/images/character/103.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (107,'틸리아','/resources/images/character/107.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (108,'카시미라','/resources/images/character/108.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (111,'아야메','/resources/images/character/111.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (112,'세이나','/resources/images/character/112.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (113,'시먀오','/resources/images/character/113.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (116,'레이센','/resources/images/character/116.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (117,'징린','/resources/images/character/117.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (118,'크루니스','/resources/images/character/118.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (119,'나노하','/resources/images/character/119.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (120,'카나체','/resources/images/character/120.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (123,'안즈','/resources/images/character/123.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (125,'프리지아','/resources/images/character/125.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (126,'플로라','/resources/images/character/126.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (127,'테레사','/resources/images/character/127.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (132,'미네르바','/resources/images/character/132.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (133,'나츠카','/resources/images/character/133.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (134,'후유카','/resources/images/character/134.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (135,'미스티','/resources/images/character/135.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (141,'치시아','/resources/images/character/141.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (142,'코제트','/resources/images/character/142.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (144,'치토세','/resources/images/character/144.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (147,'캐러멜','/resources/images/character/147.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (149,'그레이','/resources/images/character/149.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (150,'라루','/resources/images/character/150.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (155,'시아','/resources/images/character/155.png');
Insert into HR.SSH_CHARACTER (NO,NAME,IMG_PATH) values (156,'나즈나','/resources/images/character/156.png');
REM INSERTING into HR.SSH_MEMBER
SET DEFINE OFF;
Insert into HR.SSH_MEMBER (NO,ID,PASSWORD,NICKNAME,PHONE_NUMBER,EMAIL,REG_DATE,TYPE) values (24,'testadmin01','vmfhwprxmdyd!','관리자01',null,null,to_date('25/12/12','RR/MM/DD'),'ADMIN');
Insert into HR.SSH_MEMBER (NO,ID,PASSWORD,NICKNAME,PHONE_NUMBER,EMAIL,REG_DATE,TYPE) values (3,'test2','test2','test2','test2','test2',to_date('25/12/03','RR/MM/DD'),'ADMIN');
Insert into HR.SSH_MEMBER (NO,ID,PASSWORD,NICKNAME,PHONE_NUMBER,EMAIL,REG_DATE,TYPE) values (25,'test01','test01','테스트',null,null,to_date('25/12/12','RR/MM/DD'),'USER');
Insert into HR.SSH_MEMBER (NO,ID,PASSWORD,NICKNAME,PHONE_NUMBER,EMAIL,REG_DATE,TYPE) values (22,'testbuild02','vmfhwprxmdyd!','테스트02',null,null,to_date('25/12/12','RR/MM/DD'),'USER');
Insert into HR.SSH_MEMBER (NO,ID,PASSWORD,NICKNAME,PHONE_NUMBER,EMAIL,REG_DATE,TYPE) values (23,'testbuild03','vmfhwprxmdyd!','테스트 03',null,null,to_date('25/12/12','RR/MM/DD'),'USER');
REM INSERTING into HR.SSH_POTENTIAL
SET DEFINE OFF;
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'구조 분석',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'구조 파괴',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'구조 파괴',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'나의 존재',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'난제 공략',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'내면의 생각',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'단일 과목 학습 강화',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'바람의 눈 확장',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'반격 교습',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'변화무쌍',120,'PINK','MAIN','/resources/images/potential/icons/120/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'별빛의 가호',120,'PINK','MAIN','/resources/images/potential/icons/120/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'선풍 가속',120,'RAINBOW','ASSIST','/resources/images/potential/icons/120/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'순풍 영역',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'순풍 영역',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'약점 분석',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'에메랄드 쉐도우 스텝',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'우세 영역 활용',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'전 과목 긍정적 평가',120,'RAINBOW','MAIN','/resources/images/potential/icons/120/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'정방향 적분',120,'PINK','MAIN','/resources/images/potential/icons/120/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'지혜로운 조언자',120,'RAINBOW','MAIN','/resources/images/potential/icons/120/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'질적 변화 결론 전수',120,'PINK','ASSIST','/resources/images/potential/icons/120/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'추리의 결론',120,'RAINBOW','ASSIST','/resources/images/potential/icons/120/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'폭풍 제압',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'폭풍 제압',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'피어남의 미학 전수',120,'PINK','ASSIST','/resources/images/potential/icons/120/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'홀로 빛나는 별',120,'RAINBOW','MAIN','/resources/images/potential/icons/120/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'회전 질주',120,'PINK','MAIN','/resources/images/potential/icons/120/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'효율적 연구 전수',120,'PINK','ASSIST','/resources/images/potential/icons/120/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가속 강화',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'가속 돌파',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강풍의 결박',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'견고한 바람 방벽',123,'PINK','ASSIST','/resources/images/potential/icons/123/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'눈에 띄는 존재',123,'RAINBOW','MAIN','/resources/images/potential/icons/123/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'따스한 바람의 가호',123,'PINK','ASSIST','/resources/images/potential/icons/123/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'바람 장벽',123,'RAINBOW','ASSIST','/resources/images/potential/icons/123/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'바람을 거스르는 기세',123,'RAINBOW','MAIN','/resources/images/potential/icons/123/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'바람을 따르는 용기',123,'RAINBOW','MAIN','/resources/images/potential/icons/123/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'바람을 타는 소용돌이',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'바람의 경쾌한 발길',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'바람의 길',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'바람의 숨결',123,'PINK','MAIN','/resources/images/potential/icons/123/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'보스의 포효',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'보스의 포효',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'부드러운 바람',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'빛의 소용돌이',123,'PINK','MAIN','/resources/images/potential/icons/123/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'산맥의 흡입',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'산맥의 흡입',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'순풍의 항해',123,'PINK','ASSIST','/resources/images/potential/icons/123/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'숲속 공주의 은총',123,'RAINBOW','ASSIST','/resources/images/potential/icons/123/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'승리의 맹공',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'에너지 탐식',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'에너지 탐식',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'역풍의 억제',123,'PINK','ASSIST','/resources/images/potential/icons/123/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'조력의 급류',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파멸의 질풍',123,'RAINBOW','ASSIST','/resources/images/potential/icons/123/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'폭풍 격퇴',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'혼란스러운 흐름',123,'GOLD','ASSIST','/resources/images/potential/icons/123/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'화려한 등장',123,'PINK','MAIN','/resources/images/potential/icons/123/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'흔들리는 풍경종',123,'GOLD','MAIN','/resources/images/potential/icons/123/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흩날리는 돌먼지',123,'PINK','MAIN','/resources/images/potential/icons/123/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'구원의 힘',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'극한 망각',125,'RAINBOW','MAIN','/resources/images/potential/icons/125/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'멈추지 않는 의지',125,'PINK','MAIN','/resources/images/potential/icons/125/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'법의 바다',125,'RAINBOW','ASSIST','/resources/images/potential/icons/125/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'부분 강설',125,'PINK','ASSIST','/resources/images/potential/icons/125/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'빙결 봉인',125,'PINK','ASSIST','/resources/images/potential/icons/125/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'뼈 시리는 추위',125,'RAINBOW','ASSIST','/resources/images/potential/icons/125/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'서리 결계',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'서리의 경고',125,'PINK','ASSIST','/resources/images/potential/icons/125/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'서리의 참격',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'서리의 참격',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'수호의 의지',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'승리의 맹공',125,'RAINBOW','MAIN','/resources/images/potential/icons/125/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'시간 역행',125,'RAINBOW','ASSIST','/resources/images/potential/icons/125/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'신속한 심판',125,'PINK','MAIN','/resources/images/potential/icons/125/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'신앙의 가호',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'얼음 안개의 장막',125,'PINK','MAIN','/resources/images/potential/icons/125/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'얼음의 선물',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'얼음의 소용돌이',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'얼음의 소용돌이',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'강해지는 리듬',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'공명의 탄흔',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'과열된 불꽃',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'과열된 불꽃',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'뜨거운 방아쇠',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'뜨거운 춤사위',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'민첩한 캣스텝',103,'RAINBOW','ASSIST','/resources/images/potential/icons/103/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'산화의 춤',103,'PINK','ASSIST','/resources/images/potential/icons/103/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'섬세한 강음',103,'RAINBOW','MAIN','/resources/images/potential/icons/103/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'성대한 울림',103,'PINK','MAIN','/resources/images/potential/icons/103/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'압도적인 화력',103,'PINK','MAIN','/resources/images/potential/icons/103/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'압력 증폭',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'약점 조준',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'열공의 불씨',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'열기의 협력',103,'RAINBOW','ASSIST','/resources/images/potential/icons/103/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'열정의 리듬',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'열화의 춤사위',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'영혼 추적 불꽃',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'영혼 추적 불꽃',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'웅장한 피날레',103,'RAINBOW','MAIN','/resources/images/potential/icons/103/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'전율의 엔딩곡',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'정밀 온도 제어',103,'PINK','MAIN','/resources/images/potential/icons/103/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'총알 세례',103,'PINK','MAIN','/resources/images/potential/icons/103/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'총열의 잔열',103,'RAINBOW','ASSIST','/resources/images/potential/icons/103/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'추적의 춤',103,'PINK','ASSIST','/resources/images/potential/icons/103/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'탄도 강화',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'탐욕의 총화',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'퇴보의 춤',103,'PINK','ASSIST','/resources/images/potential/icons/103/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'피어오르는 불꽃',103,'GOLD','ASSIST','/resources/images/potential/icons/103/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'피어오르는 불꽃',103,'GOLD','MAIN','/resources/images/potential/icons/103/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'확신의 순간',103,'RAINBOW','MAIN','/resources/images/potential/icons/103/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'환염의 춤',103,'PINK','ASSIST','/resources/images/potential/icons/103/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가드 강화공격',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'가드 강화빛',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강적 제압',107,'RAINBOW','ASSIST','/resources/images/potential/icons/107/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'강한 빛으로 인한 실명',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'견고의 신조',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'공수 일체',107,'PINK','MAIN','/resources/images/potential/icons/107/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'기사의 맹세성스러운 백악 갑옷',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'기사의 맹세성스러운 백악 갑옷',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'기사의 맹세전의 고양',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'기사의 맹세전의 고양',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'기사의 맹세천공의 붕괴',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'기사의 맹세천공의 붕괴',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'기사의 신성한 표식',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'반격 시기',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'반항',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'불굴의 의지',107,'RAINBOW','MAIN','/resources/images/potential/icons/107/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'빛나는 깃발',107,'RAINBOW','ASSIST','/resources/images/potential/icons/107/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'빛의 낙하 반격',107,'RAINBOW','MAIN','/resources/images/potential/icons/107/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'빛의 장막',107,'RAINBOW','MAIN','/resources/images/potential/icons/107/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'삼위일체',107,'PINK','MAIN','/resources/images/potential/icons/107/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'성스러운 빛의 영역',107,'PINK','MAIN','/resources/images/potential/icons/107/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'신성 방패의 반격',107,'PINK','MAIN','/resources/images/potential/icons/107/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'신성 방패의 축복',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'앙주 심상 결정',107,'PINK','ASSIST','/resources/images/potential/icons/107/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'약점 노출',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'완벽한 회전',107,'PINK','ASSIST','/resources/images/potential/icons/107/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'이어지는 스펙트럼',107,'PINK','ASSIST','/resources/images/potential/icons/107/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'자유분방',107,'GOLD','MAIN','/resources/images/potential/icons/107/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'절묘한 릴레이',107,'RAINBOW','ASSIST','/resources/images/potential/icons/107/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'특수 스킬 에너지 증폭',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'호위의 결심',107,'GOLD','ASSIST','/resources/images/potential/icons/107/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'회전의 오의',107,'PINK','ASSIST','/resources/images/potential/icons/107/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'확산의 방아쇠',108,'PINK','MAIN','/resources/images/potential/icons/108/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'화염의 일격',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'화염의 일격',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'화염 탄두',108,'PINK','MAIN','/resources/images/potential/icons/108/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'폭염 인화',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파군의 일격',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'파군의 일격',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'특별 선물',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'탄약 과장전',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'타오르는 탄환의 잔열',108,'RAINBOW','MAIN','/resources/images/potential/icons/108/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'치열한 전투',108,'PINK','ASSIST','/resources/images/potential/icons/108/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'최후의 일격',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'최후의 일격',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'진격의 나팔',108,'RAINBOW','MAIN','/resources/images/potential/icons/108/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'정밀 폭격',108,'PINK','ASSIST','/resources/images/potential/icons/108/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'점진적 열기 강화',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'자초한 화염',108,'RAINBOW','MAIN','/resources/images/potential/icons/108/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'용병의 직감',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'완벽한 전투 태세',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'연쇄 반응',108,'RAINBOW','ASSIST','/resources/images/potential/icons/108/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'에너지 충전 레버',108,'PINK','MAIN','/resources/images/potential/icons/108/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'약점 조준',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'사격의 타이밍',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'사격 격투술',108,'GOLD','MAIN','/resources/images/potential/icons/108/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'분위기 최고조',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'럭키 포화',108,'RAINBOW','ASSIST','/resources/images/potential/icons/108/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'럭키 탄창',108,'PINK','MAIN','/resources/images/potential/icons/108/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'기선제압',108,'PINK','ASSIST','/resources/images/potential/icons/108/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'광역 폭격',108,'PINK','ASSIST','/resources/images/potential/icons/108/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'과열의 임계점',108,'RAINBOW','ASSIST','/resources/images/potential/icons/108/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'결정적 일격',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'강력 폭격',108,'GOLD','ASSIST','/resources/images/potential/icons/108/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'혼란 속의 기회',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'함수 증폭',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'한낮의 추위',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'폭풍 눈보라',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'정확한 결산',111,'RAINBOW','MAIN','/resources/images/potential/icons/111/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'일괄 판매',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'액땜',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'숙녀 본색',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'상황 분석',111,'RAINBOW','MAIN','/resources/images/potential/icons/111/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'상수확산',111,'PINK','ASSIST','/resources/images/potential/icons/111/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'상수충격',111,'PINK','ASSIST','/resources/images/potential/icons/111/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'상수중첩',111,'PINK','ASSIST','/resources/images/potential/icons/111/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'상수인력',111,'PINK','ASSIST','/resources/images/potential/icons/111/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'빙화의 창',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'빙화의 창',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'빙결의 가호',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'빙결의 가호',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'부실 자산',111,'RAINBOW','ASSIST','/resources/images/potential/icons/111/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'벡터파열',111,'PINK','MAIN','/resources/images/potential/icons/111/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'벡터추락',111,'PINK','MAIN','/resources/images/potential/icons/111/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'벡터유도',111,'PINK','MAIN','/resources/images/potential/icons/111/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'벡터고정',111,'PINK','MAIN','/resources/images/potential/icons/111/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'뜻밖의 이득',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'눈폭풍의 행진',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'눈폭풍의 행진',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'낯선 이 접근 금지',111,'RAINBOW','MAIN','/resources/images/potential/icons/111/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'난류의 축적',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'긍정의 신호',111,'RAINBOW','ASSIST','/resources/images/potential/icons/111/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'급격한 침수',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'겨울의 연속',111,'GOLD','ASSIST','/resources/images/potential/icons/111/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'강제 청산',111,'RAINBOW','ASSIST','/resources/images/potential/icons/111/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'2차 동상',111,'GOLD','MAIN','/resources/images/potential/icons/111/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'검기의 위협',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'날 선 회오리',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'떨어지는 석양',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'모래 폭풍',112,'RAINBOW','MAIN','/resources/images/potential/icons/112/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'모래의 붕괴',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'무력화의 환류',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'바람의 집결',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'섬개운',112,'PINK','MAIN','/resources/images/potential/icons/112/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'섬그림자춤',112,'PINK','MAIN','/resources/images/potential/icons/112/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'섬이중주',112,'PINK','MAIN','/resources/images/potential/icons/112/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'섬질풍',112,'PINK','MAIN','/resources/images/potential/icons/112/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'에너지 환류',112,'RAINBOW','ASSIST','/resources/images/potential/icons/112/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'역풍의 보호막',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'연무바람',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'열공신인참',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'열공신인참',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'열공연무참',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'열공연무참',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'열공파무참',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'열공파무참',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'용자의 본능',112,'RAINBOW','MAIN','/resources/images/potential/icons/112/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'질섬삼연',112,'RAINBOW','MAIN','/resources/images/potential/icons/112/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'질주강풍',112,'PINK','ASSIST','/resources/images/potential/icons/112/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'질주돌풍',112,'PINK','ASSIST','/resources/images/potential/icons/112/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'질주폭풍',112,'PINK','ASSIST','/resources/images/potential/icons/112/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'질주풍도',112,'PINK','ASSIST','/resources/images/potential/icons/112/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'질풍연무',112,'RAINBOW','ASSIST','/resources/images/potential/icons/112/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'칼날의 회오리',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'폭풍 회전',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'폭풍의 강탈',112,'GOLD','ASSIST','/resources/images/potential/icons/112/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'폭풍의 분열',112,'RAINBOW','ASSIST','/resources/images/potential/icons/112/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'회오리 베기',112,'GOLD','MAIN','/resources/images/potential/icons/112/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'급류 하강',113,'PINK','MAIN','/resources/images/potential/icons/113/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'낭독',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'낭독',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'만반의 준비',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'문서 지원',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'비서의 업무',113,'RAINBOW','ASSIST','/resources/images/potential/icons/113/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'빗물의 파장',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'산골짜기의 물소리',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'산골짜기의 물소리',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'소나기 직후',113,'RAINBOW','MAIN','/resources/images/potential/icons/113/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'소방 점검',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'수자원 전문가',113,'RAINBOW','ASSIST','/resources/images/potential/icons/113/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'순조로운 진행',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'시냇물의 속삭임',113,'PINK','MAIN','/resources/images/potential/icons/113/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'우기가랑비',113,'PINK','ASSIST','/resources/images/potential/icons/113/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'우기부슬비',113,'PINK','ASSIST','/resources/images/potential/icons/113/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'우기비바람',113,'PINK','ASSIST','/resources/images/potential/icons/113/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'우기장맛비',113,'PINK','ASSIST','/resources/images/potential/icons/113/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'위험 제거',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'은빛 폭포',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'정화의 장대비',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'청류 순환',113,'PINK','MAIN','/resources/images/potential/icons/113/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'청류의 그림자',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'침묵의 비',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'파도',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'파도',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파도의 소용돌이',113,'PINK','MAIN','/resources/images/potential/icons/113/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'파란만장',113,'RAINBOW','MAIN','/resources/images/potential/icons/113/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'하천의 울림',113,'RAINBOW','MAIN','/resources/images/potential/icons/113/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'해일의 폭풍',113,'GOLD','MAIN','/resources/images/potential/icons/113/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'현장 분석',113,'RAINBOW','ASSIST','/resources/images/potential/icons/113/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'효율 증가',113,'GOLD','ASSIST','/resources/images/potential/icons/113/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가시 씨앗',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'가지의 가지',116,'PINK','MAIN','/resources/images/potential/icons/116/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강인한 뿌리와 줄기',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'국면 전환',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'꽃가지 접목',116,'PINK','ASSIST','/resources/images/potential/icons/116/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'꽃과 열매',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'꽃과 열매',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'꽃잎의 춤사위',116,'RAINBOW','ASSIST','/resources/images/potential/icons/116/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'넘치는 생기',116,'RAINBOW','MAIN','/resources/images/potential/icons/116/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'단단한 열매',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'두 번째 만개',116,'PINK','ASSIST','/resources/images/potential/icons/116/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'무성한 가지',116,'PINK','MAIN','/resources/images/potential/icons/116/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'바람에 흔들리는 풀잎',116,'PINK','ASSIST','/resources/images/potential/icons/116/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'봄과 가을',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'봄과 가을',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'부식의 속박',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'뿌린 대로 거두기',116,'PINK','MAIN','/resources/images/potential/icons/116/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'사방이 적군',116,'PINK','MAIN','/resources/images/potential/icons/116/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'슬라이딩 승급',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'쌍둥이 새싹',116,'RAINBOW','MAIN','/resources/images/potential/icons/116/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'씨앗의 팽창',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'야성적인 성장',116,'RAINBOW','MAIN','/resources/images/potential/icons/116/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'얽혀 있는 뿌리',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'완연한 봄',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'완연한 봄',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'의심의 씨앗',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'잘 익은 열매',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'조급한 성장',116,'PINK','ASSIST','/resources/images/potential/icons/116/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'증식하는 가지',116,'GOLD','MAIN','/resources/images/potential/icons/116/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'티끌 모아 태산',116,'RAINBOW','ASSIST','/resources/images/potential/icons/116/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'퍼져나가는 뿌리',116,'GOLD','ASSIST','/resources/images/potential/icons/116/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'폭열 열매',116,'RAINBOW','ASSIST','/resources/images/potential/icons/116/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가게 점장',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'균형의 회로',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'뇌동만수패',117,'PINK','ASSIST','/resources/images/potential/icons/117/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'뇌동삭수패',117,'PINK','ASSIST','/resources/images/potential/icons/117/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'뇌동삼원패',117,'PINK','ASSIST','/resources/images/potential/icons/117/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'뇌동통수패',117,'PINK','ASSIST','/resources/images/potential/icons/117/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'누전 방호',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'멘젠쯔모',117,'RAINBOW','ASSIST','/resources/images/potential/icons/117/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'방전 테스트',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'백수의 왕',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'백수의 왕',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'사교의 달인',117,'RAINBOW','ASSIST','/resources/images/potential/icons/117/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'사신수의 가호',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'사신수의 가호',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'삼색동순',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'삼연각',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'식은 죽 먹기',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'에너지 축적 및 결합',117,'RAINBOW','MAIN','/resources/images/potential/icons/117/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'에너지 축적부력',117,'PINK','MAIN','/resources/images/potential/icons/117/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'에너지 축적연결',117,'PINK','MAIN','/resources/images/potential/icons/117/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'에너지 축적연속',117,'PINK','MAIN','/resources/images/potential/icons/117/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'에너지 축적인력',117,'PINK','MAIN','/resources/images/potential/icons/117/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'열 관리',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'영상개화',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'일기통관',117,'RAINBOW','ASSIST','/resources/images/potential/icons/117/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'전도체 전환',117,'RAINBOW','MAIN','/resources/images/potential/icons/117/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'전력 관리',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'천상의 기린',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'천상의 기린',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'충전 순환',117,'GOLD','MAIN','/resources/images/potential/icons/117/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'탕야오',117,'GOLD','ASSIST','/resources/images/potential/icons/117/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'회수 및 재활용',117,'RAINBOW','MAIN','/resources/images/potential/icons/117/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'광란의 영혼 사냥',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'광란의 영혼 사냥',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'그림자 잠입',118,'PINK','MAIN','/resources/images/potential/icons/118/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'독소 침투',118,'PINK','ASSIST','/resources/images/potential/icons/118/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'마법 이식',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'묘기 수집',118,'RAINBOW','ASSIST','/resources/images/potential/icons/118/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'불법 의사',118,'RAINBOW','ASSIST','/resources/images/potential/icons/118/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'비법의 칼날',118,'RAINBOW','MAIN','/resources/images/potential/icons/118/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'삼라의 각인',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'삼라의 각인',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'신비의 활성제',118,'PINK','ASSIST','/resources/images/potential/icons/118/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'암막의 잔상',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'어둠 낫의 무희',118,'PINK','MAIN','/resources/images/potential/icons/118/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'어둠 속 은신',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'어둠 속 질주',118,'RAINBOW','MAIN','/resources/images/potential/icons/118/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'어둠의 낫 그림자',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'어둠의 낫 그림자',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'어둠의 폭발',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'영혼 그림자 결박',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'영혼 봉인',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'영혼 컬렉션',118,'RAINBOW','ASSIST','/resources/images/potential/icons/118/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'영혼의 구속',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'운명의 표식',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'유혼의 숨결',118,'RAINBOW','MAIN','/resources/images/potential/icons/118/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'의학 연구',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'정밀 수술',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파골난무',118,'PINK','ASSIST','/resources/images/potential/icons/118/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'피의 치유',118,'GOLD','ASSIST','/resources/images/potential/icons/118/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'해골 조각',118,'PINK','ASSIST','/resources/images/potential/icons/118/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'혼을 찢는 본 쉐도우',118,'PINK','MAIN','/resources/images/potential/icons/118/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'환영의 그림자 칼날',118,'PINK','MAIN','/resources/images/potential/icons/118/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흔적 없는 그림자',118,'GOLD','MAIN','/resources/images/potential/icons/118/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'결점 보완',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'교대 수호',119,'RAINBOW','ASSIST','/resources/images/potential/icons/119/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'그림자 바람의 노래',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'그림자 바람의 노래',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'꽃 그림자의 시',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'꽃 그림자의 시',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'꽃무리의 시선',119,'PINK','ASSIST','/resources/images/potential/icons/119/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'끝나지 않은 흥',119,'PINK','ASSIST','/resources/images/potential/icons/119/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'끝없는 그림자',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'끝없는 그림자',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'따스한 바람의 포옹',119,'PINK','ASSIST','/resources/images/potential/icons/119/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'마음을 다한 보살핌',119,'RAINBOW','ASSIST','/resources/images/potential/icons/119/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'만개하는 화려한 꽃',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'먼 곳에서의 기도',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'무용화산',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'별빛의 질풍',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'부드러운 함정',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'부채꼴 꽃잎',119,'PINK','MAIN','/resources/images/potential/icons/119/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'빛을 향한 추격',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'생명의 폭풍',119,'PINK','MAIN','/resources/images/potential/icons/119/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'섬세한 재배',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'일심협력',119,'RAINBOW','ASSIST','/resources/images/potential/icons/119/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'재생의 양분',119,'PINK','ASSIST','/resources/images/potential/icons/119/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'정기 손질',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'질풍노도',119,'RAINBOW','MAIN','/resources/images/potential/icons/119/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'천공 돌파',119,'RAINBOW','MAIN','/resources/images/potential/icons/119/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'특별 보호',119,'GOLD','ASSIST','/resources/images/potential/icons/119/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'풍요의 춤사위',119,'PINK','MAIN','/resources/images/potential/icons/119/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'화려한 소용돌이',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'환영의 동행',119,'GOLD','MAIN','/resources/images/potential/icons/119/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'회전 칼날',119,'PINK','MAIN','/resources/images/potential/icons/119/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흩날리는 꽃잎 폭풍',119,'RAINBOW','MAIN','/resources/images/potential/icons/119/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가속 개념 전수',120,'PINK','ASSIST','/resources/images/potential/icons/120/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'결론 정밀 분석',120,'RAINBOW','ASSIST','/resources/images/potential/icons/120/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'고압 에너지 역류',120,'GOLD','ASSIST','/resources/images/potential/icons/120/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'고유의 가르침',120,'GOLD','MAIN','/resources/images/potential/icons/120/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'물결 자르기',155,'PINK','ASSIST','/resources/images/potential/icons/155/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'별빛의 도약',155,'PINK','MAIN','/resources/images/potential/icons/155/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'보드의 물결 가르기',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'설경 돌파',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'설원의 제압',155,'RAINBOW','MAIN','/resources/images/potential/icons/155/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'쌍월의 회전',155,'PINK','ASSIST','/resources/images/potential/icons/155/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'월광을 향한 외침',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'월광을 향한 외침',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'월식 폭발',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'조석 에너지 충전',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'초승달 영혼 자르기',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'칼날 같은 눈',155,'PINK','MAIN','/resources/images/potential/icons/155/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'토끼 파도 분사',155,'PINK','ASSIST','/resources/images/potential/icons/155/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'토끼의 그림자 질주',155,'RAINBOW','MAIN','/resources/images/potential/icons/155/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'토끼의 도약 추적',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'토끼의 동행',155,'PINK','ASSIST','/resources/images/potential/icons/155/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'토끼의 집중하는 빛',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파도 밟기',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'파도 속 가속',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'파도의 춤사위',155,'RAINBOW','ASSIST','/resources/images/potential/icons/155/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'파도의 표류',155,'RAINBOW','ASSIST','/resources/images/potential/icons/155/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'환상의 발걸음',155,'PINK','MAIN','/resources/images/potential/icons/155/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흰 눈의 폭발',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'개구쟁이 총집합',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'개구쟁이 총집합',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'기발한 장난',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'기쁨의 스핀',156,'RAINBOW','ASSIST','/resources/images/potential/icons/156/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'깃털의 난무',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'러브 애로우',156,'RAINBOW','ASSIST','/resources/images/potential/icons/156/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'리듬의 달인',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'무한한 스윙',156,'PINK','ASSIST','/resources/images/potential/icons/156/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'미약한 세력',156,'PINK','MAIN','/resources/images/potential/icons/156/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'보너스 풀',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'빈틈 채우기',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'사랑스러운 응원',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'사랑의 관통',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'살랑이는 스텝',156,'PINK','MAIN','/resources/images/potential/icons/156/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'서프라이즈 포옹',156,'RAINBOW','MAIN','/resources/images/potential/icons/156/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'스텝 기술',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'연속 서프라이즈',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'원샷 올킬',156,'RAINBOW','MAIN','/resources/images/potential/icons/156/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'자연의 손길',156,'RAINBOW','MAIN','/resources/images/potential/icons/156/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'정의로운 기세',156,'PINK','ASSIST','/resources/images/potential/icons/156/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'큐티 스타볼',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'터보 카트',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'터보 카트',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'특별한 러브샷',156,'PINK','ASSIST','/resources/images/potential/icons/156/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'풍선 토네이도',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'풍선 토네이도',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'피어나는 달콤함',156,'PINK','ASSIST','/resources/images/potential/icons/156/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'하늘에서 떨어진 행운',156,'RAINBOW','ASSIST','/resources/images/potential/icons/156/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'행운 추첨',156,'PINK','MAIN','/resources/images/potential/icons/156/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'허니 애로우',156,'GOLD','ASSIST','/resources/images/potential/icons/156/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'협력 화력',156,'GOLD','MAIN','/resources/images/potential/icons/156/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'화려한 턴',156,'PINK','MAIN','/resources/images/potential/icons/156/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'영도 폭발',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'영혼 추출',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'원소 승화',125,'RAINBOW','MAIN','/resources/images/potential/icons/125/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'절체절명의 역전',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'정면 승부',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'종말의 축복',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'침묵 속의 기도',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'혹한의 깨물기',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'혹한의 예고',125,'PINK','ASSIST','/resources/images/potential/icons/125/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'회오리 폭풍',125,'PINK','MAIN','/resources/images/potential/icons/125/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'휘몰아치는 한기',125,'GOLD','ASSIST','/resources/images/potential/icons/125/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'휘몰아치는 한기',125,'GOLD','MAIN','/resources/images/potential/icons/125/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'감정 분출',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'과거잿더미',126,'PINK','ASSIST','/resources/images/potential/icons/126/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'군중 효과',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'기쁨의 시가',126,'PINK','MAIN','/resources/images/potential/icons/126/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'끝없는 공연',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'나선 스핀',126,'PINK','MAIN','/resources/images/potential/icons/126/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'또 다른 자아',126,'PINK','MAIN','/resources/images/potential/icons/126/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'리듬 가속',126,'RAINBOW','MAIN','/resources/images/potential/icons/126/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'미래희망의 불씨',126,'PINK','ASSIST','/resources/images/potential/icons/126/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'배후의 지원',126,'RAINBOW','ASSIST','/resources/images/potential/icons/126/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'복선 검증',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'불길의 윤회',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'불길의 윤회',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'불씨의 재점화',126,'PINK','ASSIST','/resources/images/potential/icons/126/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'숨막히는 불꽃',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'숨막히는 불꽃',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'시각적 충격',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'심연 관찰',126,'RAINBOW','MAIN','/resources/images/potential/icons/126/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'엔딩곡',126,'PINK','MAIN','/resources/images/potential/icons/126/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'완벽한 연계',126,'RAINBOW','ASSIST','/resources/images/potential/icons/126/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'위치 조정',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'이스터 에그',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'인상 강화',126,'RAINBOW','ASSIST','/resources/images/potential/icons/126/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'잿더미 속 불씨',126,'PINK','ASSIST','/resources/images/potential/icons/126/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'전장의 지배자',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'주인공 버프',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'즉흥 연기',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'체호프의 총',126,'RAINBOW','MAIN','/resources/images/potential/icons/126/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'특별 출연',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'해탈의 깨달음',126,'GOLD','ASSIST','/resources/images/potential/icons/126/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'해탈의 깨달음',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'황당한 소동',126,'GOLD','MAIN','/resources/images/potential/icons/126/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가까이 오지마',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'끝없는 분출무한',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'끝없는 분출물결',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'끝없는 분출불식',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'끝없는 분출신속',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'끝없는 파도',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'끝없는 파도',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'내가 강화해 줄게',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'내가 지켜줄게',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'대단하지',127,'PINK','ASSIST','/resources/images/potential/icons/127/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'대체불가한 인연',127,'PINK','MAIN','/resources/images/potential/icons/127/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'마검 지배자',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'마검의 에너지 흡수',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'마검의 위압',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'마법 방패 강화',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'마성의 침식',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'마성의 침식',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'물결덮치는 물방울',127,'PINK','MAIN','/resources/images/potential/icons/127/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'물결진축의 참격',127,'PINK','MAIN','/resources/images/potential/icons/127/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'물결폭포의 일격',127,'PINK','MAIN','/resources/images/potential/icons/127/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'물결휘감는 구름',127,'PINK','MAIN','/resources/images/potential/icons/127/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'반창고 수집가',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'불타는 열정',127,'RAINBOW','MAIN','/resources/images/potential/icons/127/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'속성 해방',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'속성 해방',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'수호의 은총',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'이건 어때',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'재개하는 힘',127,'RAINBOW','MAIN','/resources/images/potential/icons/127/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'조금만 더 버텨',127,'GOLD','ASSIST','/resources/images/potential/icons/127/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'지름길의 행인',127,'RAINBOW','ASSIST','/resources/images/potential/icons/127/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'차징 일격',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'혼탁한 물결',127,'GOLD','MAIN','/resources/images/potential/icons/127/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'4성 수배',132,'PINK','ASSIST','/resources/images/potential/icons/132/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'긴급 증원',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'긴급 증원',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'끄트머리 사용법',132,'PINK','MAIN','/resources/images/potential/icons/132/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'눈 부신 광휘',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'번쩍이는 별빛',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'번쩍이는 별빛',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'별빛 하늘을 가르며',132,'RAINBOW','MAIN','/resources/images/potential/icons/132/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'보이는 게 다가 아냐',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'빛에 그을린 흔적',132,'RAINBOW','MAIN','/resources/images/potential/icons/132/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'빛의 연계',132,'RAINBOW','ASSIST','/resources/images/potential/icons/132/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'삼루타',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'섬광 폭발',132,'PINK','ASSIST','/resources/images/potential/icons/132/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'성운의 메아리',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'성핵 폭발',132,'PINK','ASSIST','/resources/images/potential/icons/132/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'수호의 별빛',132,'PINK','ASSIST','/resources/images/potential/icons/132/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'스트리트 파이트',132,'PINK','MAIN','/resources/images/potential/icons/132/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'약점 직격타',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'약점 직격타',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'엄청난 환호',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'연속 공격',132,'PINK','MAIN','/resources/images/potential/icons/132/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'완벽한 타격 지점',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'완벽한 포물선',132,'RAINBOW','ASSIST','/resources/images/potential/icons/132/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'욕망의 봉쇄',132,'RAINBOW','ASSIST','/resources/images/potential/icons/132/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'윈드 애시 리듬',132,'RAINBOW','MAIN','/resources/images/potential/icons/132/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'윈드 애시를 건드렸어',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'전투의 승화',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'짜릿한 손맛',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'최후통첩',132,'PINK','MAIN','/resources/images/potential/icons/132/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'클러치 득점',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'홈 어드밴티지',132,'GOLD','MAIN','/resources/images/potential/icons/132/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'홈런 상태',132,'GOLD','ASSIST','/resources/images/potential/icons/132/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가벼운 몸놀림',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'강풍의 가호',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강풍의 화살',133,'PINK','MAIN','/resources/images/potential/icons/133/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'광풍의 끝자락',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'꽃 그림자 회오리',133,'PINK','MAIN','/resources/images/potential/icons/133/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'꽃의 바다거센 파도',133,'PINK','ASSIST','/resources/images/potential/icons/133/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'꽃의 바다결속',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'꽃의 바다침식',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'꽃의 바다파도의 물결',133,'PINK','ASSIST','/resources/images/potential/icons/133/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'꽃의 바다폭열',133,'RAINBOW','ASSIST','/resources/images/potential/icons/133/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'나선 회오리',133,'PINK','MAIN','/resources/images/potential/icons/133/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'다중 토네이도',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'다중 토네이도',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'바람 신의 가호',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'바람 신의 가호',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'바람 악마의 씨앗',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'바람의 지배자',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'불멸의 바람',133,'PINK','MAIN','/resources/images/potential/icons/133/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'자기 업그레이드',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'전능한 지도자',133,'RAINBOW','ASSIST','/resources/images/potential/icons/133/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'정밀 조작',133,'RAINBOW','MAIN','/resources/images/potential/icons/133/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'질풍경초',133,'RAINBOW','MAIN','/resources/images/potential/icons/133/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'토네이도 소용돌이',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'토네이도 소용돌이',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'풍식의 주문',133,'RAINBOW','MAIN','/resources/images/potential/icons/133/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'풍식의 충격',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'풍운전환',133,'GOLD','MAIN','/resources/images/potential/icons/133/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'향기로운 꽃만개',133,'RAINBOW','ASSIST','/resources/images/potential/icons/133/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'향기로운 꽃빈틈',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'향기로운 꽃소멸',133,'GOLD','ASSIST','/resources/images/potential/icons/133/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'향기로운 꽃추격',133,'PINK','ASSIST','/resources/images/potential/icons/133/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'향기로운 꽃혼란',133,'PINK','ASSIST','/resources/images/potential/icons/133/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'2연타',134,'PINK','MAIN','/resources/images/potential/icons/134/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'강력 펀치의 울림',134,'RAINBOW','MAIN','/resources/images/potential/icons/134/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강자의 증명',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'격렬한 돌격',134,'RAINBOW','ASSIST','/resources/images/potential/icons/134/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'광열의 지원',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'냥냥펀치',134,'PINK','MAIN','/resources/images/potential/icons/134/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'다중 사격',134,'PINK','MAIN','/resources/images/potential/icons/134/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'다중 충격',134,'RAINBOW','ASSIST','/resources/images/potential/icons/134/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'동료의 힘',134,'RAINBOW','ASSIST','/resources/images/potential/icons/134/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'마지막 일격',134,'RAINBOW','MAIN','/resources/images/potential/icons/134/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'무외',134,'PINK','ASSIST','/resources/images/potential/icons/134/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'바람을 가르는 철권',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'바람을 가르는 철권',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'불꽃의 낙인',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'불타는 마음',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'불타는 마음',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'쇄공',134,'PINK','ASSIST','/resources/images/potential/icons/134/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'열섬',134,'PINK','ASSIST','/resources/images/potential/icons/134/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'용맹한 도전',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'용자의 의지',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'유성',134,'PINK','ASSIST','/resources/images/potential/icons/134/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'재장전',134,'PINK','MAIN','/resources/images/potential/icons/134/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'전광석화',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'전심전력',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'철권 차징',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'최고의 상태',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'최고의 상태',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'치명적인 증폭',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'쾌속 연타',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'폭열 추격',134,'RAINBOW','MAIN','/resources/images/potential/icons/134/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'회전 반격',134,'GOLD','MAIN','/resources/images/potential/icons/134/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'힘의 폭발 준비',134,'GOLD','ASSIST','/resources/images/potential/icons/134/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'강력한 어둠의 탐식',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'강력한 어둠의 탐식',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'결정적 순간',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'광란의 혼돈',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'광란의 혼돈',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'그림자의 구속',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'긍정의 힘',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'기쁨의 미소',135,'PINK','ASSIST','/resources/images/potential/icons/135/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'네거티브 노출 보정',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'드러내는 욕망',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'배후 작업',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'삭제 전의 저항',135,'PINK','MAIN','/resources/images/potential/icons/135/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'수면 유혹',135,'PINK','ASSIST','/resources/images/potential/icons/135/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'순간 포착',135,'PINK','MAIN','/resources/images/potential/icons/135/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'쌍생',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'악의',135,'RAINBOW','ASSIST','/resources/images/potential/icons/135/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'어둠 속 질주',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'어둠의 빠른 도래',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'어둠의 빠른 도래',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'연속 촬영',135,'PINK','MAIN','/resources/images/potential/icons/135/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'원념강력 공격',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'원념악마의 시험',135,'GOLD','MAIN','/resources/images/potential/icons/135/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'장노출',135,'PINK','MAIN','/resources/images/potential/icons/135/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'저주의 울부짖음',135,'RAINBOW','MAIN','/resources/images/potential/icons/135/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'적외선 열화상',135,'RAINBOW','ASSIST','/resources/images/potential/icons/135/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'증오의 폭발',135,'RAINBOW','MAIN','/resources/images/potential/icons/135/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'초혼',135,'RAINBOW','ASSIST','/resources/images/potential/icons/135/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'추가 복지',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'풀 프레임 자동 초점',135,'RAINBOW','MAIN','/resources/images/potential/icons/135/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'행운의 체질',135,'PINK','ASSIST','/resources/images/potential/icons/135/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'현실 침식',135,'PINK','ASSIST','/resources/images/potential/icons/135/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흉령',135,'GOLD','ASSIST','/resources/images/potential/icons/135/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'거센 불길의 용',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'거센 불길의 용',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'거센 불길의 표식',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'먹에 스며든 불꽃',141,'PINK','MAIN','/resources/images/potential/icons/141/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'먹의 색채',141,'RAINBOW','MAIN','/resources/images/potential/icons/141/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'무지개 화염진',141,'PINK','MAIN','/resources/images/potential/icons/141/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'묵부결계',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'묵부기습',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'묵부매복',141,'RAINBOW','ASSIST','/resources/images/potential/icons/141/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'묵부뿔피리',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'묵부추적',141,'RAINBOW','ASSIST','/resources/images/potential/icons/141/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'묵부피의 제물',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'별빛의 불꽃',141,'PINK','MAIN','/resources/images/potential/icons/141/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'부적불꽃',141,'RAINBOW','ASSIST','/resources/images/potential/icons/141/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'부적인호',141,'PINK','ASSIST','/resources/images/potential/icons/141/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'불꽃 선풍',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'불꽃 선풍',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'불꽃 연못의 잔재',141,'RAINBOW','MAIN','/resources/images/potential/icons/141/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'불꽃의 각성',141,'PINK','MAIN','/resources/images/potential/icons/141/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'불꽃의 기원',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'불의 먹점',141,'RAINBOW','MAIN','/resources/images/potential/icons/141/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'붉은 용유영',141,'PINK','ASSIST','/resources/images/potential/icons/141/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'붉은 용장음',141,'PINK','ASSIST','/resources/images/potential/icons/141/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'붓 끝의 연소',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'열독의 각인',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'용호기상',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'인호화염 비늘',141,'PINK','ASSIST','/resources/images/potential/icons/141/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'화룡점정',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'화염 공명',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'화염 장막의 잔해',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'화염용의 숨결',141,'GOLD','ASSIST','/resources/images/potential/icons/141/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'화염용의 숨결',141,'GOLD','MAIN','/resources/images/potential/icons/141/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'각인의 어둠 발톱',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'그림자의 가호',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'그림자의 동행',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'그림자의 섬광',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'그림자의 어둠 발톱',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'불타는 그림자',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'불타는 그림자',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'심연의 흔적',142,'PINK','ASSIST','/resources/images/potential/icons/142/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'어두운 잔상',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'어두운 잔상',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'어둠마의 흔적',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'어둠생명',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'어둠신기루',142,'RAINBOW','ASSIST','/resources/images/potential/icons/142/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'어둠여휘',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'어둠의 그림자 폭풍',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'어둠의 낙인',142,'PINK','ASSIST','/resources/images/potential/icons/142/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'어둠의 낙인',142,'PINK','MAIN','/resources/images/potential/icons/142/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'어둠의 은총',142,'RAINBOW','ASSIST','/resources/images/potential/icons/142/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'어둠의 찢기',142,'PINK','MAIN','/resources/images/potential/icons/142/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'어둠의 축복',142,'RAINBOW','MAIN','/resources/images/potential/icons/142/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'어둠의 침습',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'어둠의 화염',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'어둠의 화염',142,'GOLD','MAIN','/resources/images/potential/icons/142/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'어둠의 흔적',142,'PINK','MAIN','/resources/images/potential/icons/142/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'어둠형상 파괴',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'어둠환상',142,'RAINBOW','ASSIST','/resources/images/potential/icons/142/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'영혼의 어둠 발톱',142,'RAINBOW','MAIN','/resources/images/potential/icons/142/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'잔영 각인',142,'PINK','ASSIST','/resources/images/potential/icons/142/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'잔영 표식',142,'PINK','ASSIST','/resources/images/potential/icons/142/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'저승 속의 성흔',142,'RAINBOW','MAIN','/resources/images/potential/icons/142/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'저승의 손길',142,'PINK','MAIN','/resources/images/potential/icons/142/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'허공의 축복',142,'GOLD','ASSIST','/resources/images/potential/icons/142/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가녀린 춤사위',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'거울 같은 물',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'검의 울음',144,'RAINBOW','ASSIST','/resources/images/potential/icons/144/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'굳센 보호막',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'그림자 낙하',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'그림자 조류',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'그림자의 칼날',144,'PINK','MAIN','/resources/images/potential/icons/144/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'깊은 곳의 숨결',144,'PINK','ASSIST','/resources/images/potential/icons/144/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'끝없는 물살',144,'RAINBOW','MAIN','/resources/images/potential/icons/144/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'등사 파도',144,'PINK','MAIN','/resources/images/potential/icons/144/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'물 검의 소용돌이',144,'PINK','ASSIST','/resources/images/potential/icons/144/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'물 정령의 숨겨진 칼날',144,'RAINBOW','ASSIST','/resources/images/potential/icons/144/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'물결의 몸짓',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'물살의 고리 검',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'물속의 그림자 베기',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'뱀 춤의 물결',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'뱀 춤의 물결',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'부서진 그림자의 침묵',144,'RAINBOW','ASSIST','/resources/images/potential/icons/144/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'빗방울 검무',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'삭인연참',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'얼어붙은 뱀의 뼈',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'얼어붙은 뱀의 뼈',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'역류하는 여울빛',144,'PINK','MAIN','/resources/images/potential/icons/144/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'응고의 독액',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'응고의 독액',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'칼날의 잠행',144,'PINK','ASSIST','/resources/images/potential/icons/144/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'파도 뱀',144,'GOLD','MAIN','/resources/images/potential/icons/144/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'파도의 물살',144,'RAINBOW','MAIN','/resources/images/potential/icons/144/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'파문을 가르는 검',144,'GOLD','ASSIST','/resources/images/potential/icons/144/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'하늘 베기',144,'PINK','MAIN','/resources/images/potential/icons/144/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'환상 비늘',144,'RAINBOW','MAIN','/resources/images/potential/icons/144/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'흩어지는 물결',144,'PINK','ASSIST','/resources/images/potential/icons/144/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가슴 떨리는 전도',147,'PINK','ASSIST','/resources/images/potential/icons/147/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'강음 확산',147,'PINK','MAIN','/resources/images/potential/icons/147/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'강음의 종결',147,'PINK','MAIN','/resources/images/potential/icons/147/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'귓가에 맴도는 선율',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'넘치는 열정',147,'PINK','ASSIST','/resources/images/potential/icons/147/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'리듬 펄스',147,'PINK','MAIN','/resources/images/potential/icons/147/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'리듬의 울림',147,'RAINBOW','ASSIST','/resources/images/potential/icons/147/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'멜로디 회귀',147,'PINK','ASSIST','/resources/images/potential/icons/147/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'반짝임의 춤',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'변속 연주',147,'RAINBOW','MAIN','/resources/images/potential/icons/147/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'볼륨 중첩',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'비상의 현음',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'비상의 현음',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'뾰족한 예각',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'선율의 물결',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'악마의 쇼',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'악마의 쇼',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'악염의 잔해',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'암류 분출',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'암멸의 음격',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'어둠의 무도회',147,'RAINBOW','ASSIST','/resources/images/potential/icons/147/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'열기의 타이밍',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'영혼 직격타',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'저음의 이끌림',147,'RAINBOW','ASSIST','/resources/images/potential/icons/147/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'전체 버프',147,'RAINBOW','MAIN','/resources/images/potential/icons/147/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'크레센도',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'타락 2중주',147,'RAINBOW','MAIN','/resources/images/potential/icons/147/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'타락의 장막',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'타락의 장막',147,'GOLD','MAIN','/resources/images/potential/icons/147/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'하늘의 진동',147,'PINK','ASSIST','/resources/images/potential/icons/147/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'하우스 공명',147,'GOLD','ASSIST','/resources/images/potential/icons/147/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'환호의 섬광',147,'PINK','MAIN','/resources/images/potential/icons/147/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'가중처벌',149,'PINK','ASSIST','/resources/images/potential/icons/149/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'가학적 즐거움',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'고통 증식',149,'PINK','MAIN','/resources/images/potential/icons/149/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'공감',149,'RAINBOW','MAIN','/resources/images/potential/icons/149/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'관통의 고통',149,'RAINBOW','MAIN','/resources/images/potential/icons/149/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'끝없는 고통',149,'PINK','MAIN','/resources/images/potential/icons/149/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'멀티 플레이',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'사면자의 비전 선언',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'사면자의 비전 선언',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'사적 제재',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'산사태 폭풍',149,'PINK','MAIN','/resources/images/potential/icons/149/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'아쉬운 마음',149,'RAINBOW','MAIN','/resources/images/potential/icons/149/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'악의적 공격',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'안전장치 없음',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'여섯 재앙굶주림',149,'RAINBOW','ASSIST','/resources/images/potential/icons/149/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'여섯 재앙사망',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'여섯 재앙순교',149,'RAINBOW','ASSIST','/resources/images/potential/icons/149/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'여섯 재앙정복',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'여섯 재앙죽음의 한',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'여섯 재앙침식',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'연익자의 종결 선언',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'연익자의 종결 선언',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'영혼 실의 공명',149,'RAINBOW','ASSIST','/resources/images/potential/icons/149/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'윤회자의 심판 선언',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'윤회자의 심판 선언',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'죄의 공진',149,'PINK','ASSIST','/resources/images/potential/icons/149/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'진동하는 대지',149,'PINK','ASSIST','/resources/images/potential/icons/149/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'추격 사냥',149,'GOLD','MAIN','/resources/images/potential/icons/149/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'통제 불가 폭주',149,'PINK','MAIN','/resources/images/potential/icons/149/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'황혼의 단죄',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'황혼의 사냥',149,'GOLD','ASSIST','/resources/images/potential/icons/149/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'훌륭한 마무리',149,'PINK','ASSIST','/resources/images/potential/icons/149/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'광염번쩍임',150,'PINK','ASSIST','/resources/images/potential/icons/150/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'광염연속',150,'PINK','ASSIST','/resources/images/potential/icons/150/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'광염응축',150,'PINK','ASSIST','/resources/images/potential/icons/150/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'광염추격',150,'PINK','ASSIST','/resources/images/potential/icons/150/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'그림자 비행',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'낙창광역',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'낙창광역',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'낙창번개 파도',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'낙창번개 파도',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_9.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (10,'낙창전기 속박',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_10.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (11,'낙창전기 속박',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_11.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (12,'번개 영역 부유',150,'PINK','MAIN','/resources/images/potential/icons/150/pot_12.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (13,'번개창무',150,'PINK','MAIN','/resources/images/potential/icons/150/pot_13.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (14,'빛의 빗방울',150,'RAINBOW','ASSIST','/resources/images/potential/icons/150/pot_14.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (15,'빛의 장벽 폭풍',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_15.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (16,'성스러운 말의 기도',150,'RAINBOW','ASSIST','/resources/images/potential/icons/150/pot_16.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (17,'성스러운 빛의 각인',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_17.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (18,'성스러운 빛의 세례',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_18.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (19,'성스러운 창의 심판',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_19.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (20,'송곳',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_20.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (21,'순간의 습격',150,'RAINBOW','MAIN','/resources/images/potential/icons/150/pot_21.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (22,'열공',150,'RAINBOW','MAIN','/resources/images/potential/icons/150/pot_22.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (23,'장총 소탕',150,'PINK','MAIN','/resources/images/potential/icons/150/pot_23.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (24,'전격 사슬',150,'PINK','MAIN','/resources/images/potential/icons/150/pot_24.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (25,'전기 사슬',150,'RAINBOW','MAIN','/resources/images/potential/icons/150/pot_25.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (26,'찰나의 빛',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_26.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (27,'총소리',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_27.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (28,'파광',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_28.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (29,'포획',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_29.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (30,'하늘을 비추는 여명',150,'GOLD','ASSIST','/resources/images/potential/icons/150/pot_30.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (31,'하늘을 찢는 기습',150,'RAINBOW','ASSIST','/resources/images/potential/icons/150/pot_31.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (32,'현란한 번개',150,'GOLD','MAIN','/resources/images/potential/icons/150/pot_32.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (1,'고요함 속 물결',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_1.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (2,'고요함 속 물결',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_2.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (3,'공허의 파도',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_3.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (4,'공허의 파도',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_4.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (5,'눈의 리듬',155,'GOLD','ASSIST','/resources/images/potential/icons/155/pot_5.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (6,'달그림자 콤보',155,'GOLD','MAIN','/resources/images/potential/icons/155/pot_6.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (7,'달빛 폭발',155,'RAINBOW','MAIN','/resources/images/potential/icons/155/pot_7.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (8,'달빛의 분출',155,'PINK','MAIN','/resources/images/potential/icons/155/pot_8.png');
Insert into HR.SSH_POTENTIAL (NO,NAME,CHAR_NO,RANK,TYPE,IMG_PATH) values (9,'달의 장막 강림',155,'RAINBOW','ASSIST','/resources/images/potential/icons/155/pot_9.png');
REM INSERTING into HR.SSH_REPLY
SET DEFINE OFF;
Insert into HR.SSH_REPLY (NO,CONTENT,USER_NO,NICKNAME,PASSWORD,REG_DATE,BUILD_NO) values (2,'테스트 비회원 댓글 01',null,'테스트 01(비회원)','vmfhwprxmdyd!',to_date('25/12/12','RR/MM/DD'),12);
Insert into HR.SSH_REPLY (NO,CONTENT,USER_NO,NICKNAME,PASSWORD,REG_DATE,BUILD_NO) values (3,'테스트',null,'테스트(비회원)','xptmxm',to_date('25/12/12','RR/MM/DD'),12);
Insert into HR.SSH_REPLY (NO,CONTENT,USER_NO,NICKNAME,PASSWORD,REG_DATE,BUILD_NO) values (4,'test',null,'테스트01',null,to_date('25/12/12','RR/MM/DD'),13);
Insert into HR.SSH_REPLY (NO,CONTENT,USER_NO,NICKNAME,PASSWORD,REG_DATE,BUILD_NO) values (1,'댓글 테스트 02',22,'테스트02',null,to_date('25/12/12','RR/MM/DD'),1);
--------------------------------------------------------
--  DDL for Index SYS_C008367
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008367" ON "HR"."SSH_BUILD" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008370
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008370" ON "HR"."SSH_CHARACTER" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008361
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008361" ON "HR"."SSH_MEMBER" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008362
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008362" ON "HR"."SSH_MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008363
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008363" ON "HR"."SSH_MEMBER" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SSH_POTENTIAL
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PK_SSH_POTENTIAL" ON "HR"."SSH_POTENTIAL" ("CHAR_NO", "NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008385
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C008385" ON "HR"."SSH_REPLY" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SSH_BUILD
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SSH_BUILD_DETAIL
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD_DETAIL" MODIFY ("BUILD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD_DETAIL" MODIFY ("CHAR_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD_DETAIL" MODIFY ("POT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SSH_BUILD_RECOMMEND
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD_RECOMMEND" MODIFY ("BUILD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_BUILD_RECOMMEND" MODIFY ("USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SSH_CHARACTER
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_CHARACTER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_CHARACTER" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SSH_MEMBER
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_MEMBER" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_MEMBER" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SSH_MEMBER" ADD UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HR"."SSH_MEMBER" ADD UNIQUE ("NICKNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SSH_POTENTIAL
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_POTENTIAL" MODIFY ("NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_POTENTIAL" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_POTENTIAL" MODIFY ("CHAR_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_POTENTIAL" MODIFY ("RANK" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_POTENTIAL" ADD CONSTRAINT "PK_SSH_POTENTIAL" PRIMARY KEY ("CHAR_NO", "NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SSH_REPLY
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_REPLY" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_REPLY" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_REPLY" MODIFY ("BUILD_NO" NOT NULL ENABLE);
  ALTER TABLE "HR"."SSH_REPLY" ADD PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SSH_BUILD
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD" ADD CONSTRAINT "FK_BUILD_USER_NO" FOREIGN KEY ("USER_NO")
	  REFERENCES "HR"."SSH_MEMBER" ("NO") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SSH_BUILD_DETAIL
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD_DETAIL" ADD CONSTRAINT "FK_DETAIL_BUILD_NO" FOREIGN KEY ("BUILD_NO")
	  REFERENCES "HR"."SSH_BUILD" ("NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SSH_BUILD_DETAIL" ADD CONSTRAINT "FK_DETAIL_POTENTIAL" FOREIGN KEY ("CHAR_NO", "POT_NO")
	  REFERENCES "HR"."SSH_POTENTIAL" ("CHAR_NO", "NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SSH_BUILD_RECOMMEND
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_BUILD_RECOMMEND" ADD CONSTRAINT "FK_BUILD_REC_BUILD_NO" FOREIGN KEY ("BUILD_NO")
	  REFERENCES "HR"."SSH_BUILD" ("NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SSH_BUILD_RECOMMEND" ADD CONSTRAINT "FK_BUILD_REC_USER_NO" FOREIGN KEY ("USER_NO")
	  REFERENCES "HR"."SSH_MEMBER" ("NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SSH_POTENTIAL
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_POTENTIAL" ADD CONSTRAINT "FK_POT_CHAR_NO" FOREIGN KEY ("CHAR_NO")
	  REFERENCES "HR"."SSH_CHARACTER" ("NO") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SSH_REPLY
--------------------------------------------------------

  ALTER TABLE "HR"."SSH_REPLY" ADD CONSTRAINT "FK_REPLY_BUILD_NO" FOREIGN KEY ("BUILD_NO")
	  REFERENCES "HR"."SSH_BUILD" ("NO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "HR"."SSH_REPLY" ADD CONSTRAINT "FK_REPLY_USER_NO" FOREIGN KEY ("USER_NO")
	  REFERENCES "HR"."SSH_MEMBER" ("NO") ON DELETE SET NULL ENABLE;
