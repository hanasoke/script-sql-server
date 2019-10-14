create database DBKonoha

use DBKonoha

create table ninja(
id_ninja char(4) not null primary key,
nama_ninja varchar(50),
alamat_ninja varchar(50),
jabatan_ninja varchar(50)
)

insert into ninja values ('K001','Boruto','Konoha','Chunin')
insert into ninja values ('K002','Naruto','Konoha','Hokage')
insert into ninja values ('S003','Gara','Sunna','Hokage')
insert into ninja values ('A001','Nagato','Akatsuki','Leader')
insert into ninja values ('A002','Konan','Akatsuki','Fellow')

insert into ninja values ('S001','Temari','Konoha','Vice-Hokage')

select *from ninja

update ninja set nama_ninja = 'Shikamaru' where id_ninja = 'S001'

delete from ninja where id_ninja = 'A002'

drop table ninja

create table tugas_ninja(
id_ninja char(4) not null primary key,
tugas_ninja varchar(50),
durasi_ninja varchar(50)
)

insert into tugas_ninja values ('S001','helping hokage','10 Hours')
insert into tugas_ninja values ('A001','Catch Jinjuriki','12 Hours')
insert into tugas_ninja values ('K001','Study','7 Hours')

select *from tugas_ninja

update tugas_ninja set tugas_ninja = 'Save the Village' where id_ninja = 'A001'

create table klan_ninja (
id_ninja char(4) not null primary key,
klan varchar(50)
foreign key (id_ninja) references tugas_ninja(id_ninja)
)

insert into klan_ninja values('K001','Uzumaki')
insert into klan_ninja values('S001','Sunnagakure')

select *from klan_ninja

drop table klan_ninja

