select * from actor 
--1. How many actors are there with the last name ‘Wahlberg’?
select first_name,last_name 
from actor
where last_name = 'Wahlberg';

-- Two actors with the last name 'Wahlberg', Nick Wahlberg and Daryl Wahlberg. 
-- Another way to count: 
select count(last_name)
from actor 
where last_name = 'Wahlberg';




--2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount > 3.99 and amount < 5.99;

--Zero payments 


--3. What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory
group by film_id
order by count desc;

--They have a few movies with the same quantity, Those movies have the same quantity and are the movies that they have the most
-- in their inventory. 8 each. 



--4. How many customers have the last name ‘William’?
select first_name, last_name 
from customers 
where last_name = 'William';

--OR

select count(last_name)
from customers 
where last_name = 'William';

-- We have 0 customers with the last name "William"



--5. What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from payment
group by staff_id 
order by count desc;

-- The store employee that sold the most was the ID number 2 (JON). With 7304 rentals.


--6. How many different district names are there?
select count(distinct first_name)
from customers;

-- 4 distinct names

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(film_id)
from film_actor
group by film_id 
order by count desc;


-- The film with most actor in it is Lambs Cincinatti with 15 actors


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select last_name, store_id
from customer
where last_name like '_%es';

-- Theres 0 customers with tha last name ending with 'es'





--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select customer_id, count(amount)
from payment 
where customer_id between 380 and 430
group by customer_id
having count(amount) > 250;

-- Zero payment amounts had a number os rentals above 250 





--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

-- to select how many categories only: 
select count(distinct rating)
from film 

-- We have 5 different categories 

-- To show what rating has the most movies total: 
select rating, count(rating) 
from film 
group by rating 
order by count(rating) desc;

-- The rating with the most movies total is PG-13 with 224 movies. 




