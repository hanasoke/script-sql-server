create database Movie
use Movie 

/*create schema*/
create schema client 
Go

/*create table*/
--Table tbclient--
create table client.tbclient (
ID_Client varchar(8) not null primary key,
		  constraint pkID_Client
		  check (ID_Client like ('[C][0-9][0-9][0-9]')),
Client_Name varchar(50) not null
) 

/*Input Data*/
insert into client.tbclient values 
('C001','Devin'),
('C002','Hanas'),
('C003','Sekar'),
('C004','Rooney'),
('C005','Lampard'),
('C007','Salah'),
('C008','Sterling')

select *from client.tbclient