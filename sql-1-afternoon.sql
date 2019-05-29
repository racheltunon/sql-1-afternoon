--  TABLE - PERSON -- 
-- number 1 : create a table --
CREATE TABLE person (
  person_id SERIAL, 
  first_name VARCHAR(100), 
  age INTEGER, 
  height INTEGER, 
  city VARCHAR(100), 
  favorite_color VARCHAR(100)
  )

-- number 2: add 5 different people in the database --
INSERT INTO person (first_name, age, height, city, favorite_color)
VALUES ('Crystal',23, 165.1, 'Laredo', 'pink'), 
('Mark', 24, 165, 'Laredo', 'red'),
('Pepe', 21, 175.26, 'Laredo', 'green'),
('Priscilla', 37, 175, 'Laredo', 'navy'),
('Omar', 22, 165.1, 'Laredo', 'black');

-- number 3: order height from tallest to shortest --
SELECT * FROM person 
ORDER BY height DESC;

-- number 4: order height from shortest to tallest --
SELECT * FROM	person 
ORDER BY height ASC;

-- number 5: order age from oldest to youngest --
SELECT * FROM	person 
ORDER BY age DESC;

-- number 6: list people in the table older than 20 --
SELECT * FROM	person 
ORDER BY age >20;

-- number 7: list people in the table that are EXACTLY 18 --
SELECT * FROM	person 
WHERE age =18

-- number 8: list people that are less than 20 and greater than 30 --
SELECT * FROM person 
WHERE age <20 or age >30;

-- number 9: list people that are not 27 -- 
SELECT * FROM person 
WHERE age != 27;

-- number 10: list people in table that fav color is not red --
SELECT * FROM person 
WHERE favorite_color != 'red'

-- number 11: list people in table that fav color is not red and not blue --
SELECT * FROM person 
WHERE favorite_color != 'red' and favorite_color != 'blue'

-- number 12: list people in table that fav color is orange or green --
SELECT * FROM person 
WHERE favorite_color = 'orange' or favorite_color = 'green'

-- number 13: List people in table that fav orange, green, or blue --
SELECT * FROM person 
WHERE favorite_color = 'orange' or favorite_color = 'green' or favorite_color = 'blue'

-- number 14: list all the people in the table where their fav color is yellow or purple --
SELECT * FROM person 
WHERE favorite_color = 'yellow' or favorite_color = 'purple'


--  TABLE - ORDERS  -- 

-- number 1: create table called orders
CREATE TABLE orders 
(person_id SERIAL, 
 product_name VARCHAR(150),
 product_price INTEGER,
 quantity INTEGER)

-- number 2: add 5 orders 
INSERT INTO orders 
(person_id, product_name, product_price, quantity)
values 
(0, 'pizza', 6, 2),
(1, 'ice-cream', 3, 1);

-- number 3: select all records from the orders table --
SELECT * FROM orders 

-- number 4: calculate total # of products ordered --
SELECT SUM(quantity) FROM orders 

-- number 5: calculate total order price -- 
SELECT sum(product_price * quantity) FROM orders 

-- number 6: calculate total order price by single id 
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;

--  TABLE - ARTIST --

-- number 1: 
INSERT INTO artist 
(artist_id, name) 
VALUES 
(276, 'Billie Eillish'),
(277, 'Paul Simon'),
(278, 'Cat Stevens');

-- number 2 --
Select * from artist 

order by name asc;

-- number 3 -- 
select * from artist 
order by name desc limit 10;

-- number 4 -- 
select * from artist 
order by name asc limit 5;

-- number 5 -- 
select * from artist 
where name like 'B%'


--  TABLE - EMPLOYEE -- 

--number 1 -- 
select first_name, last_name from employee
where city = 'Calgary'

-- number 2 -- 
select MAX(birth_date) from employee 

-- number 3 -- 
select MIN(birth_date) from employee 

-- number 4 -- 
select * from employee 
where reports_to = 2

-- number 5 -- 
select sum(employee_id) from employee 
where city = 'Lethbridge'


--      TABLE - INVOICE --

-- number 1 -- 
select count(*) from invoice where billing_country = 'USA'

-- number 2 -- 
select max(total) from invoice

-- number 3 -- 
select min(total) from invoice

-- number 4 -- 
select * from invoice 
where total >5

-- number 5 -- 
select * from invoice 
where total <5

-- number 6 -- 
select count(*) from invoice 
where billing_state in ('CA','TX','AZ')

-- number 7 -- 
select avg(total) from invoice 

-- number 8 -- 
select sum(total) from invoice  