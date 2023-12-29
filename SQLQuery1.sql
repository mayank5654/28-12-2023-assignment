create database CourseDatabase

use CourseDatabase

create table Category
( 
Id int primary key,
CourseCategory nvarchar(50) not null unique
)

create table Course
(
Id int primary key,
Name nvarchar(50),
Fee float,
StartDate DateTime,
Category int foreign key references Category(Id)
)
insert into Category values (1,'MTECH')
insert into Category values (2,'MBA')
insert into Category values (3,'English')

insert into Course values (1,'mayank',500.04,12/04/2023,1)
insert into Course values (2,'kaushal',700.56,14/05/2022,2)
insert into Course values (3,'Sam',9200.36,05/11/2020,2)
insert into Course values (4,'ram',789.02,03/07/2021,3)


select * from Category
select * from Course