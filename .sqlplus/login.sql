set feedback off
set history on
set pagesize 50000

-- Set linesize to width of terminal
HOST echo "set linesize" $(stty -a|head -n1|cut -f7 -d' '|cut -f1 -d';') > .tmp.sql
@.tmp.sql
HOST rm -f .tmp.sql

ALTER SESSION SET nls_date_format = 'yyyy-mm-dd hh24:mi:ss';
ALTER SESSION SET nls_timestamp_format = 'yyyy-mm-dd hh24:mi:ss.ff';
ALTER SESSION SET nls_timestamp_tz_format = 'yyyy-mm-dd hh24:mi:ss.ff';

-- ALTER SESSION ENABLE PARALLEL QUERY;
-- ALTER SESSION ENABLE PARALLEL DML;
-- ALTER SESSION ENABLE PARALLEL DDL;

column systimestamp format a26
column sysdate format a19

-- AD-specific columns
column satid format 99990
column name format a50
column value format a20
column bus format a10
column bandname format a20
column trackername format a20
column observationtype format a20
column asctime format a23
column starttime format a27
column stoptime format a27
column fitstarttime format a27
column fitstoptime format a27
column inserttstamp format a22
column updatetstamp format a22
column truid format a32

-- Oracle data dictionary columns
column tname format a30
column table_name format a30
column partition_name format a14
column high_value format a34
column column_name format a30
column index_name format a30
column trigger_name format a30
column procedure_name format a30
column constraint_name format a30
column object_name format a30
column job_name format a30
column operation format a20
column job_mode format a8
column state format a12
column owner_name format a30
column owner format a30
column partition_name format a30
column degree format a6
column username format a8
column osuser format a6
column grantee format a30

set timing on
set feedback on
set serveroutput on
