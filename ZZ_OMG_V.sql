--------------------------------------------------------
--  File created - piπtek-paüdziernika-27-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View ZZ_OMG_V
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYS"."ZZ_OMG_V" ("ORDER_ID", "CUSTOMER_ID", "STATUS", "SALESMAN_ID", "ORDER_DATE", "FIRST_NAME", "LAST_NAME") AS 
  SELECT
    ord."ORDER_ID",ord."CUSTOMER_ID",ord."STATUS",ord."SALESMAN_ID",ord."ORDER_DATE",
    emp.first_name,
    emp.last_name
FROM
    orders    ord
    LEFT OUTER JOIN employees emp ON ord.salesman_id = emp.employee_id
;
REM INSERTING into SYS.ZZ_OMG_V
SET DEFINE OFF;
Insert into SYS.ZZ_OMG_V (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,FIRST_NAME,LAST_NAME) values ('32','47','Shipped',null,to_date('17/03/09','RR/MM/DD'),null,null);
Insert into SYS.ZZ_OMG_V (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,FIRST_NAME,LAST_NAME) values ('33','48','Shipped',null,to_date('17/03/07','RR/MM/DD'),null,null);
Insert into SYS.ZZ_OMG_V (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,FIRST_NAME,LAST_NAME) values ('69','44','Canceled','54',to_date('17/03/17','RR/MM/DD'),'Lily','Fisher');
Insert into SYS.ZZ_OMG_V (ORDER_ID,CUSTOMER_ID,STATUS,SALESMAN_ID,ORDER_DATE,FIRST_NAME,LAST_NAME) values ('98','48','Shipped','55',to_date('17/03/18','RR/MM/DD'),null,null);
