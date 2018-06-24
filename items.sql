create table item_master (
    im_id number(3) primary key, 
    i_name varchar2(30), 
    unit_price number(3),
    available_stock number(4)
);

create table item_sale (
    is_id number(3) primary key, 
    im_id number(3) references item_master, 
    quantity number(3), 
    amount number(5)
);

insert into item_master values(1, 'T-shirt', 600, 100);
insert into item_master values(2,'Pen',10, 50);
insert into item_master values(3, 'Pencil', 5, 60);

insert into item_sale values(1, 1, 2, 1200);
insert into item_sale values(2, 3, 10, 50);
