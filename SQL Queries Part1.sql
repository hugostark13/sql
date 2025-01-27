
-- *** SELECT ***

-- SELECT * FROM actor;
-- SELECT first_name, last_name FROM actor;
-- SELECT first_name, last_name,emial FROM customer;

--- *** DISTINCT ***

--select only unique values from column
-- SELECT * FROM film;
-- SELECT DISTINCT rating from film;

--- *** WHERE ***

--- it is always after FROM clause in SELECT
-- SELECT email FROM customer WHERE first_name = 'Jared';
-- SELECT amount, payment_date FROM payment WHERE amount = 4.99 or amount=1.99;

--- *** COUNT ***

--- returns number of rows returnet by SELECT, it does not consider NULL values
-- SELECT COUNT(*) FROM payment;
-- SELECT COUNT( DISTINCT (amount )) FROM payment;

--- *** LIMIT ***

-- SELECT * FROM customer LIMIT 5;

--- *** ORDER BY ***

--- allows to sort the rows returned from SELECT in ASC or DESC order
-- SELECT first_name, last_name FROM customer ORDER BY first_name;
-- SELECT first_name, last_name FROM customer ORDER BY first_name ASC, last_name DESC;

--- *** BETWEEN ***

--- if we want to check if the value is out of range, we can use NOT BETWEEN
-- SELECT customer_id, amount FROM payment WHERE amount BETWEEN 8 and 9;
-- SELECT amount, payment_date FROM payment WHERE payment_date NOT BETWEEN '2007-02-07' and '2007-02-15';

--- *** IN ***

--- use IN with WHERE to check if value matches any value in the list of values, we can use also NOT IN
-- SELECT customer_id, rental_id, return_date FROM rental where customer_id IN (1,2) ORDER BY rental_date DESC;
-- SELECT * FROM payment WHERE amount IN ( 7.99, 8.99 );

--- *** LIKE ***

-- SELECT first_name,last_name FROM customer WHERE first_name LIKE 'Jen%';
-- SELECT first_name,last_name FROM customer WHERE first_name LIKE '%y';
-- SELECT first_name,last_name FROM customer WHERE first_name LIKE '%er%';
-- SELECT first_name,last_name FROM customer WHERE first_name LIKE '_her%';






