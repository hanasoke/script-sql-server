create Database Ticket
use ticket

/*membuat skema*/
create schema Pembayaran
go

--Tabel tbTiket--
create table Pembayaran.tbTiket (
ID_Transaksi varchar(8) not null Primary key,
								 constraint pkID_Transaksi
								 check (ID_Transaksi like('[A][K][0-9][0-9][0-9][0-9][0-9][0-9]')),
ID_Customer varchar(8),
kota_Customer varchar(10),
Pembayaran_Tiket int
)

insert into Pembayaran.tbTiket values ('AK000212','C001','Jakarta','60000')
insert into Pembayaran.tbTiket values ('AK000213','C002','Solo','45000')
insert into Pembayaran.tbTiket values ('AK000214','C003','Semarang','45500')
insert into Pembayaran.tbTiket values ('AK000215','C004','Medan','70500')
insert into Pembayaran.tbTiket values ('AK000216','C005','Lampung','70570')
insert into Pembayaran.tbTiket values ('AK000217','C006','Aceh','90800')
insert into Pembayaran.tbTiket values ('AK000218','C007','Pontianak','85000')
insert into Pembayaran.tbTiket values ('AK000219','C008','Makassar','80500')

select *from Pembayaran.tbTiket

select ID_Transaksi, ID_Customer from Pembayaran.tbTiket where kota_Customer = 'Jakarta'

select MIN (Pembayaran_Tiket) as HargaTerendah from Pembayaran.tbTiket

select AVG (Pembayaran_Tiket) as Ratarataharga from Pembayaran.tbTiket

select SUM (Pembayaran_Tiket) as JumlahHarga from Pembayaran.tbTiket

select count (Pembayaran_Tiket) as tabelHarga from Pembayaran.tbTiket


SELECT * FROM Pembayaran.tbTiket
Where ID_Transaksi BETWEEN 'AK000212' AND 'AK000217'
AND NOT ID_Customer IN ('C001','C004');

SELECT * from Pembayaran.tbTiket
where ID_Customer BETWEEN 'C005' AND 'C008'
order by ID_Customer;

select * from Pembayaran.tbTiket
where ID_Customer NOT BETWEEN 'C004' AND 'C008'
order by ID_Customer
















