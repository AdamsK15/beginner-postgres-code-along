-- Solution 1 person //////////////
-- CREATE TABLE person (
-- 	id SERIAL PRIMARY KEY,
-- 	name TEXT,
-- 	age INT,
-- 	height INT,
--   city TEXT,
--   favorite_color TEXT
-- );

-- INSERT INTO person
-- (name, age, height, city, favorite_color)
-- VALUES
-- ('Scott', 21, 66, 'Toronto', 'green'),
-- ('Jack', 60, 67, 'Japan', 'white'),
-- ('Johnny', 25, 69, 'Detroit', 'black'),
-- ('Dikembe', 54, 85, 'Congo', 'red'),
-- ('Leo', 18, 65, 'New York', 'blue');

-- SELECT *
-- FROM person
-- ORDER BY height DESC;

-- SELECT *
-- FROM person
-- ORDER BY height ASC;

-- SELECT *
-- FROM person
-- ORDER BY age DESC;

-- SELECT *
-- FROM person
-- WHERE age > 20;

-- SELECT *
-- FROM person
-- WHERE age = 18;

-- SELECT *
-- FROM person
-- WHERE age < 20 OR age > 30;

-- SELECT *
-- FROM person
-- WHERE age != 27;

-- SELECT *
-- FROM person
-- WHERE favorite_color != 'red';

-- SELECT *
-- FROM person
-- WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- SELECT *
-- FROM person
-- WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- SELECT *
-- FROM person
-- WHERE favorite_color IN ('orange', 'green', 'blue');

-- SELECT *
-- FROM person
-- WHERE favorite_color IN ('yellow', 'purple');

-- Solution 2 - orders ////////////////////

-- CREATE TABLE orders (
-- 	order_id SERIAL PRIMARY KEY,
-- 	person_id INT,
-- 	product_name TEXT,
-- 	product_price INT,
--  quantity INT
-- );

-- INSERT INTO orders
-- (person_id, product_name, product_price, quantity)
-- VALUES
-- (0001, 'Normy Chair', 30.00, 10),
-- (0002, 'Fruit Basket', 15.00, 5),
-- (0003, 'Portable Hole', 2500.00, 2),
-- (0004, 'Jetpack', 8500.00, 1),
-- (0005, 'Robot Butler', 0.01, 50);

-- SELECT *
-- FROM orders;

-- SELECT
-- SUM(quantity) FROM orders;

-- SELECT
-- SUM(quantity * product_price) FROM orders;

-- SELECT
-- SUM(quantity * product_price) FROM orders WHERE person_id = 0005;

-- Solution 3 - artist /////////

-- INSERT INTO artist
-- (name)
-- VALUES
-- ('Westside Boogie'),
-- ('Nas'),
-- ('James Brown');

-- SELECT *
-- FROM artist
-- ORDER BY name DESC LIMIT 10;

-- SELECT *
-- FROM artist
-- ORDER BY name ASC LIMIT 5;

-- SELECT *
-- FROM artist
-- WHERE name LIKE 'Black%';

-- SELECT *
-- FROM artist
-- WHERE name LIKE '%Black%';

-- Solution 4 - employee /////////////////////

-- SELECT first_name, last_name
-- FROM employee
-- WHERE city= 'Calgary';

-- SELECT MAX(birth_date)
-- FROM employee;

-- SELECT MIN(birth_date)
-- FROM employee;

-- SELECT * 
-- FROM employee
-- WHERE reports_to = 2;

-- SELECT COUNT(*)
-- FROM employee
-- WHERE city = 'Lethbridge';

-- Solution 5 - invoice ///////////////

-- SELECT COUNT(*)
-- FROM invoice
-- WHERE billing_country = 'USA';

-- SELECT MAX(total)
-- FROM invoice;

-- SELECT MIN(total)
-- FROM invoice;

-- SELECT *
-- FROM invoice
-- WHERE total > 5;

-- SELECT COUNT(*)
-- FROM invoice
-- WHERE total < 5;

-- SELECT COUNT(*)
-- FROM invoice
-- WHERE billing_state IN ('CA', 'TX', 'AZ');

-- SELECT AVG(total)
-- FROM invoice;

-- SELECT SUM(total)
-- FROM invoice;