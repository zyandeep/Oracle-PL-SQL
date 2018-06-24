set serveroutput on
set verify off

-- DECLARE
--     var1 student_record.s_name %type;
--     var2 student_record.hslc_percent %type;
--     var3 student_record.address %type;
--     var4 student_record.sr_id %type;
    
BEGIN
    -- for i in 1..6 loop
    --     select hslc_percent into var2 from student_record where sr_id=i;
    --     if (var2 >= 60) then
    --         select s_name, address into var1, var3 from student_record where sr_id=i;
    --         insert into student_first_div values(i, var1, var2, var3);
    --     end if;
    -- end loop;

    for i in (select * from student_record) loop
        if (i.hslc_percent >= 60) then
            insert into student_first_div values (
                i.sr_id,
                i.s_name,
                i.hslc_percent,
                i.address
            );
        end if;
    end loop;

END;
/
