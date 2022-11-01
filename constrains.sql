#not null constrain

create table magickwoods(
empid int not null,
firstname varchar(255),
lastname varchar(255),
empage int);

desc magickwoods;

insert into magickwoods (empid,firstname,lastname,empage)
	values(null,"jack","sparrow",25);

insert into magickwoods (empid,firstname,lastname,empage)
	values(1,"jack","sparrow",25);
    
select * from magickwoods;

#unique constrain":

create table magickwoods1(
empid int not null ,
firstname varchar(255),
lastname varchar(255),
empage int,
unique (empid));

#check constrain:

create table magickwoods3(
empid int not null unique,
firstname varchar(255),
lastname varchar(255),
empage int,
check(empage>20));

insert into magickwoods3 (empid,firstname,lastname,empage)
	values(1,"tom","hanks",25);
    
select * from magickwoods3;

# default constrain

create table magickwoods4(
empid int not null,
firstname varchar(255),
lastname varchar(255),
empdept varchar(255) default "operations")

desc magickwoods4;
insert into magickwoods4 (empid,firstname,lastname)
	values(1,"tom","hanks");
select * from magickwoods4;

#index constrain:

create table magickwoods5(
empid int ,
firstname varchar(255),
lastname varchar(255),
empage int,
empzone  varchar(255));

insert into magickwoods5 (empid,firstname,lastname,empage,empzone)
	values(1,"tom","hanks",25,"north");
insert into magickwoods5 values(2,"emma","stone",25,"south");
insert into magickwoods5 values(3,"brad","pitt",29,"east");

select * from magickwoods5;
create index index_name
	on magickwoods5(firstname);
create index index_name2
	on magickwoods5(firstname,lastname,empzone);
show indexes from magickwoods5;
drop index index_name on magickwoods5;

# primary key constran:

create table magickwoods6(
empid int not null,
firstname varchar(255),
lastname varchar(255),
empzone  varchar(255),
primary key(empid));



desc magickwoods6;