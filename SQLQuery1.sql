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

update employee_info set job = '.net developer' where empName = 'Arun';
update employee_info set job = 'Software Developer' where empName = 'Arun';

Select * from employee_info;

delete from employee_info where empid = 3;
Select * from employee_info;

Order BY

select * from employee_info order by empSalary asc;
select * from employee_info order by empSalary desc;

Aggregate Function or Group Function

select sum(empSalary) from employee_info; 
select min(empSalary) from employee_info; 
select max(empSalary) from employee_info; 
select avg(empSalary) from employee_info; 
select count(empSalary) from employee_info;

Numeric Functions

select abs(-5);

select ceiling(77.2);

select floor(77.8); 

select sign(10) , sign(-10), sign(0);

select square(5), sqrt(64), pi(), cos(30), tan(45), sin(15), cot(90));

select exp(1);


String Function

select len('arun roshan');

select empName, len(empName) from employee_info;

select empName, upper(empName) from employee_info;

select empName, lower(empName) from employee_info;

select rtrim('hi ji		');
select ltrim('		hi ji');

select substring('MicroSoft',1,5);
select empName, substring(empName, 1, 3) from employee_info;

select empName, replace('Arun', 'run', 'RUN') from employee_info where empid=1;

select replicate('Dummy', 5);



alter table employee_info add email varchar(40) ;
alter table employee_info add password varchar(40) ;

update employee_info set email ='arun234@gmail.com', password= 'Arun123' where empId = 1;
update employee_info set email = 'roshan234@gmail.com', password = 'Roshan123' where empId = 2;

Boolean operators

select * from employee_info 
	where email = 'arun234@gmail.com'
	and password = 'Arun123';


select * from employee_info 
	where email = 'arun234@gmail.com'
	or empName = 'Arun';


select * from employee_info 
	where not empName = 'Arun';

select * from employee_info 
	where empName != 'Arun';

Date & Time Function

select getdate(), current_timestamp, sysdatetime(), datename(month, current_timestamp), datename(year, current_timestamp), datediff(year, '1995', current_timestamp), dateadd(year, 100, current_timestamp);

insert into employee_info values(03,'Dhanush',540000,'SFE Developer','23456',10,'dhaush21@gmail.com','Dhanush12');
insert into employee_info values(04,'Sunil',55000,'SDE.Developer','97638',11,'sunil987@gmail.com','Sunil321'); 
insert into employee_info values(05,'Prakar',61000,'Java Developer','68238',11,'prakar@gmail.com','Prakar45'); 
insert into employee_info values(06,'Harshit',62322,'FED','93455',12,'harshit@gmail.com','Harshit1995'); 

Group By Clause

select deptId from employee_info group by deptId;
select deptId, round(avg(empSalary), 2) from employee_info group by deptId; 

Having Clause

select deptId, sum(empSalary) as 'Total Salary' from employee_info group by deptId having deptId = 10;

select deptId, sum(empSalary) as 'Total Salary' from employee_info group by deptId having sum(empSalary) > 100000;

select deptId, sum(empSalary) as 'Total Salary' from employee_info where deptId = 11 group by deptId;