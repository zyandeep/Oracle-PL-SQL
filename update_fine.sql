set serveroutput on;
set verify off;

declare
    max_row number(2);
    fine library_table.AUTO_FINE %type;
    
begin
    select count(*) into max_row from library_table;
    
    for i in 1 .. max_row loop
        --dbms_output.put_line(fine_func(i));
        
        fine := fine_func(i);
        --dbms_output.put_line(fine);
        
        update library_table set AUTO_FINE = fine where LT_ID = i;
        
    end loop;
end;
/
