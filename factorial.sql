create or replace FUNCTION factorial(num number)
    return number
AS
fact number := 1;

BEGIN
    for i in 2 .. num loop
        fact := fact * i;
    end loop;
    return fact;
END;
/
