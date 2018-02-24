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

insert into Items (id, item) values (0, 'cactus');
insert into Items (id, item) values (1, 'water');
insert into Items (id, item) values (2, 'soda');
insert into Items (id, item) values (3, 'chips');
insert into Items (id, item) values (4, 'beer');
insert into Items (id, item) values (5, 'xbox');
insert into Items (id, item) values (6, 'game');
insert into Items (id, item) values (7, 'ps4');
insert into Items (id, item) values (8, 'controller');
insert into Items (id, item) values (9, 'bandaids');

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

insert into Transactions (id, item_id) values (0, 0);
insert into Transactions (id, item_id) values (1, 0);
insert into Transactions (id, item_id) values (2, 0);
insert into Transactions (id, item_id) values (3, 0);
insert into Transactions (id, item_id) values (4, 0);
insert into Transactions (id, item_id) values (5, 0);
insert into Transactions (id, item_id) values (6, 0);
insert into Transactions (id, item_id) values (7, 0);
insert into Transactions (id, item_id) values (8, 0);
insert into Transactions (id, item_id) values (9, 0);
insert into Transactions (id, item_id) values (10, 0);
insert into Transactions (id, item_id) values (11, 0);

insert into Transactions (id, item_id) values (1, 1);
insert into Transactions (id, item_id) values (2, 1);
insert into Transactions (id, item_id) values (3, 1);
insert into Transactions (id, item_id) values (4, 1);
insert into Transactions (id, item_id) values (6, 1);
insert into Transactions (id, item_id) values (7, 1);
insert into Transactions (id, item_id) values (8, 1);
insert into Transactions (id, item_id) values (10, 1);
insert into Transactions (id, item_id) values (11, 1);
insert into Transactions (id, item_id) values (12, 1);
insert into Transactions (id, item_id) values (13, 1);
insert into Transactions (id, item_id) values (14, 1);

insert into Transactions (id, item_id) values (12, 2);
insert into Transactions (id, item_id) values (13, 2);
insert into Transactions (id, item_id) values (14, 2);
insert into Transactions (id, item_id) values (5, 2);
insert into Transactions (id, item_id) values (6, 2);
insert into Transactions (id, item_id) values (7, 2);

insert into Transactions (id, item_id) values (6, 3);
insert into Transactions (id, item_id) values (7, 3);
insert into Transactions (id, item_id) values (8, 3);
insert into Transactions (id, item_id) values (9, 3);
insert into Transactions (id, item_id) values (10, 3);
insert into Transactions (id, item_id) values (11, 3);

insert into Transactions (id, item_id) values (1, 9);
insert into Transactions (id, item_id) values (2, 9);
insert into Transactions (id, item_id) values (3, 9);
insert into Transactions (id, item_id) values (4, 9);
insert into Transactions (id, item_id) values (5, 9);
insert into Transactions (id, item_id) values (6, 9);
insert into Transactions (id, item_id) values (7, 9);
insert into Transactions (id, item_id) values (8, 9);
insert into Transactions (id, item_id) values (9, 9);
insert into Transactions (id, item_id) values (10, 9);
insert into Transactions (id, item_id) values (11, 9);
insert into Transactions (id, item_id) values (12, 9);
insert into Transactions (id, item_id) values (13, 9);
insert into Transactions (id, item_id) values (14, 9);

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

insert into Transactions (id, item_id) values (0, 6);
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
insert into Transactions (id, item_id) values (18, 6);
insert into Transactions (id, item_id) values (19, 6);

insert into Transactions (id, item_id) values (13, 7);
insert into Transactions (id, item_id) values (14, 7);
insert into Transactions (id, item_id) values (18, 7);
insert into Transactions (id, item_id) values (19, 7);

insert into Transactions (id, item_id) values (0, 8);
insert into Transactions (id, item_id) values (5, 8);
insert into Transactions (id, item_id) values (6, 8);
insert into Transactions (id, item_id) values (7, 8);
insert into Transactions (id, item_id) values (8, 8);
insert into Transactions (id, item_id) values (9, 8);

insert into Transactions (id, item_id) values (12, 4);
insert into Transactions (id, item_id) values (13, 4);
insert into Transactions (id, item_id) values (14, 4);
insert into Transactions (id, item_id) values (5, 4);
insert into Transactions (id, item_id) values (6, 4);
insert into Transactions (id, item_id) values (7, 4);


