create database latihan

-- use bekasicyberpark

use latihan;

create table product(
id int IDENTITY(1,1) PRIMARY KEY,
name varchar(200),
product_type varchar(200),
stock int,
price bigint,
expired date NULL
);

SELECT * FROM product 