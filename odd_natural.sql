CREATE TABLE odd_natural (
odd_id           number(7)   primary key,
odd_no           number(7),
entry_time        varchar2(70)
);

SET serveroutput ON
SET verify OFF

BEGIN
    FOR i IN 1..10000 LOOP
        IF MOD(i, 2) != 0 THEN
            INSERT INTO odd_natural VALUES(i, i, SYSTIMESTAMP);
        END IF;
    END LOOP;
END;
/
