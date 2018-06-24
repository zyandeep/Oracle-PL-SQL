create table principal (
    p_id number(5) primary key,
    p_name varchar2(30),
    qualification varchar2(20),
    experience number(3),
    address varchar2(50)
);

create table collage (
    c_id number(5) primary key,
    p_id number(5) references principal,
    c_name varchar2(50),
    address varchar2(50)
);


insert into collage values
(1, 3, 'JEC', 'Jorhat');
insert into collage values
(2, 1, 'AEC', 'Guwahati');
insert into collage values
(3, 4, 'B.Boruah', 'Guwahati');
insert into collage values
(4, 2, 'CKB', 'Sonitpur');

insert into principal values
(1, 'A.Bora', 'Ph.D', 12, 'Sonitpur');
insert into principal values
(2, 'B.Deka', 'Ph.D', 9, 'Guwahati');
insert into principal values
(3, 'R.Sarma', 'Ph.D', 6, 'Jorhat');
insert into principal values
(4, 'D.Hazarika', 'Ph.D', 8, 'Guwahati');
