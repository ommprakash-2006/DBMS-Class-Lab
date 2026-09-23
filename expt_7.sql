create database expt7;
use expt7;

create table Dept(
	DeptNo int primary key,
    DeptName varchar(30) not null,
    Loc varchar(30)
);
desc Dept;
create table Emp(
	EmpNo int primary key,
    EmpName varchar(30) not null,
    Job varchar(20),
    Mgr int,	--managerId
    HireDate date,
    Sal decimal(10,2),
    Comm decimal(10,2),
    DeptNo int,
    
    constraint fk_emp_dept foreign key(DeptNo) references Dept(DeptNo)
);
desc Emp;
create table Salgrade(
	Grade int primary key,
    LowSal decimal(10,2) not null,
    HighSal decimal(10,2) not null
);
desc Salgrade;
create table Areas(
	AreaId int primary key,
    AreaName varchar(20) not null,
    AreaLoc varchar(20)
);
desc Areas;

insert into Dept values
(10,'accounting','new york'),
(20, 'research','dallas'),
(30,'sales','chicago'),
(40,'operations','Boston'),
(50,'hr','delhi');
select * from Dept;

insert into Emp values
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20),
(7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000, NULL, 20),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 500, 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
(7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100, NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);
select * from Emp;

insert into Salgrade values
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);
select * from Salgrade;

insert into Areas values
(1, 'NORTH', 'DELHI'),
(2, 'SOUTH', 'CHENNAI'),
(3, 'EAST', 'KOLKATA'),
(4, 'WEST', 'MUMBAI');
select * from Areas;

select e.EmpNo, e.EmpName, d.DeptName, d.Loc from Emp e, Dept d where e.DeptNo = d.DeptNo;

select e.EmpNo, e.EmpName, e.Sal, s.grade from Emp e, Salgrade s where e.sal between s.LowSal and s.HighSal;

select e.EmpNo, e.EmpName, d.DeptName from Emp e inner join Dept d on d.DeptNo = e.DeptNo;

select e.EmpName as Employee_Name, m.EmpName as Manager_Name from Emp e left join Emp m on e.Mgr = m.EmpNo;

select e.EmpName as Employee_Name, m.EmpName as Manager_Name from Emp e right join Emp m on e.Mgr = m.EmpNo;

select e.EmpNo, e.EmpName, d.DeptNo, d.DeptName from Emp e cross join Dept d;

select e.EmpName as Employee_Name, m.EmpName as Manager_Name from Emp e left join Emp m on e.Mgr = m.EmpNo
union
select e.EmpName as Employee_Name, m.EmpName as Manager_Name from Emp e right join Emp m on e.Mgr = m.EmpNo;
