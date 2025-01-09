--customer
create table customer(
customer_Id int not null,
first_name nvarchar(50),
last_name nvarchar(50),
email nvarchar(100),
password_ nvarchar(50),
city nvarchar(50),
street nvarchar(50),
zip_code nvarchar(50),
primary key(customer_Id)
)
create table cus_phone(
cust_Id int not null ,
phone int,
foreign key(cust_Id) references customer (customer_Id)
)
--order
create table order_(
order_id int not null,
cus_id int not null,
day_ int ,
month_ int ,
year_ int,
Quantity int,
TotalPrice int,
PaymentMethod nvarchar(100),
Status_ nvarchar(100),
primary key(order_id),
foreign key(cus_id) references customer (customer_Id)
)
--book
create table book(
Book_Id int not null,
title nvarchar(50),
day_ int ,
month_ int ,
year_ int,
price int,
Type_ nvarchar(50),
description_ nvarchar(100),
Discount nvarchar(50),
Rank_ nvarchar(50),
number_sold int,
available_quantity int,
primary key(Book_Id)
)
--author
create table author(
author_Id int not null,
first_name nvarchar(50),
last_name nvarchar(50),
email nvarchar(100),
city nvarchar(50),
street nvarchar(50),
zip_code nvarchar(50),
primary key(author_Id)
)
create table author_phone(
auth_Id int not null ,
phone int,
foreign key(auth_Id) references author (author_Id)
)
--Relationship
create table R_OB(
OId int not null ,
BId int not null ,
foreign key(OId) references order_ (order_Id),
foreign key(BId) references book (Book_Id)
)
create table R_AB(
AId int not null ,
BKId int not null ,
foreign key(AId) references author (author_Id),
foreign key(BKId) references book (Book_Id)
)