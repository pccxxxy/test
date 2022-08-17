-- Q1
use mavenmovies;
select * from customer;
SELECT first_name, last_name, email from customer;
SELECT first_name, last_name, email from mavenmovies.customer;

-- Q2
SELECT * FROM film;
SELECT distinct rental_duration FROM film;

-- Q3
SELECT * from payment;

SELECT payment_id, amount, payment_date FROM mavenmovies.payment WHERE customer_id <= 100;

-- Q4
SELECT customer_id, rental_id, amount, payment_date
FROM mavenmovies.payment
WHERE payment_date >= 2006-01-01 AND amount > 5 AND customer_id <= 100;

-- Q5
SELECT customer_id, rental_id, amount, payment_date 
FROM payment 
WHERE customer_id IN(42, 53, 60, 75) OR amount > 5.00;

-- Q6
SELECT * from film;
SELECT title, special_features FROM film WHERE special_features LIKE '%Behind the Scenes%';

-- Q7
SELECT * from film;
SELECT rental_duration, COUNT(title) AS alias_for_count_title FROM film GROUP BY rental_duration;

-- Q8
SELECT rating, rental_duration, 
COUNT(film_id) AS alias_for_count_film 
	FROM film 
    GROUP BY rental_duration, rating;
    
    
-- Q9
SELECT replacement_cost, 
COUNT(film_id) AS number_of_films, 
MIN(rental_rate) AS cheapest_rental, 
MAX(rental_rate) AS most_expensive_rental, 
AVG(rental_rate) AS average_rental 
	FROM film 
    GROUP BY replacement_cost;

-- Q10
SELECT customer_id, count(*) AS numbers_of_rentals FROM rental GROUP BY customer_id HAVING count(*) < 15;
SELECT customer_id, count(*) AS numbers_of_rentals FROM rental GROUP BY customer_id;
SELECT customer_id, count(*) FROM rental GROUP BY customer_id;


-- Q11
SELECT customer_id, rental_id, payment_date, amount
FROM payment
ORDER BY amount;

SELECT customer_id, rental_id, payment_date, amount
FROM payment
ORDER BY amount DESC;

SELECT title, length, rental_rate
FROM film
ORDER BY length DESC;


-- Q12 inner join
SELECT film.title, film.description, inventory.store_id, inventory.inventory_id 
FROM film
inner join inventory on film.film_id = inventory.film_id;

-- Q13 left join
SELECT film.title, count(film_actor.actor_id)
FROM film 
LEFT JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.title;

SELECT * FROM film_actor;
SELECT * FROM film;

-- Q14 right join
