create database DBCcit

use DBCcit

create table karyawan(
id_karyawan char(4) not null primary key,
nama varchar(50),
alamat varchar(50)
)

select *from karyawan

create table mahasiswa(
id_mahasiswa char(4) not null primary key,
nama_mahasiswa varchar(50),
id_karyawan char(4)
foreign key(id_karyawan) references karyawan(id_karyawan)
)

select *from mahasiswa

insert into karyawan values ('K001','Sasuke','Solo')

insert into karyawan values ('K002','Odie','Semarang')

insert into karyawan values ('K003','Ferdy','Semarang')

insert into karyawan values ('K004','Sasuke','Aceh')

insert into mahasiswa values ('S001','Naruto','K001')

insert into mahasiswa values ('S002','Niko','K003')

insert into mahasiswa values ('S003','Hanas','K002')

insert into mahasiswa values ('S004','Jarwo','K004')