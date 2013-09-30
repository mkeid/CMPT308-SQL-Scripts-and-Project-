-- Mohamed Eid
-- Database Systems COMPT 308
-- Homework #3

-- 1
SELECT city 
FROM agents 
WHERE aid IN 
(SELECT aid
FROM orders
WHERE cid = 'c002');

-- 2
SELECT city
FROM agents
INNER JOIN orders
ON agents.aid = orders.aid
WHERE orders.cid = 'c002';

-- 3
SELECT pid
FROM products
WHERE pid IN
(SELECT pid
FROM orders
WHERE aid IN
(SELECT aid
FROM agents
WHERE city = 'Kyoto'));

-- 4
SELECT products.pid
FROM products
INNER JOIN orders
ON products.pid = products.pid
INNER JOIN agents
ON orders.aid = agents.aid
WHERE products.city = 'Kyoto';

-- 5
SELECT DISTINCT name
FROM customers
WHERE cid IN
(SELECT cid
FROM orders);

-- 6
SELECT DISTINCT name
FROM customers
LEFT OUTER JOIN orders
ON customers.cid = orders.cid
WHERE customers.cid = orders.cid;

-- 7
SELECT DISTINCT customers.name, agents.name
FROM customers
INNER JOIN orders
ON customers.cid = orders.cid
INNER JOIN agents
ON orders.aid = agents.aid
WHERE customers.city = agents.city;

-- 8
SELECT customers.name, agents.name, agents.city
FROM customers
INNER JOIN agents
ON customers.city = agents.city
WHERE customers.city = agents.city;

-- 9
SELECT customers.name, customers.city
FROM customers
INNER JOIN products
ON customers.city = products.city
WHERE products.quantity =
(SELECT MIN(quantity)
FROM products);

-- 10
SELECT customers.name, customers.city
FROM customers
INNER JOIN products
ON customers.city = products.city
WHERE products.quantity IN
(SELECT MAX(quantity)
FROM products);

-- 11
SELECT customers.name, customers.city
FROM customers
INNER JOIN products
ON customers.city = products.city
WHERE products.quantity IN
(SELECT MAX(quantity)
FROM products);
