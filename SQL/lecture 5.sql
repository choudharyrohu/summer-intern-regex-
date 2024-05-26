-- lecture 5
-- join
-- 
create database testing;
use testing;
create table product(pid int , pname varchar(20), oid int);
insert into product values(1,"tv",100),(2,"mobile",300);

create table orders( oid int,city varchar(20));
insert into orders values(100,"jaipur"),(300,"goa");
insert into orders values(200,"jodhpur"),(500,"hp");

select * from orders;
select * from procuct;
-- method 1
-- cross join
select pid, pname,city from product
join orders;

-- inner join                      
select pid, pname,city,product.oid from product
join orders
where orders.oid=product.oid
;
-- method 1
-- use using keyword
select pid, pname,city,product.oid from product
join orders
using(oid)
;
-- method 3
-- using on keyword
select pid, pname,city,product.oid from product
inner join orders
on orders.oid=product.oid
;

-- right join
select pid, pname,city,product.oid from product
right join orders
on orders.oid=product.oid
;

-- natural join( agar column name same hai to inner join nhi to cross join)
select pid,pname,city from product natural join orders;

-- self join
 create table employee(eid int, ename varchar(20), mid int);
 insert into employee values(10,"tushar",null),(20,"aman",30),(30,"mayank",10),(40,"ujjwal",20);
 select * from employee;
 
 select emp.eid,emp.ename,emp.mid ,mgr.eid   from employee as emp
 join employee as mgr
 where emp.mid=mgr.eid; 
 
  create table employe(eid int, ename varchar(20), mid int,salary int);
 insert into employe values(10,"tushar",null,100),(20,"aman",30,50),(30,"mayank",10,100),(40,"ujjwal",20,50);
 insert into employe values(50,"avneet",60,100),(60,"rahul",30,50);
 insert into employe values(70,"tushar",null,90),(80,"aman",90,70),
									(90,"mayank",70,50),(100,"ujjwal",80,60); 
                                    
select * from employe;
-- get the employee id emplye name and manager name only for those users 
-- where salary of emplyee should be grater then salry of manager
  
select emp.eid,emp.ename,emp.mid ,mgr.eid   from employe as emp
	join employe as mgr
	where emp.mid=mgr.eid and emp.salary>mgr.salary; 
    
    
    
    
use sakila;
select * from actor;
select * from film_actor;

select actor.actor_id,actor.first_name,film_actor.film_id 
from actor inner join film_actor
on actor.actor_id=film_actor.actor_id;

select * from film;

select actor.actor_id, actor.first_name,film_actor.film_id ,film.title 
from actor inner join film_actor
inner join film on 
(actor.actor_id=film_actor.actor_id) and (film_actor.film_id=film.film_id);


select actor.actor_id , count(film.title) from actor inner join film_actor
inner join film on 
(actor.actor_id=film_actor.actor_id) and (film_actor.film_id=film.film_id)
 group by actor.actor_id ;  