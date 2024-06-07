-- lecture 8
-- constrains : rules (table avoid invalid)
-- primary key, foreign key , not null, unique, default
-- ======================================================================================================= --
-- ddl statement
use sakila;
create table raj(id int , name varchar(20));
insert into raj values(10,'aman');
insert into raj(id) values(13); 
select * from raj;
-- =======================================================================================================
-- not null
create table raj2(id int,name varchar(20) not null);
insert into raj2 values(10,'aman');
select * from raj2;
drop table raj2;
-- =====================================================================================================================
-- default
create table raj2(id int default  100,name varchar(20) not null);
insert into raj2 values(10,'aman');
insert into raj2 (name)values('aan');
select * from raj2;
-- ===========================================================================================================================
-- unique
create table raj3(id int unique  ,name varchar(20) not null);
insert into raj3 values(10,'aman');
insert into raj3 (name)values('aan');
select * from raj3;

-- ==========================================================================================

-- check
create table raj4(id int check(id between 2 and 5));
insert into raj4 values(2);
insert into raj4 values(3);
select * from raj4;
-- ===============================================================================================================================
create table house(house_id int, purchase int,  email varchar (20) unique,selling int , constraint house_check check  (selling > purchase));
insert into house values(1,5000,"avneet@",6000);
select * from house;

-- =================================================================================================================================
-- primary key
-- constraints : unique identifier each and every record
-- unique and not null
-- only one primary key in  table
create table raj5(id int primary key);
insert into raj5 values(2);
insert into raj5 values(63);
select * from raj5;
-- =================================================================================================================================
-- foreign key : regulation 
-- cross validation
 -- parent table
 -- child table
create table person1(pid  int primary key, pname varchar(20));
insert into person1 values(1,"asds");

create table order2(oid int, city varchar(20), pid int ,
foreign key (pid) references person1(pid));
insert into order2 values(1,"hhh",1);

select * from order2;

-- =====================================================================================================================================
-- difference betweeen super key , candiate key , composite key
-- froiegn key ==> on delete , on cascat, on delete set null , on delete set default


