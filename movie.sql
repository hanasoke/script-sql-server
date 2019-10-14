create database Movie
use Movie 

/*create schema*/
create schema client 
Go

create schema officer
Go

/*create table*/
--Table tbclient--
create table client.tbclient (
ID_Client varchar(8) not null primary key,
		  constraint pkID_Client
		  check (ID_Client like ('[C][0-9][0-9][0-9]')),
Client_Name varchar(50) not null
) 

--Table tbOfficer--
create table officer.tbOfficer (
ID_Officer varchar(8) not null primary key,
		   constraint pkID_Officer
		   check (ID_Officer like ('[I][0][0-9][0-9][0-9][0-9]')),
Officer_Name varchar(50) not null,
ID_Client varchar(8) foreign key references client.tbclient (ID_Client)
		  constraint chID_Client 
		  check (ID_Client like ('[C][0-9][0-9][0-9]')),
Client_Name varchar(50) not null,
Num_Studio varchar(8) not null,
		   constraint chNum_Studio
		   check (Num_Studio like ('[R][0-9][0-9]')),
Num_Chair int not null,
		  constraint chNum_Chair
		  check (Num_Chair like ('[0-9][0-9]')),
Officer_Status varchar(10) not null,
			   check (Officer_Status like 'Active' or Officer_Status like 'Non_Active')
)

drop table officer.tbOfficer

/*Input Data*/
insert into client.tbclient values 
('C001','Devin'),
('C002','Hanas'),
('C003','Sekar'),
('C004','Rooney'),
('C005','Lampard'),
('C007','Salah'),
('C008','Sterling')

insert into officer.tbOfficer values ('I01011','Tatang','C001','Devin','R01','11','Active')
insert into officer.tbOfficer values ('I01012','Hadi','C002','Hanas','R02','12','Active')
insert into officer.tbOfficer values ('I01013','Jaenudin','C003','Sekar','R03','13','Active')
insert into officer.tbOfficer values ('I01014','Udin','C004','Rooney','R04','14','Active')
insert into officer.tbOfficer values ('I01015','Karina','C005','Lampard','R05','15','Active')
insert into officer.tbOfficer values ('I01016','Alif','C007','Salah','R06','16','Active')
insert into officer.tbOfficer values ('I01017','Guardiola','C008','Sterling','R07','17','Active')

select *from client.tbclient

select *from officer.tbOfficer 

select Officer_Name,Client_Name from officer.tbOfficer where Num_Studio = 'R05'
select Officer_Name, ID_Client from officer.tbOfficer where Num_Chair < 14

select MIN(Num_Chair) from officer.tbOfficer 

select MIN(Num_Chair) AS KursiTerkecil from officer.tbOfficer 

select MAX(Officer_Name) as Karyawan from officer.tbOfficer 

select SUM(Num_Chair) as JumlahNomorKursi from officer.tbOfficer

select COUNT(Num_Chair) as kursiterkecil from officer.tbOfficer where Num_Chair < 14

SELECT * FROM client.tbclient
WHERE ID_Client BETWEEN 'C001' AND 'C005'

SELECT * FROM client.tbclient
WHERE ID_Client NOT BETWEEN 'C001' AND 'C005'
