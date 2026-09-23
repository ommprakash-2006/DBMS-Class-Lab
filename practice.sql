create database SchoolDB;
use SchoolDB;

create database AcademyDB;

create table Student(
	RollNo int primary key,
    StName varchar(30) not null,
    Marks int
);
desc Student;

rename table SchoolDB.Student to AcademyDB.Student;

insert into Student values
(11, 'Omm', 74),
(12, 'Priyanshu', 62),
(13, 'Jiten', 50),
(14, 'Debasis', 60);

select StName, Marks from Student where Marks > 70;

select * from Student;

alter table Student add Phone varchar(20);
alter table Student modify Phone integer(20);
alter table Student drop Phone;

update Student set Marks = 63 where RollNo = 13;

delete from Student where RollNo = 14;

truncate table Student;

drop table Student;
