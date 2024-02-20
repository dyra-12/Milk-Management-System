##Q.1
create database milk_managemen_systems; ## CREATE DATABASE NAMED "milk_manage_system"
use milk_managemen_systems; ## To select a particular database to work with

##CREATE TABLES MILK, FARMER, SOCIETY, TOWN, MILK,BILLS WITH PRIMARY KEY DEFINED
create table MILK(Membership_ID int not null,Date date,Time time,Type_of_Milk varchar(40),
Quantity int, primary key(Membership_ID));
create table N_MILK(Type_of_Milk varchar(2) not null ,FAT int,SNF int, primary key (Type_of_Milk) );
create table FARMER(Membership_ID int not null,name varchar(45),ADDRESS varchar(45), primary key(Membership_ID));
create table SOCIETY(Society_ID int not null,Supervisor_Name varchar(45), Number int,primary key(Society_ID));
create table CITY(Society_ID int not null,City_Name varchar(20),primary key(Society_ID));
create table TOWN(Society_ID int not null,Town_Name varchar(20),primary key(Society_ID));
create table MILK_RECEIVED(Society_no int not null,Date date,Time time,Vehicle_No varchar(10),
Quantity_of_Milk int,FAT int,SNF int, primary key(Society_no));
create table BILLS(Membership_ID int not null, Farmer_name varchar(30),Payment_Period date,
 Amount int,Quantity_of_Milk int, primary key(Membership_ID));

## ADD FOREIGN KEYS
ALTER TABLE MILK ADD FOREIGN KEY (Membership_ID) REFERENCES FARMER (Membership_ID);
ALTER TABLE BILLS ADD FOREIGN KEY (Membership_ID) REFERENCES FARMER (Membership_ID);

##Q.1 which farmers produce buffalo milk
Insert into FARMER(Membership_ID,name,ADDRESS) values (1001,"Ram","Malana");
Insert into FARMER(Membership_ID,name,ADDRESS) values (1002,"Suraj","Majuli");
Insert into FARMER(Membership_ID,name,ADDRESS) values (1003,"Akhil","Poovar");
Insert into FARMER(Membership_ID,name,ADDRESS) values (1004,"Mohit","Kasol");
Insert into FARMER(Membership_ID,name,ADDRESS) values (1005,"Naitik","Malana");

Insert into MILK(Membership_ID,Date,Time,Type_of_Milk,Quantity) values (1001,20221012,120000,"BM",20);
Insert into MILK(Membership_ID,Date,Time,Type_of_Milk,Quantity) values (1002,20221012,113000,"CM",40);
Insert into MILK(Membership_ID,Date,Time,Type_of_Milk,Quantity) values (1003,20221013,104500,"BM",30);
Insert into MILK(Membership_ID,Date,Time,Type_of_Milk,Quantity) values (1004,20221013,122500,"CM",30);
Insert into MILK(Membership_ID,Date,Time,Type_of_Milk,Quantity) values (1005,20221013,123000,"CM",40);

insert into BILLS(Membership_ID,Farmer_Name,Payment_Period,Amount,Quantity_of_Milk) values
 (1001,"Ram",20221112,200,4);
 insert into BILLS(Membership_ID,Farmer_Name,Payment_Period,Amount,Quantity_of_Milk) values
 (1002,"Suraj",20221113,100,2);
 insert into BILLS(Membership_ID,Farmer_Name,Payment_Period,Amount,Quantity_of_Milk) values
 (1003,"Akhil",20221112,50,1.5);
 insert into BILLS(Membership_ID,Farmer_Name,Payment_Period,Amount,Quantity_of_Milk) values
 (1004,"Mohit",20221114,150,3);
 insert into BILLS(Membership_ID,Farmer_Name,Payment_Period,Amount,Quantity_of_Milk) values
 (1005,"Naitik",20221114,20,1);

select * from MILK;
SELECT MILK.Type_of_Milk,FARMER.NAME
FROM MILK
INNER JOIN FARMER
ON MILK.Membership_ID = FARMER.Membership_ID
where Type_of_Milk="BM" ;



##Q.2 which socities in city does Ram deliver milk

insert into SOCIETY(Society_ID,Supervisor_Name, Number) values (2140,"Ram",999999999);
insert into SOCIETY(Society_ID,Supervisor_Name, Number) values (2141,"Suraj",888888888);
insert into SOCIETY(Society_ID,Supervisor_Name, Number) values (2142,"Akhil",777777777);
insert into SOCIETY(Society_ID,Supervisor_Name, Number) values (2143,"Mohit",666666666);
insert into SOCIETY(Society_ID,Supervisor_Name, Number) values (2144,"Naitik",666666666);

insert into CITY(Society_ID,City_Name) values (2140,"Ispatika Apt");
insert into CITY(Society_ID,City_Name) values (2141,"Aashirvad Apt");
insert into CITY(Society_ID,City_Name) values (2142,"Salarpuri Apt");
insert into CITY(Society_ID,City_Name) values (2143,"Asha Apt");
insert into CITY(Society_ID,City_Name) values (2144,"Vatika Apt");

SELECT *
FROM SOCIETY
NATURAL JOIN CITY 
where Supervisor_Name="Ram";

select * from SOCIETY;

##Q.3 show vehicle_no of vehicles which delivered milk on 24/10/2022
insert into MILK_RECEIVED(Society_no,Date,Time,Vehicle_No,Quantity_of_Milk,FAT,SNF) 
values (2140,20221112,152300,"HR47AF1371",20,1,2);
insert into MILK_RECEIVED(Society_no,Date,Time,Vehicle_No,Quantity_of_Milk,FAT,SNF) 
values (2141,20221113,132300,"HR47AF4253",20,3,4);
insert into MILK_RECEIVED(Society_no,Date,Time,Vehicle_No,Quantity_of_Milk,FAT,SNF) 
values (2142,20221113,142300,"HR47AF4567",20,3,2);
insert into MILK_RECEIVED(Society_no,Date,Time,Vehicle_No,Quantity_of_Milk,FAT,SNF) 
values (2143,20221113,153300,"HR47AF2153",20,1,2);
insert into MILK_RECEIVED(Society_no,Date,Time,Vehicle_No,Quantity_of_Milk,FAT,SNF) 
values (2144,20221114,154000,"HR47AF7456",20,1,4);
## 
select Vehicle_No from MILK_RECEIVED where Date=20221113;
select * from MILK_RECEIVED;

##Q.4  show records in decreasing order, which have amount more than 100.
select * from BILLS;
select * from BILLS where Quantity_of_Milk>1 order by Amount desc;





