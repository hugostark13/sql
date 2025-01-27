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
