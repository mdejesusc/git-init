--------------------------------------------------------
-- Archivo creado  - jueves-agosto-01-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package GCE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "C624_000"."GCE" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  PROCEDURE SP_GENERATE_MESSAGE_NUMBER (
    P_ACCOUNTING_BRANCH IN MESSAGE_NUMBER.ACCOUNTING_BRANCH%TYPE,
    P_ACCOUNTING_CASH IN MESSAGE_NUMBER.ACCOUNTING_CASH%TYPE,
    P_MESSAGE_NUMBER OUT MESSAGE_NUMBER.MESSAGE_NUMBER%TYPE);
    
  PROCEDURE SP_VALIDATE_USER (
    P_USER_NAME IN VARCHAR2
    , P_USER_PW IN VARCHAR2 
    , P_RESULT OUT INTEGER);
    
  PROCEDURE SP_LOGGING (
    P_SP_NAME IN CAPTAINS_LOG.SP_NAME%TYPE,
    P_ERROR_USR IN CAPTAINS_LOG.ERROR_USR%TYPE,
    P_ERROR_ORA IN CAPTAINS_LOG.ERROR_ORA%TYPE,
    P_MESSAGE_ORA IN CAPTAINS_LOG.MESSAGE_ORA%TYPE);
    
PROCEDURE SP_INSERT_INTO_TB_TEST (
    P_TIMES IN INTEGER,
    P_ID IN VARCHAR2);
    
PROCEDURE SP_DELETE_MASSIVE_ALL (
    P_RECORDS IN INTEGER,
    P_ID IN VARCHAR2);
    
PROCEDURE SP_DELETE_MASSIVE_CHUNK (
    P_RECORDS IN INTEGER,
    P_ID IN VARCHAR2);

END GCE;

/
