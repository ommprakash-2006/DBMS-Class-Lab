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
('Aditya','Manager',50000.00,'CS'),
('Dibya','EMP',20000.00,'CS'),
('Subham','HR',45000.00,'CS'),
('Dinesh','Analyst',74000.00,'CS'),
('Prashant','HR',56000.00,'CS'),
('Jiten','Peon',15000.00,'CS'),
('Debasis','Officer',89000.00,'CS'),
('Shubh','Officer',21000.00,'CS'),
('Harsh','EMP',32000.00,'CS');