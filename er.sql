-- student (m)-------(m) subject
-- course(1) ------- (m) subject

CREATE TABLE student (
    st_id number(3) primary key,
    s_name varchar2(30),
    s_address varchar2(50),
    s_roll_no number(3)
);

CREATE TABLE course (
    course_id number(3) primary key,
    course_name varchar2(30),
    stream varchar2(30)
);

CREATE TABLE subject (
    sub_id number(3) primary key,
    sub_name varchar2(30),  
    total_marks number(3),
    course_id number(3) references course
);

CREATE TABLE studies (
    stud_id number(3) primary key,
    st_id number(3) references student,
    sub_id number(3) references subject,
    marks_secured number(2)
); 

insert into student values(1, 'Chandler', 'jorhat', 5);
insert into student values(2, 'Ross', 'jorhat', 4);
insert into student values(3, 'Phoebe', 'Delhi', 1);
insert into student values(4, 'Rach', 'Sivsagar', 7);

insert into course values(1, 'BCA', 'Science');
insert into course values(2, 'MBA', 'Commerce');
insert into course values(3, 'CA', 'Commerce');
insert into course values(4, 'Hard/Netw', 'IT');

insert into subject values(1, 'DBMS-1', 70, 1);
insert into subject values(2, 'Fundamentl of Networking', 75, 1);
insert into subject values(3, 'Market Analysis', 80, 2);
insert into subject values(4, 'Accountancy', 60, 2);
insert into subject values(5, 'HR Managment', 73, 3);
insert into subject values(6, 'Stock and Share', 82, 3);
insert into subject values(7, 'Embeded Systems', 83, 4);
insert into subject values(8, 'JSP', 66, 4);

insert into studies values(1, 1, 1, 73);
insert into studies values(2, 1, 2, 63);
insert into studies values(3, 2, 7, 73);
insert into studies values(4, 2, 8, 73);
insert into studies values(5, 3, 3, 59);
insert into studies values(6, 3, 4, 90);
insert into studies values(7, 4, 5, 82);
insert into studies values(8, 4, 6, 82); 

/*-- question : 2
select S_NAME, SUB_NAME, MARKS_SECURED from student, studies, subject
where student.ST_ID = studies.ST_ID AND studies.SUB_ID = subject.SUB_ID 

-- question : 1
select DISTINCT s_name, course_name from student, subject, studies, course 
where student.st_id = studies.st_id AND subject.sub_id = studies.sub_id AND
subject.course_id = course.course_id; 
*/
