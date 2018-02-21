PRAGMA foreign_keys = ON;
.headers on
.mode column

drop table if exists Items;
drop table if exists Transactions;
drop table if exists Orders;

create table Items(
    id integer primary key,
    item text
);

create table Orders(
    id integer primary key
);

create table Transactions(
    id integer,
    item_id integer,
    foreign key (id) references Orders(id),
    foreign key (item_id) references Items(id)
);

insert into Items (id, item) values (0, 'Hot chocolate');
insert into Items (id, item) values (1, 'Marshmellows');
insert into Items (id, item) values (2, 'Sandwhich');
insert into Items (id, item) values (3, 'Soda');
insert into Items (id, item) values (4, 'Chips');
insert into Items (id, item) values (5, 'Bagel');
insert into Items (id, item) values (6, 'Coffee');
insert into Items (id, item) values (7, 'Cream Cheese');
insert into Items (id, item) values (8, 'Cigarrettes');
insert into Items (id, item) values (9, 'Gum');

insert into Orders (id) values (0);
insert into Orders (id) values (1);
insert into Orders (id) values (2);
insert into Orders (id) values (3);
insert into Orders (id) values (4);
insert into Orders (id) values (5);
insert into Orders (id) values (6);
insert into Orders (id) values (7);
insert into Orders (id) values (8);
insert into Orders (id) values (9);
insert into Orders (id) values (10);
insert into Orders (id) values (11);
insert into Orders (id) values (12);
insert into Orders (id) values (13);
insert into Orders (id) values (14);
insert into Orders (id) values (15);
insert into Orders (id) values (16);
insert into Orders (id) values (17);
insert into Orders (id) values (18);
insert into Orders (id) values (19);


insert into Transactions (id, item_id) values (0, 6);
insert into Transactions (id, item_id) values (1, 6);
insert into Transactions (id, item_id) values (2, 6);
insert into Transactions (id, item_id) values (3, 6);
insert into Transactions (id, item_id) values (4, 6);
insert into Transactions (id, item_id) values (5, 6);
insert into Transactions (id, item_id) values (6, 6);
insert into Transactions (id, item_id) values (7, 6);
insert into Transactions (id, item_id) values (8, 6);
insert into Transactions (id, item_id) values (9, 6);
insert into Transactions (id, item_id) values (10, 6);
insert into Transactions (id, item_id) values (11, 6);
insert into Transactions (id, item_id) values (12, 6);
insert into Transactions (id, item_id) values (13, 6);
insert into Transactions (id, item_id) values (14, 6);
insert into Transactions (id, item_id) values (15, 6);
insert into Transactions (id, item_id) values (16, 6);
insert into Transactions (id, item_id) values (17, 6);
insert into Transactions (id, item_id) values (18, 6);
insert into Transactions (id, item_id) values (19, 6);

insert into Transactions (id, item_id) values (0, 5);
insert into Transactions (id, item_id) values (1, 5);
insert into Transactions (id, item_id) values (2, 5);
insert into Transactions (id, item_id) values (3, 5);
insert into Transactions (id, item_id) values (4, 5);
insert into Transactions (id, item_id) values (5, 5);
insert into Transactions (id, item_id) values (6, 5);
insert into Transactions (id, item_id) values (7, 5);
insert into Transactions (id, item_id) values (8, 5);
insert into Transactions (id, item_id) values (9, 5);
insert into Transactions (id, item_id) values (10, 5);
insert into Transactions (id, item_id) values (11, 5);
insert into Transactions (id, item_id) values (12, 5);
insert into Transactions (id, item_id) values (13, 5);
insert into Transactions (id, item_id) values (14, 5);
insert into Transactions (id, item_id) values (15, 5);

insert into Transactions (id, item_id) values (5, 7);
insert into Transactions (id, item_id) values (6, 7);
insert into Transactions (id, item_id) values (7, 7);
insert into Transactions (id, item_id) values (8, 7);
insert into Transactions (id, item_id) values (9, 7);
insert into Transactions (id, item_id) values (10, 7);
insert into Transactions (id, item_id) values (11, 7);
insert into Transactions (id, item_id) values (12, 7);
insert into Transactions (id, item_id) values (13, 7);
insert into Transactions (id, item_id) values (14, 7);
insert into Transactions (id, item_id) values (15, 7);

insert into Transactions (id, item_id) values (5, 8);
insert into Transactions (id, item_id) values (6, 8);
insert into Transactions (id, item_id) values (7, 8);
insert into Transactions (id, item_id) values (8, 8);
insert into Transactions (id, item_id) values (9, 8);
insert into Transactions (id, item_id) values (10, 8);
insert into Transactions (id, item_id) values (11, 8);
insert into Transactions (id, item_id) values (12, 8);
insert into Transactions (id, item_id) values (13, 8);

insert into Transactions (id, item_id) values (0, 7);
insert into Transactions (id, item_id) values (1, 7);
insert into Transactions (id, item_id) values (2, 7);
insert into Transactions (id, item_id) values (3, 7);
insert into Transactions (id, item_id) values (5, 7);
insert into Transactions (id, item_id) values (6, 7);
insert into Transactions (id, item_id) values (7, 7);
insert into Transactions (id, item_id) values (8, 7);
insert into Transactions (id, item_id) values (9, 7);

insert into Transactions (id, item_id) values (4, 9);
insert into Transactions (id, item_id) values (5, 9);
insert into Transactions (id, item_id) values (6, 9);
insert into Transactions (id, item_id) values (7, 9);
insert into Transactions (id, item_id) values (8, 9);
insert into Transactions (id, item_id) values (9, 9);
insert into Transactions (id, item_id) values (10, 9);