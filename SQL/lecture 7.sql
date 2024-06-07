use sakila;
-- sub query

select * from address;
select district from address
where address_id=6;
-- single row subquery
select * from address 
where district=(select district from address
where address_id=6
);

select * from address 
where district=(select district from address
where address_id=6
);

select * from address 
where district in (select district from address
where address_id in (6,7)
);

