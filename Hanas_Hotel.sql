-- Make Database
create database Hotel_Hanas

-- Activate Database
use Hotel_Hanas

create table List_Guest (
Name char(20),
Title varchar(2),
Telephone varchar(16),
Code_Guest char(6),
Code_Pay char(5),
constraint pkGuest primary key(Name)
)

drop table List_Guest

--Isi Table List Guest
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Ridwan','MR','08131567833','walk14','C014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Hanas','MR','08581936158','walk14','B014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Nurul','MS','08821238489','corp14','B014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Dodit','MR','08433181292','corp14','B014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Aris','MR','083870523650','walk14','B014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Annisa','MS','083867598022','walk14','C014')
insert into List_Guest(Name,Title,Telephone,Code_Guest,Code_Pay) values ('Hendi','MS','081287343252','corp14','B014')

-- Make Staff Table direcly shaped his Primay Key
create table Staff (
Staff_id char(6) primary key,
Name varchar(10),
Birth_Date datetime,
)

-- Isi Staff Table
insert into Staff(Staff_id,Name,Birth_Date) values ('F40214','Rifaldi','05/07/1992')
insert into Staff(Staff_id,Name,Birth_Date) values ('F40215','Jabbar','05/12/1992')
insert into Staff(Staff_id,Name,Birth_Date) values ('F40216','Rantika','04/06/1993')

-- Make Room Table, Primary Key with CONSTRAINT
create table Room (
Code_Room char(3),
Type_Room varchar(15),
Price_Room int,
Amount_Room int,
constraint pkRom primary key(Code_Room)
)

drop table Room

-- Isi Room Table --
insert into Room(Code_Room,Type_Room,Price_Room,Amount_Room) values ('SMD','Smart Double','550000','42')
insert into Room(Code_Room,Type_Room,Price_Room,Amount_Room) values ('SMT','Smart Twin','600000','28')
insert into Room(Code_Room,Type_Room,Price_Room,Amount_Room) values ('SMH','Smart Hollywood','650000','21')

-- Make Booking Table, Primary Key with Alter Table
create table Booking (
Code_Booking char(6)not null,
Name char(20),
Code_Room char(3),
Staff_id char(6),
)
alter table Booking
add constraint pkbook primary key (Code_Booking)

-- Isi Data Table Booking --
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606125','Ridwan','SMH','F40215')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606126','Hanas','SMT','F40216')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606127','Nurul','SMD','F40214')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606128','Dodit','SMD','F40214')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606129','Aris','SMH','F40215')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606130','Annisa','SMT','F40216')
insert into Booking(Code_Booking,Name,Code_Room,Staff_id) values ('606131','Hendi','SMD','F40216')

-- Make Table Jenis Guest, Primary key with Alter Table 
create table Jenis_Guest (
Code_Guest char(6) not null,
Type_Guest varchar(10)
)
alter table Jenis_Guest
add constraint pkjns primary key (Code_Guest)

-- ISI Data Table Jenis_Guest --
insert into Jenis_Guest(Code_Guest,Type_Guest) values ('corp14','corporate')
insert into Jenis_Guest(Code_Guest,Type_Guest) values ('walk14','walk in')

-- Make Payment Table, Primary Key with Constraint
create table Payment (
Code_Pay char(5),
Type_Pay varchar(20),
Invoicing varchar(10),
constraint pkPay primary key(Code_Pay)
)

drop table Payment

-- ISI Data Payment Table --
insert into Payment(Code_Pay,Type_Pay,Invoicing) values ('C014','Cash','Posting')
insert into Payment(Code_Pay,Type_Pay,Invoicing) values ('B014','Bank Transfer','Billing')

-- Relasikan Table Booking to Table List Guest
alter table Booking
add constraint fkname foreign key (Name)
references List_Guest (Name) 

-- Relasikan Table Booking to Table Room 
alter table Booking
add constraint fkroom foreign key (Code_Room) 
references Room (Code_Room)

-- Relasikan Table Booking to Table Staff
alter table Booking
add constraint fkstaff foreign key (Staff_id)
references Staff (Staff_id)

-- Relasikan Table List Guest to Table Jenis Guest
alter table List_Guest
add constraint fkguest foreign key (Code_Guest)
references Jenis_Guest (Code_Guest)

-- Relasikan Table List Guest to Table Payment
alter table List_Guest
add constraint fkpay foreign key (Code_Pay)
references Payment (Code_Pay)

-- Show All Table
select *from List_Guest
select *from Staff
select *from Room
select *from Booking
select *from Jenis_Guest
select *from Payment
-- Show Diagram

-- Now Join his Table
select Code_Booking,Title,List_Guest.Name,Telephone,Room.Code_Room,Type_Room,Price_Room,Staff.Name,Staff.Staff_id
from Booking JOIN List_Guest ON List_Guest.Name=Booking.Name
JOIN Room ON Room.Code_Room=Booking.Code_Room
JOIN Staff ON Staff.Staff_id=Booking.Staff_id

-- This is Show his Join