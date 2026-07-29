create database ddl_dml;
use ddl_dml;

create table persons(
	id int auto_increment primary key,
    FirstName varchar(20) not null,
    LastName varchar(20) not null,
    Age int,
    City varchar(30),
    Email varchar(50)
);
desc persons;

insert into persons(FirstName, LastName, Age, City, Email)
values ('Omm', 'Prakash', 19, 'Raikia', 'omm2006@gmail.com'),
('Jiten', 'Naik', 16, 'Kalahandi', 'jiten163@gmail.com'),
('Prashat', 'Kumar', 20, 'JK', 'prashat420@gmail.com'),
('Debashis', 'Acharya', 18, 'Ngp', 'dev160@gmail.com');
select * from persons;

select FirstName, City from persons where City = 'Raikia';
select FirstName, LastName, City from persons;

alter table persons add Phone varchar(15);

alter table persons drop Email;

alter table persons modify Phone integer(15);


create table Employee(
	EmpID int auto_increment primary key,
    EmpName varchar(20) not null,
    Dept varchar(20),
    Salary decimal(10,2)
);
insert into Employee(EmpName, Dept, Salary)
values ('Omm','CS',70000.00),
('Jiten','BM',80000.00),
('Prashat','AI',65000.00);
select * from Employee;

rename table Employee to Staff;
select * from Staff;

update Staff set Dept = 'HR' where EmpID = 3;
select * from Staff where EmpID = 3;

delete from Staff where EmpID = 3;

truncate table persons;
desc persons;
select* from persons;

drop table persons;