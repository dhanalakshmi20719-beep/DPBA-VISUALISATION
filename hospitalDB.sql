create database hospitalDB;
use hospitalDB;
create table doctors(doctor_id int auto_increment primary key,name varchar(100),specialization varchar(100),experience_years varchar(50));
create table Patients(patients_id int auto_increment primary key,
name varchar(100),age int,gender varchar(50));
create table appointments(appointment_id int auto_increment primary key,patient_id varchar(100),doctor_id varchar(100), appointment_date date,status varchar(100));
create table treatments(treatment_id int auto_increment primary key,appointment_id varchar(100),treatment_detail varchar(100),cost varchar(100));
insert into doctors(name,specialization,experience_years) value('Dr Sharma','Cardiologist', 12),('Dr.Mehta','Neurologist',8), ('Dr.Ramesh','Orthopedic',15);
 insert into patients(name,age,gender) value ('Anjali',45,'f'), ('Rajesh',60,'m'),('Priya',30,'f'),('sunil',55,'m');
insert into appointments(appointment_id,patient_id,doctor_id,appointment_date,status) value(201,101,1,'2023-06-01','completed'),
(202,102,2,'2023-06-05','pending'),(203,103,1,'2023-06-07','completed'),(204,104,3,'2023-06-10','pending');
insert into treatments(treatment_id,appointment_id,treatment_detail,cost) value(301,201,'Heart Checkup',7000),
(302,203,'Blood Pressure Test',1500),(303,204,'Bone Fracture Care',9000);
select * from doctors;
select * from patients;
select * from appointments;
select * from treatments;