-- DROP TABLE cats; 
-- CREATE TABLE cats 
--   ( 
--      cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
--      name   VARCHAR(100), 
--      breed  VARCHAR(100), 
--      age    INT
--   ); 
-- DESC cats; 
-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);

-- *** SELECT ***

-- SELECT * FROM cats; 
-- SELECT name FROM cats; 
-- SELECT name, age FROM cats; 
-- SELECT age, breed, name, cat_id FROM cats; 

-- *** WHERE ***

-- SELECT * FROM cats WHERE age=4; 
-- SELECT * FROM cats WHERE name='Egg'; 
-- SELECT name, age FROM cats WHERE breed='Tabby'; 
-- SELECT cat_id, age FROM cats WHERE cat_id=age;

-- *** Aliases ***

-- SELECT cat_id AS id, name FROM cats;
-- SELECT name AS 'cat_name', breed AS 'kitty_breed' FROM cats;
-- DESC cats;

-- *** Update ***

-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 
-- UPDATE cats SET age=14 WHERE name='Misty'; 
-- UPDATE cats SET name='Jack' WHERE name='Jackson';

-- *** DELETE ***

-- DELETE FROM cats WHERE name='egg';
-- DELETE FROM cats WHERE age=4;
-- DELETE FROM cats WHERE cat_id=age;

