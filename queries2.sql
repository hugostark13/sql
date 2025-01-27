--- *** Aggregare functions ***

--- *** AVG, SUM, MIN, MAX, COUNT ***
-- SELECT ROUND(AVG(amount), 2) FROM payment;
-- SELECT MIN(amount) FROM payment;
-- SELECT COUNT(amount) FROM payment WHERE amount = 0.00;
-- SELECT MAX(amount) FROM payment;
-- SELECT SUM(amount) FROM payment;

--- *** GROUP BY ***

-- SELECT customer_id from payment GROUP BY customer_id; -- works like DISTINCT
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC;
-- SELECT staff_id, COUNT(payment_id) FROM payment GROUP BY staff_id;
-- SELECT rating, COUNT(rating) from film GROUP BY rating;

--- *** HAVING ***

-- sets condition for group rows created by GROUP BY
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) > 200;
-- SELECT store_id, COUNT(customer_id) FROM customer GROUP BY store_id HAVING COUNT(customer_id) > 300;
-- SELECT rating, AVG(rental_rate) from film where rating IN ('R', 'G', 'PG') GROUP BY rating HAVING AVG(rental_rate) < 3;

--- *** AS ***

-- SELECT payment_id as payment_col from payment;
-- SELECT customer_id, SUM(amount) as total_spent from payment GROUP BY customer_id;

--- *** JOIN 'S ***

-- INNER JOIN

-- here we dont spcify customer table on other columns
-- because they presist only in customer table

-- SELECT 
-- customer.customer_id, first_name, 
-- last_name, email, amount, payment_date 
-- FROM customer
-- INNER JOIN payment ON payment.customer_id = customer.customer_id
-- -- ORDER BY customer_id;
-- WHERE customer.customer_id = 2;

-- SELECT payment_id, amount, first_name, last_name
-- FROM payment
-- JOIN staff ON staff.staff_id = payment.staff_id; --we can just say JOIN, instead INNER JOIN

-- SELECT title, COUNT(title) AS cpies_at_store1 from inventory
-- JOIN  film ON film.film_id = inventory.film_id
-- WHERE store_id = 1
-- GROUP BY title;

-- SELECT title, name movie_language from film
-- JOIN language lang on lang.language_id = film.language_id; --we can not add AS, instead pause and name 

--- *** OUTER JOIN 'S *** 

-- SELECT film.film_id, film.title, inventory_id
-- FROM film
-- LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id   --we can say just LEFT JOIN
-- WHERE inventory.film_id IS NULL
-- ORDER BY film.film_id;

--- *** UNION ***

-- both queries must return same number of columns
-- coresponding columns in queries must have compatible data types
-- if we have duplicates they will be removed, the we use UNION ALL

