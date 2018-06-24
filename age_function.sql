CREATE OR REPLACE FUNCTION AGE_CAL( DOB VARCHAR2 )
RETURN NUMBER
AS

AGE NUMBER := 0;
DAY_TO_YEAR NUMBER := 30 * 12;

BEGIN

AGE := ROUND( (SYSDATE - TO_DATE(DOB)) / DAY_TO_YEAR );

RETURN AGE;

END;
/
