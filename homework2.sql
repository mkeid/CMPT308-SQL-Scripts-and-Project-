-- Mohamed Eid
-- Database Systems COMPT 308
-- Homework #2

-- 1
SELECT city 
FROM agents 
WHERE aid IN 
(SELECT aid
FROM orders
WHERE cid = 'c002');

-- 2 (There was no city names Kyoto so I assumed you meant Tokyo)
SELECT pid
FROM products
WHERE pid IN
(SELECT pid
FROM orders
WHERE aid IN
(SELECT aid
FROM agents
WHERE city = 'Tokyo'));

-- 3
SELECT (cid,name)
FROM customers
WHERE cid NOT IN
(SELECT cid
FROM orders
WHERE aid = 'a03');

-- 4
SELECT (cid,name)
FROM customers
WHERE cid IN
(SELECT cid
FROM orders
WHERE pid = 'p01')
AND cid IN
(SELECT cid
FROM orders
WHERE pid = 'p07');

-- 5
SELECT pid 
FROM products
WHERE pid IN
(SELECT pid
FROM orders
WHERE aid = 'a03');

-- 6
SELECT (name,discount)
FROM customers
WHERE cid IN
(SELECT cid
FROM orders
WHERE aid IN
(SELECT aid
FROM agents
WHERE city = 'Dallas'
OR city = 'Duluth'));

-- 7 (Same issue as before. There is no city named Kyoto in the database so I assumed you meant Tokyo)
SELECT *
FROM customers
WHERE discount IN
(SELECT discount
FROM customers
WHERE city = 'Dallas'
OR city = 'Tokyo');
