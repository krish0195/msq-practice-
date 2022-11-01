use jobportal;

create table table1(
	id int,
    name varchar(255));
    
insert into table1 values(1,"anitha");
insert into table1 values(2,"varun");
insert into table1 values(3,"mani");

create table table2(
	id int,
    name varchar(255));

    
insert into table2 values(3,"mani");
insert into table2 values(4,"john");
insert into table2 values(5,"kavitha");

#union:
select * from table1
union 
select * from table2;

#union all:
select * from table1
union all
select * from table2;

select * from table1
intersect
select * from table2;
