--
CONN /AS SYSDBA;
GRANT CONNECT, RESOURCE TO TEST;
CONN TEST/1234;
SHOW USER;
-- create user table
  CREATE TABLE TEST.USER_TB 
   (	
     USER_ID VARCHAR2(100 BYTE), 
	 USER_PWD VARCHAR2(100 BYTE), 
	 USER_SESSION VARCHAR2(50 BYTE) DEFAULT 0, 
	 USER_SESSIONLIMIT TIMESTAMP
   ); 
Insert into TEST.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('NURIAPP','1234','0',null);
Insert into TEST.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('TEST','1234','E0E1DA96981C8DA1D63111E035449068',to_timestamp('20/01/10 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into TEST.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('SOOYEON','1234','3880EA421BA5712C32CCEB361F74E303',to_timestamp('20/01/10 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));

Insert into SCOTT.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('NURIAPP','1234','0',null);
Insert into SCOTT.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('TEST','1234','E0E1DA96981C8DA1D63111E035449068',to_timestamp('20/01/10 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into SCOTT.USER_TB (USER_ID,USER_PWD,USER_SESSION,USER_SESSIONLIMIT) values ('SOOYEON','1234','3880EA421BA5712C32CCEB361F74E303',to_timestamp('20/01/10 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));

DROP TABLE TEST.MP_FILE;
CREATE TABLE TEST.MP_FILE 
   (	
     FILE_NO NUMBER, 
	BNO NUMBER, 
	ORG_FILE_NAME VARCHAR2(260 BYTE), 
	STORED_FILE_NAME VARCHAR2(36 BYTE), 
	FILE_SIZE NUMBER, 
	REGDATE DATE DEFAULT SYSDATE, 
	DEL_GB VARCHAR2(1 BYTE) DEFAULT 'N'
   );
   
-- create file table
CREATE TABLE SCOTT.MP_FILE 
   (	
     FILE_NO NUMBER, 
	BNO NUMBER, 
	ORG_FILE_NAME VARCHAR2(260 BYTE), 
	STORED_FILE_NAME VARCHAR2(36 BYTE), 
	FILE_SIZE NUMBER, 
	REGDATE DATE DEFAULT SYSDATE, 
	DEL_GB VARCHAR2(1 BYTE) DEFAULT 'N'
   );
   DROP TABLE TEST.BOARD_TB;
     CREATE TABLE "TEST"."BOARD_TB" 
   (	"BOARD_NO" NUMBER, 
	"BOARD_CONTENT" VARCHAR2(100 BYTE), 
	"BOARD_TITLE" VARCHAR2(100 BYTE), 
	"BOARD_WRITER" VARCHAR2(100 BYTE), 
	"BOARD_COUNT" NUMBER DEFAULT 0, 
	"BOARD_PWD" VARCHAR2(100 BYTE)
   );
   -- create board table
        CREATE TABLE SCOTT.BOARD_TB 
   ( BOARD_NO NUMBER, 
	BOARD_CONTENT VARCHAR2(100 BYTE), 
	BOARD_TITLE VARCHAR2(100 BYTE), 
	BOARD_WRITER VARCHAR2(100 BYTE), 
	BOARD_COUNT NUMBER DEFAULT 0, 
	BOARD_PWD VARCHAR2(100 BYTE)
   );
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (1,'TEST','TEST001','TEST',1,'1234');
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (2,'TEST','TEST002','TEST',2,'1234');
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (3,'TEST','TEST003','TEST',3,'1234');
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (4,'TEST','TEST004','TEST',4,'1234');
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (5,'TEST','TEST005','TEST',5,'1234');
 Insert into TEST.BOARD_TB (BOARD_NO,BOARD_CONTENT,BOARD_TITLE,BOARD_WRITER,BOARD_COUNT,BOARD_PWD) values (6,'TEST','TEST006','TEST',6,'1234');
COMMIT;
  CREATE TABLE "TEST"."INPUT_TB" 
   (	"NO" NUMBER, 
	"INPUT_VALUE1" NUMBER, 
	"INPUT_VALUE2" NUMBER, 
	"INPUT_VALUE3" NUMBER, 
	"INPUT_VALUE4" NUMBER, 
	"INPUT_VALUE5" NUMBER, 
	"TOTAL_VALUE" NUMBER
   ) ;
SELECT * FROM TEST.USER_TB;
SELECT * FROM TEST.BOARD_TB;
SELECT * FROM TEST.MP_FILE;
SELECT * FROM TEST.INPUT_TB;
--ADD SEQUENCE
CREATE SEQUENCE SEQ_BOARD
START WITH 1
INCREMENT BY 1
;
--SEQUENCE 
CREATE SEQUENCE SEQ_BOARD
START WITH 1
INCREMENT BY 1
;
CREATE SEQUENCE SEQ_INPUT
START WITH 1
INCREMENT BY 1
;
COMMIT;

--create product table
create table test.tbl_product (
product_id number,
product_name varchar2(50),
product_price number default 0,
product_desc varchar2(500),
product_url varchar2(500),
primary key(product_id)
);
commit;
select * from tbl_product;
select * from tbl_cart;
create TABLE test.tbl_cart (
cart_id NUMBER NOT NULL PRIMARY KEY,
user_id VARCHAR2(50) NOT NULL,
product_id NUMBER NOT NULL,
amount NUMBER DEFAULT 0 
);
--create cart table
CREATE SEQUENCE test.seq_cart START WITH 10 INCREMENT BY 1;
COMMIT;

ALTER TABLE test.tbl_cart ADD CONSTRAINT cart_userid_fk FOREIGN KEY(user_id) REFERENCES tbl_member(user_id);
ALTER TABLE test.tbl_cart ADD CONSTRAINT cart_product_fk FOREIGN KEY(product_id) REFERENCES tbl_product(product_id);
commit;