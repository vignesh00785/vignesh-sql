
create database vk;
use vk;
create table ana_associate (S_no int auto_increment primary key , client_name varchar(20) not null, place varchar(25)not null,design varchar(25),profit int not null);
desc ana_associate;
insert into ana_associate (client_name,place,design,profit) values('texem','belgium','t_shirt',10000),
('scorpion_bay','france','mens_shirt',20000),
('leader','italy','womens_tshirt',40000);
select*from ana_associate;

use vk;
create table vk_clothing (columns_id int auto_increment primary key, product_name varchar(20), price_per_unit int , quantity int);
insert into vk_clothing (product_name,price_per_unit,quantity) values('tshirt',2500,10),('shirts',5000,10),('track_pants',3000,10),('chudidhar',6000,10);
create view myview as select price_per_unit*quantity as total_sales, product_name from vk_clothing;
select*from myview;


use vk;
create table atlas ( id int auto_increment primary key,name varchar(20),age int);
insert into atlas (name,age) values( 'Bob',21),('Sam',19),('Jill',18),('Jim',21),('Sally',19),('Jess',20),('Will',21);
select* from atlas;
select sum(age) from atlas;
select age,count(age) from atlas group by age;


use vk;
create table vk_constructions (Division_id int,Year int, Revenue int);
insert into vk_constructions values(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select * from vk_constructions;
select  Division_id from vk_constructions where Revenue >0 and year =2021;