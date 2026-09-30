create database studentDB;
use studentDB;

create table Student(
	S_ID int primary key,
    Name varchar(30),
    Age int,
    Address varchar(50),
    Dept varchar(20)
);
create table Courses(
	C_ID int primary key,
    C_Name varchar(20) not null unique,
    Credit int not null,
    Capacity int not null default 60
);
create table Enrollment(
	E_ID int auto_increment primary key,
	S_ID int not null,
    C_ID int not null,
    EnrollDate date not null,
    Grade char(2),
    Status varchar(15) default 'Active',
    foreign key (S_ID) references Student(S_ID),
    foreign key (C_ID) references Courses(C_ID)
);

INSERT INTO Student (S_ID, Name, Age, Address, Dept)
VALUES
(1, 'Rahul', 20, 'Gunupur, Odisha', 'CSE'),
(2, 'Priya', 21, 'Bhubaneswar, Odisha', 'ECE'),
(3, 'Amit', 19, 'Berhampur, Odisha', 'CSE'),
(4, 'Sneha', 22, 'Cuttack, Odisha', 'IT'),
(5, 'Rohan', 20, 'Rayagada, Odisha', 'ME');

INSERT INTO Courses (C_ID, C_Name, Credit, Capacity)
VALUES
(101, 'DBMS', 4, 60),
(102, 'Operating System', 4, 50),
(103, 'Computer Networks', 3, 60),
(104, 'Data Structures', 4, 55),
(105, 'Software Engineering', 3, 45);

INSERT INTO Enrollment (S_ID, C_ID, EnrollDate)
VALUES
(1, 101, '2026-09-01'),
(2, 102, '2026-09-02'),
(3, 103, '2026-09-03'),
(4, 104, '2026-09-04'),
(5, 105, '2026-09-05');

