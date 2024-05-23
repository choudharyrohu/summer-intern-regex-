use sakila;
select database() ;-- give name of current database()
show tables;
describe actor; -- descirbe the table
desc sakila.actor; -- both describe the tables
-- select statemeent
select *  from actor;
select actor_id , first_name from actor;
select actor_id , first_name, actor_id+4 from actor;
-- where clause
-- selection
select * from actor where actor_id=2;
select * from actor where actor_id>2;
select actor_id from actor where first_name="NICK";
-- between operator
select * from actor where actor_id between 2 and 5;
-- in operator (specific will come)
select * from actor where actor_id in (5,2,12);
select * from actor where actor_id  not in (5,2,12);
-- search data according to specific pattern (Like operator)
select * from actor where first_name like "E%"; -- % 0 or more characters
select * from actor where first_name like "%E";
select * from actor where first_name like "%E%";
select * from actor where first_name like "_D"; --   _ only one character
select * from actor where first_name like "__";
select * from actor where first_name like "__%"; --   atleast 2 characters


