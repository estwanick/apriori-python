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

insert into Items (id, item) values (0, 'shoes');
insert into Items (id, item) values (1, 'underwear');
insert into Items (id, item) values (2, 'socks');
insert into Items (id, item) values (3, 'tv');
insert into Items (id, item) values (4, 'hdmi');
insert into Items (id, item) values (5, 'laces');
insert into Items (id, item) values (6, 'netflix');
insert into Items (id, item) values (7, 'book');
insert into Items (id, item) values (8, 'bookmark');
insert into Items (id, item) values (9, 'kindle');

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

insert into Transactions (id, item_id) values (7, 1);
insert into Transactions (id, item_id) values (8, 1);
insert into Transactions (id, item_id) values (9, 1);
insert into Transactions (id, item_id) values (10, 1);
insert into Transactions (id, item_id) values (11, 1);

insert into Transactions (id, item_id) values (0, 2);
insert into Transactions (id, item_id) values (1, 2);
insert into Transactions (id, item_id) values (2, 2);
insert into Transactions (id, item_id) values (3, 2);
insert into Transactions (id, item_id) values (4, 2);
insert into Transactions (id, item_id) values (5, 2);
insert into Transactions (id, item_id) values (6, 2);
insert into Transactions (id, item_id) values (7, 2);
insert into Transactions (id, item_id) values (8, 2);
insert into Transactions (id, item_id) values (9, 2);

insert into Transactions (id, item_id) values (9, 3);
insert into Transactions (id, item_id) values (10, 3);
insert into Transactions (id, item_id) values (11, 3);
insert into Transactions (id, item_id) values (12, 3);
insert into Transactions (id, item_id) values (13, 3);
insert into Transactions (id, item_id) values (14, 3);
insert into Transactions (id, item_id) values (15, 3);
insert into Transactions (id, item_id) values (16, 3);
insert into Transactions (id, item_id) values (17, 3);
insert into Transactions (id, item_id) values (18, 3);
insert into Transactions (id, item_id) values (19, 3);

insert into Transactions (id, item_id) values (9, 4);
insert into Transactions (id, item_id) values (10, 4);
insert into Transactions (id, item_id) values (11, 4);
insert into Transactions (id, item_id) values (12, 4);
insert into Transactions (id, item_id) values (13, 4);
insert into Transactions (id, item_id) values (14, 4);
insert into Transactions (id, item_id) values (15, 4);
insert into Transactions (id, item_id) values (16, 4);
insert into Transactions (id, item_id) values (17, 4);
insert into Transactions (id, item_id) values (18, 4);
insert into Transactions (id, item_id) values (19, 4);

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

insert into Transactions (id, item_id) values (0, 6);
insert into Transactions (id, item_id) values (1, 6);
insert into Transactions (id, item_id) values (2, 6);
insert into Transactions (id, item_id) values (3, 6);
insert into Transactions (id, item_id) values (4, 6);

insert into Transactions (id, item_id) values (15, 7);
insert into Transactions (id, item_id) values (16, 7);
insert into Transactions (id, item_id) values (17, 7);
insert into Transactions (id, item_id) values (18, 7);
insert into Transactions (id, item_id) values (19, 7);

insert into Transactions (id, item_id) values (2, 8);
insert into Transactions (id, item_id) values (3, 8);
insert into Transactions (id, item_id) values (4, 8);
insert into Transactions (id, item_id) values (5, 8);
insert into Transactions (id, item_id) values (6, 8);

insert into Transactions (id, item_id) values (0, 9);
insert into Transactions (id, item_id) values (1, 9);