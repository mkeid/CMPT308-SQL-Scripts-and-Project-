Homework 1
Mohamed Eid

SELECT * FROM customers;
SELECT name,city FROM customers WHERE name = 'Smith';
SELECT pid,name,quantity FROM products WHERE priceUSD > 1.25;
SELECT ordno,aid FROM orders;
SELECT name,city FROM customers WHERE city != 'Dallas';
SELECT name FROM agents WHERE city = 'Newark' OR city = 'New York';
SELECT * FROM products WHERE city != 'New York' AND city != 'Newark' AND priceUSD <= 1.00;
SELECT * FROM orders WHERE mon = 'jan' OR mon = 'mar';
SELECT * FROM orders WHERE mon = 'feb' AND priceUSD < 100.00;
SELECT * orders WHERE cid = 'C005';
