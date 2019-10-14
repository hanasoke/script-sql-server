create database dbtes

use dbtes

create table book (
id_book varchar(4) not null primary key,
judul_book varchar (50),
publisher varchar(50),
rak char(4),
jumlah_book int 
)

create table borrow (
id_borrow char(4) not null primary key,
id_petugas varchar (50),
id_book varchar(50),
jumlah_pinjam int
)

insert into book values('K001','Pemrograman Java','Erlangga','R001','40')
insert into book values('K002','Pemrograman C++','C++','R002','42')
insert into book values('K003','Pemrograman Phyton','Tapz','R003','57')

insert into borrow values('U001','AA0','K001',1)
insert into borrow values('U002','AA1','K001',3)
insert into borrow values('U003','AA2','K002',3)
insert into borrow values('U004','AA3','K003',2)
insert into borrow values('U005','AA4','K002',3)
insert into borrow values('U006','AA5','K003',8)
insert into borrow values('U007','AA6','K001',4)
   
select *from book
select *from borrow

create trigger insert_data_borrow 
on borrow after insert
as
update book set book.jumlah_book=book.jumlah_book-inserted.jumlah_pinjam
from inserted where book.id_book=inserted.id_book




