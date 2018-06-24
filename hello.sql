SET serveroutput ON

DECLARE
    text varchar2(30) := 'Hello PL/SQL!';
    
BEGIN
    dbms_output.put_line(text);
END;
/