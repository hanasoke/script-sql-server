create database Cinema 
use Cinema 

/*create schema*/

create schema Payment
go
--Table tbticket--
create table Payment.tbticket(
ID_Transaction varchar (8) not null Primary key,
			   constraint pkID_Transaction
			   check (ID_Transaction like('[A][K][0-9][0-9][0-9][0-9][0-9][0-9]')),
ID_Client varchar(8),
City_Client varchar(10),
Ticket_Payment int
)

insert into Payment.tbticket values ('AK000212','C001','Jakarta','60000')
insert into Payment.tbticket values ('AK000213','C002','Solo','45000')
insert into Payment.tbticket values ('AK000214','C003','Semarang','45500')
insert into Payment.tbticket values ('AK000215','C004','Medan','70500')
insert into Payment.tbticket values ('AK000216','C005','Lampung','70570')
insert into Payment.tbticket values ('AK000217','C006','Aceh','90800')
insert into Payment.tbticket values ('AK000218','C007','Pontianak','85000')
insert into Payment.tbticket values ('AK000219','C008','Makassar','80500')

select *from Payment.tbticket

drop table Payment.tbticket

select ID_Transaction, ID_Client from payment.tbticket where City_Client = 'jakarta'

select MIN (Ticket_Payment) as HargaTerendah from Payment.tbticket

select AVG (Ticket_Payment) as Ratarataharga from Payment.tbticket

select SUM (Ticket_Payment) as JumlahHarga from Payment.tbticket 

select count (Ticket_Payment) as tabelharga from Payment.tbticket

SELECT * FROM Payment.tbticket
WHERE ID_Transaction BETWEEN 'AK000212' AND 'AK000217'
AND NOT ID_Client IN ('C001','C004');

select * from Payment.tbticket
where ID_Client BETWEEN 'C005' AND 'C008'
order by ID_Client;

select * from Payment.tbticket
where ID_Client NOT BETWEEN 'C004' AND 'C008'
order by ID_Client;


