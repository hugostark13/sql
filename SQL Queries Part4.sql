--- *** Create Table ***

-- CREATE TABLE accounts(
--     user_id serial PRIMARY KEY,
--     username VARCHAR(50) UNIQUE NOT NULL,
--     password VARCHAR(50) NOT NULL,
--     email VARCHAR(355) UNIQUE NOT NULL,
--     created_on TIMESTAMP NOT NULL,
--     last_login TIMESTAMP
-- )

-- CREATE TABLE roles(
--     role_id serial PRIMARY KEY,
--     role_name VARCHAR(255) UNIQUE NOT NULL
-- )

--- *** Insert, Like (copy) ***

-- CREATE TABLE links(
--     ID serial PRIMARY KEY,
--     url VARCHAR(255) NOT NULL,
--     name  VARCHAR(255) NOT NULL,
--     description VARCHAR(255),
--     rel VARCHAR(50) 
-- );

-- INSERT INTO links(url,name) VALUES ('www.example.com', 'Example');
-- CREATE TABLE links_copy (LIKE links);
-- INSERT INTO links_copy
-- SELECT * FROM links
-- WHERE name = 'Example';

--- *** Update ***

-- UPDATE links SET description = 'Example link'
-- UPDATE links SET rel = 'Sample rel' WHERE name LIKE 'E%';
-- UPDATE links SET description = name;
-- UPDATE links SET description = 'New description' WHERE id = 1
-- RETURNING id, url, name, description;

--- *** Delete ***

-- DELETE FROM links_copy WHERE name LIKE 'E%';
-- DELETE FROM links_copy WHERE id = 1 RETURNING *;

--- *** Alter ***

-- ALTER TABLE links ADD COLUMN active boolean;
-- ALTER TABLE links DROP COLUMN active;
-- ALTER TABLE links RENAME COLUMN name TO new_name;
-- ALTER TABLE links RENAME to links123

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