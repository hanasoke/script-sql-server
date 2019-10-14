create database DBmobilio

use DBmobilio

create table user_ (
id_user char(4) not null primary key,
name varchar(50),
telephone_number varchar(50),
address varchar(50)
)

select *from user_

insert into user_ values ('A001','justin bieber ','0821-8453-8820','jln nusa jelek III no 36 jakarta timur' )

insert into user_ values ('A002','gigi hadid ','0826-8557-6690','Jln mawar putih 8 no 45 jakarta barat' )
 
insert into user_ values ('A003','messi simanjuntak','0811-7777-8888','Jln anak muda 10 no 78 jakarta pusat' ) 

insert into user_ values ('A004','hanas bayu B.iCT','0808-0808-0808','Jln dynamo zygreb 3 no 70 jakarta selatan ' ) 

insert into user_ values ('A005','ferdiansyah B.iCT','0854-8869-3321','Jln barcelona barat 12 no 98 jakarta pusat' ) 
	


create table employee (
id_employee char(4) not null primary key,
name varchar(50),
address varchar(50),
)
select *from employee 

insert into employee values ('E001','Lee Dae hun','Jln hangdaeng barat no 09 jakarta timur' )

insert into employee values ('E002','kim jae hun','Jln rosalia timur no 90 jakarta timur' )

insert into employee values ('E003','david de andreas','Jln makara 1 no 69 jakarta timur ' )

insert into employee values ('E004','lionel michael','Jln barcelona timur no 69 jakarta timur' )

insert into employee values ('E005','alexander','Jln masalah no 69 jakarta timur' )

insert into employee values ('E006','burhan','Jln sesama no 1 jakarta timur' )

insert into employee values ('E007','markinah','Jln sesama no 3 jakarta timur' )

insert into employee values ('E008','painem','Jln sesama no 5 jakarta timur' )

insert into employee values ('E009','paijo','Jln sesama no 26 jakarta timur' )

insert into employee values ('E010','bambang','Jln sesama no 29 jakarta timur' )

create table supervisors (
id_employee char(4) not null primary key,
bonus int,
salary int
)

select *from supervisors

insert into supervisors values ('E009','100000','5000000' )

insert into supervisors values ('E010','200000','5000000' )

create table driver (
id_employee char(4) not null primary key,
works_day int,
wages int
)

select *from driver 

insert into driver values ('E001','14','2800000')

insert into driver values ('E002','7','1400000')

insert into driver values ('E003','15','3000000')

insert into driver values ('E004','0','0')

insert into driver values ('E005','0','0')

drop table driver 

drop table driver 

create table marketing (
id_employee char(4) not null primary key,
works_day int,
wages int
)

select *from marketing

insert into marketing values ('E006','1','200000' )

insert into marketing values ('E007','1','200000' )

insert into marketing values ('E008','1','200000' )
 

create table car (
license_plat char(7) not null primary key,
car_type varchar(50),
color varchar(50),
manufacture_years varchar(50),
status varchar (50)
)

select *from car 

insert into car values ('B7777XX','INOVA','ABU-ABU','2017','AVAILABLE')

insert into car values ('B1121XX','FORTUNER','HITAM','2018','UNAVALABLE' )

insert into car values ('B2211XX','PAJERO','PUTIH','2017','UNAVAILABLE')

insert into car values ('B3333XX','PAJERO','HITAM','2018','AVAILABLE' )

insert into car values ('B3131XX','FORTUNER','PUTIH','2018','AVAILABLE' )

insert into car values ('B3120XX','ERTIGA','MERAH','2015','AVAILABLE' )

insert into car values ('B3033XX','AVANZA','PUTIH','2018','AVAILABLE' )

DROP TABLE CAR 

create table booking (
id_booking char(4) not null primary key,
id_user char(4),
license_plat char(7),
id_employee char(4),
Order_Date varchar (50),
Date_of_use varchar (50),
Duration varchar (50)
foreign key (id_employee) references employee (id_employee),foreign key (id_user) references user_ (id_user)
)

select *from booking

insert into booking values ('B001','A001','B7777XX',' E001',' 01/08/2018',' 02/08/2018','14 Days')

insert into booking values ('B002','A002','B3120XX',' E002',' 02/07/2018',' 04/07/2018','7 Days')

insert into booking values ('B003','A003','B3033XX','null',' 03/09/2018',' 03/09/2018','14 Days')

insert into booking values ('B004','A004','B3333XX','null',' 02/11/2018',' 02/11/2018','10 Days')

insert into booking values ('B005','A005','B3131XX','E003','01/10/2018','05/10/2018','15 Days')

drop table booking

create table transaction_ (
id_transaction char(4) not null primary key,
id_booking char(4),
daily_cost int,
taking_date varchar(50),
duration varchar(50),
return_date varchar(50),
driver_cost int,
over_charge int,
statuss varchar(10)
foreign key (id_booking) references employee (id_booking)
)

drop table transactions

insert into booking values ('T001','B001','500000','02/08/2018','14 Days',' 18/08/2018','2800000','400000','Finished')

create trigger insert_data_transactionson tukar after insert as update tukar set tukar.total_ordered = transactions.food_menu + inserted.drink_menu from inserted where transactions.id_transaction = inserted.id_transaction
