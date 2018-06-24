SET serveroutput ON
SET verify OFF

BEGIN
    FOR i IN 1..10000 LOOP
        IF MOD(I, 10) = 0 THEN
            DELETE FROM NATURAL_TABLE WHERE NT_ID = i;
        END IF;
    END LOOP;
END;
/
