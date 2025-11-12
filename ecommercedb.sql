create database e_commerce;
use e_commerce;
create table customers (customer_id int auto_increment primary key, name varchar(100) not null, phonenumber varchar(10) not null, emailid varchar(100));
create table products (product_id int auto_increment primary key, productname varchar(100) not null, category varchar(50) not null);
create table orders (order_id int auto_increment primary key, ordername varchar(100) not null, orderdate date not null, customer_id int not null, product_id int not null,
 foreign key (customer_id) references customers(customer_id), foreign key (product_id) references products (product_id)); 
 insert into customers (name,phonenumber,emailid) values ('suganya','9876543223','suganya@gmail.com'), ('amizh','7834562434','amizh@gmail.com'), ('karthik','8866453212','karthik@gmail.com'), 
 ('alex','9678654321','alex@yahoo.com');
 insert into products (productname,category) values ('laptop', 'electronics'), ('hatsun ghee', 'grocery'), ('plastic animals set','babys toys'), ('pen','stationery'); 
select * from customers;
select * from products;
select * from orders;
update customers set name = 'bhavani' where customer_id = 1;
alter table customers add age int;
update customers set age = case when customer_id = 1 then '22'
when customer_id = 2 then '25'
when customer_id = 3 then '20' 
when customer_id = 4 then '23' end;
delete from customers where name = 'bhavani';
alter table customers add city varchar(100);
update customers set city = case when customer_id = 1 then 'chennai'
when customer_id = 2 then 'trichy' 
when customer_id = 3 then 'coimbatore'
when customer_id = 4 then 'madurai' end;
set sql_safe_updates = 0;