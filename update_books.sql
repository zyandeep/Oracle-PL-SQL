DECLARE
    calc_fine number(4);
    
BEGIN
    for i in (select * from books_issue) loop
        calc_fine := fine_cal(i.id);
        
        if calc_fine != -1 then
            update books_issue set AUTO_FINE = calc_fine
            where id = i.id;
        end if; 
    
    end loop;
END;
/
