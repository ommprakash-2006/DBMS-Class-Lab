create database sql_constraint;
use sql_constraint;

create table Dept(
	DeptID int primary key,
    DeptName varchar(10) not null
);
desc Dept;

insert into Dept(DeptID,DeptName)
values(101,'CSE'),(102,'ECE'),(103,'EEE'),(104,'BT');

select * from Dept;

create table Employee(
	EmpID int primary key,
    EmpName varchar(20) not null,
    Email varchar(20) unique,
    MobileNo varchar(20),
    Salary decimal(10,2) default 20000.00,
    JoinDate date default (current_date),
    DeptID int
);
desc Employee;

alter table Employee add constraint fk_emp_dept foreign key (DeptID) references Dept(DeptID);

alter table Employee add constraint chq_salary check (Salary >= 10000);

alter table Employee 

insert into Employee(EmpID,EmpName,Email,MobileNo,Salary,JoinDate,DeptID)
values()