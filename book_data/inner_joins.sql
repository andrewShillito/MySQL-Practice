SELECT * FROM customers, orders WHERE customers.id = orders.customer_id; -- implicit inner join all
SELECT customers.id AS customer_id, CONCAT(first_name, " ", last_name) AS "name", email, orders.id AS order_id, order_date, amount -- specific fields implicit inner join
	FROM customers, orders 
	WHERE customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers JOIN orders 
	ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers JOIN orders 
	ON customers.id = orders.customer_id
    ORDER BY amount;
    
SELECT first_name, last_name, SUM(amount) AS total_spent FROM customers JOIN orders 
	ON customers.id = orders.customer_id
    GROUP BY customers.id
    ORDER BY SUM(amount) DESC;

SELECT first_name, last_name, AVG(amount) AS avg_amount FROM customers JOIN orders 
	ON customers.id = orders.customer_id
	GROUP BY customers.id
	ORDER BY AVG(amount) DESC;
