set serveroutput on
set verify off

declare
	r result1.total_marks %type;
	mt result1.total_marks %type;
	var1 number(3):=1;

begin
	for i in (select * from student_records1) loop
		r := i.phy_marks + i.chem_marks + i.math_marks;
		insert into result1 values(i.sr_id,i.sr_id,r,null);
	end loop;

	for k in (select distinct total_marks from result1) loop
		select max(total_marks) into mt from result1 where rank is NULL;
		update result1 set rank=var1 where total_marks=mt;
		var1:=var1+1;

	end loop;
end;
/
