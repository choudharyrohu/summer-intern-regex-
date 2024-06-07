-- views
-- virtual table

#view -> not physically
#original
use sakila;
select*from payment;

create view v_payment as 
select payment_id,customer_id from payment;
select *from v_payment;


create table raj123(id int, salary int);
insert into raj123 values(1,2000), (2,3000);

create view v_raj as select id from raj123;
select*from v_raj;

insert into v_raj values(30);
select * from raj123;

create or replace view v_raj as select sum(salary) from raj123;
select*from v_raj;
insert into v_raj values(800);###this query will not run as bcz it is a complex view.alter

## INDEX in SQL
-- use to access data faster
-- types of indexs:
-- 1)clusterd index == created automatically
-- 2) non clusterd == we create these index

create database Test1;
use Test1;
create table regex(id int primary key auto_increment,
name varchar(20), salary int);
insert into regex(name,salary) values("aman",200);
desc regex;
commit;
show indexes from regex;
explain select id from regex;

##cardanility --->uniquenes

-- drop index indexName from table

-- drop index regex_na

