create table books_issue (
    id number(2) primary key,
    m_id number(2),
    b_id number(2),
    doi date,
    dor date,
    fine_per_day number(2),
    auto_fine number(4)
);

insert into books_issue values(1, 1, 2, to_date('07/03/2017'), sysdate, 3, null);
insert into books_issue values(2, 7, 5, to_date('09/28/2017'), to_date('02/05/2018'), 2, null);
insert into books_issue values(3, 3, 10, to_date('03/19/2017'), sysdate, 1, null);
insert into books_issue values(4, 1, 1, sysdate, null, 4, null);
insert into books_issue values(5, 5, 10, to_date('06/03/2017'), sysdate, 3, null);
insert into books_issue values(6, 9, 2, to_date('09/10/2017'), sysdate, 3, null);
insert into books_issue values(7, 2, 5, to_date('09/10/2017'), null, 4, null);
