create database mentoring
use mentoring

/*create schema*/
create schema Student
Go

create schema Mentor
Go

/*create table*/
--Table tbStudent--
create table Student.tbStudent (
ID_Student varchar(8) not null primary key,
		  constraint pkID_Student
		  check (ID_Student like ('[S][0-9][0-9][0-9]')),
Student_Name varchar(30) not null
)

/*create table*/
--Table tbMentor--
create table Mentor.tbMentor (
ID_Mentor varchar(8) not null primary key,
		  constraint pkID_Mentor
		  check (ID_Mentor like ('[M][0-9][0-9]')),
Mentor_Name varchar(30) not null
)

--Table Mentoring--
create table Liqo (
ID_Group varchar(8) not null,
		 constraint pkID_Group 
		 check (ID_Group like ('[G][0-9]')),
Group_Name varchar(20) not null,
ID_Mentor varchar(8) foreign key references Mentor.tbMentor (ID_Mentor)
		  constraint chID_Mentor
		  check (ID_Mentor like ('[M][0-9][0-9]')),
Mentor_Name varchar(30) not null,
ID_Student varchar(8) foreign key references Student.tbStudent (ID_Student)
		   constraint chID_Student
		   check (ID_Student like ('[S][0-9][0-9][0-9]')),
Student_Name varchar(30) not null
)
drop table Liqo

insert into Student.tbStudent values 
('S001','Higuan'),
('S002','Hanas'),
('S003','Wais'),
('S004','Hafidz'),
('S005','Renaldy'),
('S007','Dzaky'),
('S008','Pedrosa'),
('S009','Abdurrahman'),
('S010','Sawaluddin')

insert into Student.tbStudent (ID_Student,Student_Name)
values('S006','Faris')

insert into Mentor.tbMentor values 
('M01','Burhan'),
('M02','Zein'),
('M03','Basalamah'),
('M04','Riza')

insert into Liqo values ('G1','Persia','M01','Burhan','S003','Wais')
insert into Liqo values ('G1','Persia','M01','Burhan','S007','Dzaky')
insert into Liqo values ('G1','Persia','M01','Burhan','S008','Pedrosa')

insert into Liqo values ('G7','Syam','M03','Basalamah','S002','Hanas')
insert into Liqo values ('G7','Syam','M03','Basalamah','S001','Higuan')
insert into Liqo values ('G7','Syam','M03','Basalamah','S005','Renaldy')

insert into Liqo values ('G3','Kuwait','M02','Zein','S004','Hafidz')

insert into Liqo (ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name)
values ('G3','Kuwait','M02','Zein','S006','Faris')

insert into Liqo (ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name)
values ('G5','Yaman','M04','Riza','S009','Abdurrahman')
insert into Liqo (ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name)
values ('G5','Yaman','M04','Riza','S010','Sawaluddin')

select *from Student.tbStudent

select *from Mentor.tbMentor

select *from Liqo

select *from Liqo
where ID_Student between 'S002' and 'S005'

select *from Liqo
where ID_Student not between 'S001' and 'S004'

select ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name from Liqo where ID_Group='G1'

select ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name from Liqo where ID_Group='G3'

select ID_Group,Group_Name,ID_Mentor,Mentor_Name,ID_Student,Student_Name from Liqo where ID_Group='G5'