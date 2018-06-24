create table customer (
    c_id number primary key,
    c_name varchar2(40),
    age number(3),
    gender varchar2(8),
    phone_no number(10),
    pan varchar2(10),
    email_id varchar2(50)
);

create sequence cust_seq
start with 100 increment by 1;
