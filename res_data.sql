set serveroutput on;
set verify off;

declare
    total result.total_marks %type;
    var1 number := 1;
    
begin
    --for i in (select * from student_record2) loop
        --total := i.phy_marks + i.chem_marks + i.math_marks;
        --insert into result values(i.sr_id, i.sr_id, total, null);
    --end loop;
    
    --for i in (select * from result order by total_marks desc) loop
        --update result set rank = var1 where r_id = i.r_id;
        --var1 := var1 + 1;
    --end loop;
    
    for i in (select r_id, sr_id, total_marks, rank() over (order by total_marks desc) as rank from result) loop
        update result set rank = i.rank where r_id = i.r_id;
        --dbms_output.put_line(var1);
        --dbms_output.put_line(i.rank || ' ' || i.r_id);
    end loop;
    
end;
/
