-- lecture 4
use sakila;
select curdate() from dual;
select current_timestamp() from dual;
select adddate(now(),interval 15 month) from dual;
select dayname(now() ) from dual;

-- %modifier
-- %M (abbervation for month name)
select date_format( now(), "%M--%Y")  from dual;

-- Numerical function 
-- 1)round 2)truncate 3)mod

select round(10.4) from dual;
select round(10.498,2) from dual;

select truncate(10.4,1) from dual;

select mod(11,2) from dual;

# Conditional 
-- if

use sakila;
select *from actor;
-- condition,True,False
select if(True,10,20) from dual;

select actor_id, first_name,
if( actor_id=2, actor_id+10, actor_id) from actor;

select actor_id, first_name,
if( actor_id=2, actor_id+10,
	if(actor_id=4, actor_id+20,actor_id))
		from actor;
        
-- case statement
/*
select col, case expression/col
                 when condition then what_type_work
                 
                 end
				from table
*/
select actor_id,first_name,
    case actor_id
           when 2 then actor_id+10
           when 3 then actor_id+20
	else actor_id
	end "NewCol"
    from actor;

-- ------------------------------------

select actor_id,first_name,
    case 
           when actor_id=2 then actor_id+10
           when actor_id=3 then actor_id+20
	else actor_id
	end "NewCol"
    from actor;
    
# if a person has actor id more than five add 10, if more than 15 add add 25 , if more than 35 add 50 other add 5.

select actor_id,first_name,
    case 
           when actor_id>5 and actor_id<15 then actor_id+10
           when actor_id>=15 and actor_id<35 then actor_id+25
           when actor_id>35 and actor_id<50 then actor_id+20
	else actor_id+5
	end "NewCol"
    from actor;
