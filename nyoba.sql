create database nyoba

use nyoba

create table barang(
id_barang int primary key not null,
nama_barang varchar(100),
stock int
)

select *from barang

drop table barang

create table peminjaman (
id_peminjaman int primary key,
NIS int,
id_barang int,
jumlah_peminjaman int,
tgl_peminjaman varchar(50),
tgl_pengembalian varchar(50),
status varchar(50),
foreign key (id_barang) references barang(id_barang)
)

select *from peminjaman

drop table peminjaman

create table siswa(
id_siswa int primary key,
nama_siswa varchar(100),
gender varchar(10),
kelas varchar(10),
tempat_lahir varchar(20),
tanggal_lahir varchar(20),
alamat_rumah varchar(50),
no_telp bigint,
nama_wali varchar(50),
password varchar(20) 
)

select *from siswa

drop table siswa

create table staff(
id_staff int primary key,
nama_staff varchar(100),
gender varchar(20),
tempat_lahir varchar(20),
tanggal_lahir varchar(20),
alamat_rumah varchar(50),
no_telp bigint,
jabatan varchar(20),
password varchar(20)
)

select *from staff

drop table staff