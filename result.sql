create table student_record2 (
    sr_id number primary key,
    s_name varchar2(30),
    phy_marks number(2),
    chem_marks number(2),
    math_marks number(2)
);

insert into student_record2 values(1, 'Rajib', 80, 80, 78);
insert into student_record2 values(2, 'Diganta', 81, 81, 79);
insert into student_record2 values(3, 'Pradip', 85, 85, 88);
insert into student_record2 values(4, 'Pallab', 30, 35, 36);
insert into student_record2 values(5, 'Raju', 38, 38, 40);

create table result (
    r_id number primary key,
    sr_id number references student_record2,
    total_marks number,
    rank number(1)
);
