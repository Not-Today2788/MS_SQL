CREATE DATABASE employeeDB; 
USE employeeDB;

create table employee_info
( 
	empId integer primary key,
	empName varchar(20) not null,
	empSalary decimal(10,2) not null,
	job varchar(20),
	phone int unique,
	deptId integer not null
);


create table department_info
(
	depId integer not null,
	depName varchar(20) not null,
	depLocation varchar(50)
);

insert into employee_info values(01,'Arun',60000,'Jr.Developer','99638',10);
insert into employee_info values(02,'Roshan',65000,'Sr.Developer','99238',11); 
insert into employee_info values(03,'Sunil',63000,'Sr Developer','97238',12); 

Select * from employee_info;

select empName from employee_info;

select * from employee_info where empId = 1;