create table students2(
	studentid int not null unique,
    studentname varchar(255) not null,
    age int,
    city varchar(255));
alter table students add column dob year not null;

select * from students1;

create table students1(
	studentid int not null ,
    studentname varchar(255) not null,
    age int,
    city varchar(255),
    constraint unique_name unique (studentid,studentname));
    
alter table students1 add unique( studentid);
alter table students1 add constraint stu_example unique (studentid,studentname);
alter table students1 drop constraint stu_example;

#check constrain:

create table students1(
	studentid int not null ,
    studentname varchar(255) not null,
    age int check (age>18),
    city varchar(255),
	constraint check_name check (city="mumbai"));
    
alter table students1 add check (city="mumbai");
alter table students1 add constraint check_name check (city="mumbai");
alter table students1 drop constraint check_name;

#drop constrain

create table students1(
	studentid int not null ,
    studentname varchar(255) not null,
    age int check (age>18),
    city varchar(255) default "delhi")
    
alter table students1 add constraint default_name default 'Mumbai' FOR City;
alter table students1 drop constraint default_name;

#index constrain
create index index_name on students1(studentname);
drop index students1.index_name;