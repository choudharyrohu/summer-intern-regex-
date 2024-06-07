-- lecture 12
-- data control language
-- authorization
-- Authentication
-- ==> create user
create user bob12 identified by 'bob' ;

select * from mysql.user;

-- current user
select current_user();

-- check permission for the user
 show GRANTS for 'bob12' ;
 
 -- create a user to get access from id address
 create user 'sammy' @'192,19,0.%' identified by 'passoword';
 
 --  give permission
 GRANT ALL privileges ON sakila.* TO bob12;
 
 show grants for 'bob12';
 
-- Change password of the user
 alter user 'bob12' identified by 'regex';
 
 -- lock account
 alter user 'bob12' account lock;
 
 -- to unlock
 alter user 'bob12' account unlock;
 
 
 -- roles is simply a group
 -- group====> collection of user
 
 -- creating role
 create role sales;
 -- grant privilage
 grant select on sakila.* to sales;
 
 create user "aman" identified by "aman";
 show grants for "aman";
 -- adding aman in group
 grant sales to aman;
 
 -- assign role to user
 set default role all to aman;
 use sakila;
 create table user(name varchar(20),age int);
create user "avneet" identified by "avneet";
create user "user2" identified by "user2";
grant select(name),update(age) on sakila.user to "avneet";
grant select(name) on sakila.user to "user2";
grant update(age) on sakila.user to "user2";

 
 