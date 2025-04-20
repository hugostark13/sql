-- *** CREATE ***

-- show databases; 
-- CREATE DATABASE animals; 
-- USE animals;
-- SELECT database();

-- CREATE TABLE cats
--   (
--     name VARCHAR(100),
--     age INT
--   );

-- SHOW TABLES;
-- SHOW COLUMNS FROM cats;
-- DESCRIBE cats;

-- *** INSERT ***

-- INSERT INTO cats(name, age) VALUES ('Jetson', 7);
-- CREATE TABLE people
--   (
--     first_name VARCHAR(20),
--     last_name VARCHAR(20),
--     age INT
--   );
-- INSERT INTO people(first_name, last_name, age)
-- VALUES ('Tina', 'Belcher', 13);
-- INSERT INTO people(age, last_name, first_name)
-- VALUES (42, 'Belcher', 'Bob');
-- INSERT INTO people(first_name, last_name, age)
-- VALUES('Linda', 'Belcher', 45)
--   ,('Phillip', 'Frond', 38)
--   ,('Calvin', 'Fischoeder', 70);
-- SELECT * FROM people; 

-- *** WARNINGS ***

-- Try inserting a cat with incorrect data types:
-- INSERT INTO cats(name, age) VALUES('Lima', 'dsfasdfdas'); 
-- Then view the warning:
-- SHOW WARNINGS; 

-- CREATE TABLE cats2
--   (
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL
--   );
-- DESC cats2; 

-- *** DEFAULT name specified:

-- CREATE TABLE cats3
--   (
--     name VARCHAR(20) DEFAULT 'no name provided',
--     age INT DEFAULT 99
--   );
-- DESC cats3;

-- INSERT INTO cats3(age) VALUES(13); 
-- INSERT INTO cats3() VALUES(); 

-- CREATE TABLE cats4
--   (
--     name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
--     age INT NOT NULL DEFAULT 99
--   );

-- INSERT INTO cats() VALUES();
-- SELECT * FROM cats;

-- *** NULL values ***

-- INSERT INTO cats3(name, age) VALUES('Montana', NULL);
-- SELECT * FROM cats3;
-- INSERT INTO cats4(name, age) VALUES('Cali', NULL);

-- *** PRIMARY KEY constraint:

-- CREATE TABLE unique_cats
--   (
--     cat_id INT NOT NULL,
--     name VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
--   );

-- DESC unique_cats; 

-- INSERT INTO unique_cats(cat_id, name, age) VALUES(1, 'Fred', 23);
-- INSERT INTO unique_cats(cat_id, name, age) VALUES(2, 'Louise', 3);
-- SELECT * FROM unique_cats; 


-- *** AUTO_INCREMENT:

-- CREATE TABLE unique_cats2 (
--     cat_id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- );

-- INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
-- INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
-- INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
-- INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
-- SELECT * FROM unique_cats2; 

-- CREATE TABLE employees (
--     id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
--     first_name VARCHAR(255) NOT NULL,
--     last_name VARCHAR(255) NOT NULL,
--     middle_name VARCHAR(255),
--     age INT NOT NULL,
--     current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
-- );

-- INSERT INTO employees(first_name, last_name, age) VALUES
-- ('Dora', 'Smith', 58);
-- SELECT * FROM employees