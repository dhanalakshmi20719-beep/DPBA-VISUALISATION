create database britanniadb;
use britanniadb;
create table employees (employee_id int auto_increment primary key,name varchar(100),department varchar(100),salary varchar(100));
insert into employees (name,department,salary) values ('sudha', 'production',20000), ('manoj', 'sales', 25000), ('renu', 'billing', 18000);
select * from employees;


-- Create user --

CREATE USER 'sudha'@'localhost' identified BY '123456789';

-- GRANT PERMISSION--

grant select on britanniadb.* to 'sudha'@'localhost';
grant insert on britanniadb.*to 'sudha'@'localhost';

flush privileges;





-- revoke--


revoke insert on britanniadb.* from 'sudha'@'localhost';



 

