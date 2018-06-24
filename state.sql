create table state (
    s_id number primary key,
    s_name varchar2(30)
);


create table district (
    d_id number primary key,
    s_id number references state,
    d_name varchar2(30)
);


create table district_population (
    dp_id number primary key,
    s_id number references state,
    d_id number references district,
    population number
);
 
 
insert into state values(1, 'Assam');
insert into state values(2, 'Arunachal');
 
insert into district values(1, 1, 'Jorhat');
insert into district values(2, 1, 'Nagaon');
insert into district values(3, 1, 'Borpeta');
insert into district values(4, 2, 'Tawang');
insert into district values(5, 2, 'Tirap');

insert into district_population values(1, 1, 1, 500000);  
