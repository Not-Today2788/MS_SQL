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