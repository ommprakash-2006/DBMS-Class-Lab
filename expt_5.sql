 use sql_constraint;

create table Employee(
	Emp_ID int auto_increment primary key,
    Emp_Name varchar(20),
    Designation varchar(10),
    Salary decimal(10,2),
    Dept varchar(20),
    JoinDate date
)auto_increment=1000;

desc Employee;

insert into Employee(Emp_Name, Designation, Salary, Dept, JoinDate)
values ('Omm', 'Officer', 60000.56, 'CS', '2019-01-01'),
('Rahul', 'HR', 70000.00, 'Sales', '2022-08-01'),
('Amit', 'Analyst', 50000.23, 'IT', '2016-09-09'),
('Sradha', 'Manager', 48000.76, 'Banking', '2024-05-27');

select * from Employee;

select Emp_Name,upper(Emp_Name) as UPPER, lower(Emp_Name) as LOWER from Employee;

select Emp_Name, length(Emp_Name) as LENGTH from Employee;

select Emp_Name, Designation, concat(Emp_Name,' - ', Designation) as Name_Dsgn from Employee;

select Emp_Name, substring(Emp_Name,1,3) as First_Three from Employee;

select Emp_Name, Salary, round(Salary) as ROUND from Employee;

select Emp_Name, Salary, abs(Salary - 6000) as deduction from Employee;

select curdate() as Today, now() as CurDateTime;

select Emp_Name, JoinDate, round(datediff(curdate(),JoinDate)/365,1) as Service_Year from Employee;

select count(*) as EmpCount, max(Salary) as MaxSalary, min(Salary) as MinSalary, avg(Salary) as AvgSalary, sum(Salary) as TotalSalary from Employee;

select Dept, count(*) as EmpCount, max(Salary) as MaxSalary, min(Salary) as MinSalary, avg(Salary) as AvgSalary, sum(Salary) as TotalSalary from Employee group by Dept;
