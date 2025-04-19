--- *** Timestamps and Extract ***

-- SELECT customer_id, extract(day from payment_date) AS day FROM payment;
-- SELECT SUM(amount) AS total, extract(month from payment_date) AS month FROM payment GROUP BY month ORDER BY total DESC LIMIT 1;

--- Mathematical functions ***

-- SELECT customer_id + rental_id AS new_id FROM payment;
-- SELECT ROUND(AVG(amount),2) FROM payment;

--- *** String functions ***

-- SELECT first_name || ' ' || last_name AS full_name FROM customer;
-- SELECT first_name, char_length(first_name) FROM customer;
-- SELECT upper(first_name) FROM customer;

--- *** Subquery ***

-- SELECT title, rental_rate FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);
-- SELECT film_id, title FROM film WHERE film_id IN
-- (SELECT inventory.film_id FROM rental 
-- INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
-- WHERE rental_date BETWEEN '2005-05-29' AND '2005-05-30');

--- *** Self Join ***

-- SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
-- FROM customer AS a, customer AS b
-- WHERE a.first_name = b.first_name;

-- SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name
-- FROM customer AS a
-- JOIN customer AS b
-- ON a.first_name = b.first_name
-- ORDER BY a.customer_id;