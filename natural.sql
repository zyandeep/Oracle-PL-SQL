--CREATE TABLE natural_table (
--nt_id           number(7)   primary key,
--natural_no      number(7),
--entry_time      varchar2(70)
--);

-- First PL/SQL program
SET serveroutput ON
SET verify OFF

BEGIN
    FOR i IN 1..10000 LOOP
        INSERT INTO natural_table VALUES(i, i, SYSTIMESTAMP);
    END LOOP;
END;
/
