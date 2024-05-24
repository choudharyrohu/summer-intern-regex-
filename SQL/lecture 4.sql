-- lecture 4
-- groupby(aggregate function)
-- multi row function

use sakila;
select*from address;
select count(address_id)from address; 
select count(address2) from address;
select count(*) ;
-- * primary key
select distinct(district) from address;
select sum(address_id) from address;
select count(address_id) from address;
select count(*) from address where district ="QLD";
select count(*) from address where district ="Alberta";

-- group by

select district from address group by district;
select district ,count(*)from address group by district;
select district ,count(*),sum(city_id)from address group by district;

-- column which is not used by groupby cant be selected.

select *from payment;
select customer_id,count(*) as count from payment group by customer_id;

-- allias

select customer_id ,count(*) as count from payment group by customer_id;
select customer_id ,count(*) as count from payment group by customer_id order by count desc;
select customer_id ,sum(amount) as count from payment group by customer_id;

select customer_id ,sum(amount) as count from payment group by customer_id having count >100;
select customer_id ,sum(amount) as count from payment where customer_id>5 group by customer_id having sum(amount)>100;
select customer_id, sum(amount) from payment where customer_id=1 and staff_id=1;
select customer_id, sum(amount) from payment where customer_id=2 and staff_id=2;

select customer_id,staff_id,sum(amount) from payment
group by customer_id,staff_id;

/*
1)get the avg. value for each amount whose payment_id>10
2)get the total sum of amount for each month of payment date for may,june and july
*/
-- answer 1
select payment_id ,avg(amount) as average from payment group by payment_id having payment_id >10;
-- answeer 2
SELECT EXTRACT(MONTH FROM payment_date) AS month,SUM(amount) AS total_amount
FROM payment
WHERE EXTRACT(MONTH FROM payment_date) IN (5, 6, 7)
GROUP BY EXTRACT(MONTH FROM payment_date);
--
select month(payment_date),sum(amount) from payment where month (payment_id) in (5,6,7) group by month(payment_date);