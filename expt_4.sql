create database lab_sql_filtering;
use lab_sql_filtering;

create table Employee(
	id int auto_increment primary key,
    EmpName varchar(20),
    Designation varchar(20),
    Salary decimal(10,2),
    Dept varchar(10)
);
desc Employee;

insert into Employee(EmpName, Designation, Salary, Dept)
values('Omm','Officer',60000.00,'CS'),
('Aditya','Manager',50000.00,'Admin'),
('Dibya','Asst',20000.00,'IT'),
('Subham','HR',45000.00,'ECE'),
('Dinesh','Analyst',74000.00,'Sales'),
('Prashant','HR',56000.00,'IT'),
('Jiten','Peon',15000.00,'BMC'),
('Debasis','Officer',89000.00,'Admin'),
('Shubh','Officer',21000.00,'Sales'),
('Harsh','Peon',32000.00,'BMC');

select * from Employee;

select * from Employee where Salary between 10000 and 30000;
select * from Employee where Salary not between 10000 and 30000;

select * from Employee where Designation in ('Manager','Analyst');
select * from Employee where Designation not in ('Manager','Analyst');

select * from Employee where Salary is null;
select * from Employee where Salary is not null;

select * from Employee where Designation = 'Officer' and Salary > 50000;
select * from Employee where Designation = 'Officer' or Salary > 50000;

select * from Employee where EmpName like '%s%';
select * from Employee where EmpName like 'o%';
select * from Employee where EmpName like '%n';
select * from Employee where EmpName like '_m%';
select * from Employee where EmpName like '%y_';
select * from Employee where EmpName like '%aa%';
select * from Employee where EmpName like '%a%a%';

select * from Employee where Salary = 60000;
select * from Employee where Salary != 60000;
select * from Employee where Salary > 60000;
select * from Employee where Salary < 60000;
select * from Employee where Salary >= 60000;
select * from Employee where Salary <= 60000;

select * from Employee order by EmpName asc;
select * from Employee order by EmpName desc;

select distinct Designation from Employee;

select Designation, count(*) as EmpCount, avg(salary) as AvgSalary from Employee group by Designation;

select Designation, count(*) as EmpCount from Employee group by Designation having count(*)>2;

delete from Employee where EmpName like 'H%';

select * from Employee;		-- to check the changes

update Employee set Salary = Salary + 2000 where EmpName like 'o%';

select EmpName, Salary, Salary-(Salary * 0.05) as SalaryAfterTax from Employee;

select EmpName, Salary, (Salary * 0.10) as Bonus from Employee;

select EmpName, Salary, Salary*2 as DoubleSalary from Employee;

select EmpName, Salary, Salary*0.10 as Bonus, Salary*0.05 as Tax, (Salary + (Salary * 0.05)) as NetSalary from Employee;
