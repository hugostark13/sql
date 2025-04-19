--- *** Drop ***

-- DROP TABLE links_copy;
-- DROP TABLE IF EXISTS links123;

--- *** Check ***

-- CREATE TABLE new_users123(
--     id serial PRIMARY KEY,
--     first_name VARCHAR(50),
--     birth_date  DATE CHECK (birth_date > '1900-01-01'),
--     join_date DATE CHECK (join_date > birth_date),
--     salary integer CHECK (salary > 0)
-- );

-- INSERT INTO new_users123 (first_name, birth_date, join_date, salary)
-- VALUES ('John', '1980-02-02', '1990-04-04', -10);

-- CREATE TABLE checktest(
--     sales integer CONSTRAINT positive_sales CHECK(sales > 0));

-- INSERT INTO checktest(sales) VALUES (-12);

--- *** NOT NULL ***

-- CREATE TABLE learn_null123(
--     first_name VARCHAR(50),
--     sales integer NOT NULL);
-- INSERT INTO learn_null123(first_name, sales)
-- VALUES('John123', 222);

--- *** Unique ***

-- CREATE TABLE people123(
--     first_id serial PRIMARY KEY,
--     first_name VARCHAR(50),
--     email VARCHAR(100) UNIQUE);

-- INSERT INTO people123(first_id, first_name, email)
-- VALUES (1, 'John123', 'joe@joe.com');
--- *** Views ***

-- CREATE VIEW customer_info AS
-- SELECT first_name, last_name, email, address, phone
-- FROM customer
-- JOIN address
-- on customer.address_id = address.address_id

-- SELECT * FROM customer_info
-- ALTER VIEW customer_info RENAME TO customer_view;
-- DROP VIEW IF EXISTS customer_view;
