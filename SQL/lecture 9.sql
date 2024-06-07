-- fnding the second highest salary
use sakila;
create table ut1(id int);
insert into ut1 values(10),(20),(30),(40);
select max(id) from ut1 where 
id<(select max(id) from ut1);

-- third highest
select max(id) from ut1 where 
id<(select max(id) from ut1 where id<(select max(id) from ut1));
insert into ut1 values(1),(2),(3),(4);
-- third minimum
select min(id) from ut1 where 
id>(select min(id) from ut1 where id>(select min(id) from ut1));
-- ==================================================================================================================
-- int size 4byte (2^32) 
-- 1 byte ==. 4bit
create database isha;
use isha;
create table xy(id int);
create table xy(id int unsigned); -- unsigned used to use only positive value
-- ================================================================================================================
-- big int 8byte
create table x(id bigint);
-- ===============================================================================================================
-- tinyint size= 1 byte   ===> -128 to 127
create table ac(id tinyint); -- true snf false can also be stored in it
insert into ac values( 4);
-- ================================================================================================================

-- varchar  and char
create table c( name varchar(20),i char(20));
insert into c values("a                                                                               ","sd");
select *,length(name) from c; 
-- ==================================================================================================================
-- date, time , datetime datatype
create table u1(dob date);
insert into u1 values('2024-08-19');
select * from u1;

create table u2(dob date, dtime time, dob2 datetime);
insert into u2 values('2024-08-19','10:23:24',now());
select * from u2;

-- question