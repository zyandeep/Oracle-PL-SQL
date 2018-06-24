create or replace trigger student_marks_trigger
before insert on  student_marks

for each row

BEGIN
    :new.total_marks := :new.phy_marks + :new.chem_marks + :new.math_marks;
END;
/
