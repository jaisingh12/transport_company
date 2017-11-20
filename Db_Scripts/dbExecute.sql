set echo off verify off showmode off feedback off;
prompt

connect socom_custom/castor@testdb;

spool C:\Teamcity\TMS\DB_logs\dbExecute.log
prompt "Kill all active sessions for testdb"
                DECLARE
                cur_stmt        VARCHAR(2000);
                BEGIN
                  FOR sid_ser IN (SELECT sid, serial# from v$session where username= upper('testdb'))
                  LOOP
                    cur_stmt := 'ALTER SYSTEM KILL SESSION '''||sid_ser.sid||','||sid_ser.serial#||''' IMMEDIATE';
                                dbms_output.put_line(cur_stmt);
                                EXECUTE IMMEDIATE cur_stmt;
                  END LOOP;
                END;
                /

select * from tinstall;

spool off
exit;


