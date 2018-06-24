create or replace FUNCTION fine_func(id number)
    return number
AS  
-- IS
lt_days library_table.LATE_DAYS %type;
fine_pday library_table.FINE_PER_DAY %type;
fine library_table.AUTO_FINE %type;

BEGIN
    select LATE_DAYS, FINE_PER_DAY into lt_days, fine_pday
    FROM library_table WHERE LT_ID = id;
    
    fine := lt_days * fine_pday;
    return fine;
END;
/
