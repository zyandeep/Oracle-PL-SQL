create table student_record (
    sr_id number(3) primary key,
    s_name varchar2(30),
    hslc_percent number(2),
    address varchar2(50) 
);

insert into student_record values(1, 'Zyandeep', 82, 'Jorhat');
insert into student_record values(2, 'Amar', 81, 'Jorhat');
insert into student_record values(3, 'Deepak', 58, 'Jorhat');
insert into student_record values(4, 'Bharat', 57, 'Delhi');
insert into student_record values(5, 'Jon', 89, 'Winterfell');
insert into student_record values(6, 'Ram', 78, 'Dirugarh');
