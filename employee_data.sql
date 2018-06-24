create table employee (
e_id number(3) primary key,
e_name varchar2(30),
designation varchar2(30),
pan varchar2(30),
gender varchar2(10)
);

create table employee_income (
ei_id number(3) primary key,
e_id number(3) references employee,
income_amount number,
tax number,
remark varchar2(30),
entry_date date
);


insert into employee values(1, 'Bhaskar', 'Manager', 'APMB9629P', 'Male');
insert into employee values(2, 'Dipsikha', 'Manager', 'APMB9629Q', 'Female');
insert into employee values(3, 'Suraj', 'Asst. Manager', 'APMB9629R', 'Male');
insert into employee values(4, 'Munmi', 'Asst. Manager', 'APMB9629S', 'Female');
