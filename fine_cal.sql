create or replace function fine_cal(no number)
    return number

AS

var_doi date;
var_dor date;
var_fine_pd books_issue.fine_per_day %type;
days_between number(4);
late_days number(4);
fine number(4) := -1;

BEGIN
    SELECT dor into var_dor from books_issue where ID = no;
     
    if var_dor is not null then
        SELECT doi, fine_per_day into var_doi, var_fine_pd from books_issue WHERE ID = no;
        
        days_between := var_dor - var_doi;
        
        if days_between > 30 then
            late_days := days_between - 30;
            fine := var_fine_pd * late_days;
        end if;

    end if;


    return fine;
    
END;
/
