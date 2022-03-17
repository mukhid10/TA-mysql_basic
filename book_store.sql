show databses;
create databse bookstore;
use bookstore;
desc bookstore;

create table books(
    id int auto_increment primary key,
    author1 not null varchar(100),
    author2 varchar(100),
    author3 varchar(100),
    title varchar(100),
    deskripsi text,
    place_sell char(3),
    stock int DEAFAULT 0,
    creation_date datetime timestamp("2022-03-17", "05:10:11") default current_timetamp() update current_timetamp()
);

Alter table books 
    price int default 0,
    status enum('available', 'out of stock', 'limited'),
    drop column place_sell;

insert into books(author1, author2, author3, title, deskripsi, stock, creation_date) values
("nana", "nini", "nunu", "hakku-librari", "jgn lupa membaca", 20, current_timetamp(), 15000, limited),
("sasa", "sisi", "null", "skill-librari", "sempatkan membaca", 30, current_timetamp(), 17000, available),
("lala", "null", "lulu", "hakku-librari", "jgn lupa membaca", 20, current_timetamp(), 15000, limited);

select * books;
select id as ID, author1 as A1, author2 as A2, author3 as A3 from books;
select * from books where id = 2;
select * from books where id = 2 and stock = not null; 
select * from books where id = 2 or id = 3; 
select * from books where not id = 2; 
select * from books books order by id asc;
select * from books limit 3;
update books set author1="nono", price="10000" where id= 1;
delete from books where id=3;

