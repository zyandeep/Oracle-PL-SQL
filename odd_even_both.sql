-- Insert the into both tables at the same time

-- Insert the into both tables at the same time

SET serveroutput ON
SET verify OFF

DECLARE
    var1 NUMBER(6) := 1;
    var2 NUMBER(6) := 1;

-- BEGIN
--     FOR i IN 1..10000 LOOP
--         IF MOD(i, 2) = 0 THEN
--             INSERT INTO even_natural VALUES(i, i, SYSTIMESTAMP);
--         ELSE
--             INSERT INTO odd_natural VALUES(i, i, SYSTIMESTAMP);
--         END IF;
--     END LOOP;
-- END;
-- /

BEGIN
    FOR i IN 1..10000 LOOP
        IF MOD(i, 2) = 0 THEN
            INSERT INTO even_natural VALUES(var1, i, SYSTIMESTAMP);
            var1 := var1 + 1;
        ELSE
            INSERT INTO odd_natural VALUES(var2, i, SYSTIMESTAMP);
            var2 := var2 + 1;
        END IF;
    END LOOP;
END;
/
