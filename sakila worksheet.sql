--1) What is the description of the film "Tootsie Pilot"?

SELECT description
FROM film
WHERE title = "Tootsie Pilot";

--2) Count the number of films that start with the letter "D"

SELECT COUNT(title)
FROM film
LIKE "D%";

--3)

SELECT customer.first_name, customer.last_name, address.address
FROM customer
JOIN address
ON address.address_id = customer.address_id
WHERE customer.first_name = "Duane"
AND customer.last_name = "Tubbs"

--4)

SELECT c.first_name, c.last_name, COUNT(r.rental_id) AS "num_rentals"
FROM customer c
JOIN rental r ON r.customer_id = c.customer_id
WHERE c.first_name = 'Duane'
AND c.last_name = 'Tubbs';

--5)

SELECT c.first_name, c.last_name, 
	SUM(p.amount) AS "total_payments"
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
WHERE c.first_name = 'Duane'
AND c.last_name = 'Tubbs';

--6)

SELECT c.first_name, c.last_name, 
   SUM(p.amount) AS "total_payments", 
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
WHERE c.last_name LIKE "T%"
GROUP BY last_name;

--7)

SELECT 
   LEFT(c.last_name, 1) AS "last_name"
   SUM(p.amount) AS "total_payments", 
   COUNT(r.rental_id) AS "num_rentals",
   SUM(p.amount) / COUNT(p.rental_id) AS "avg_pay"
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
JOIN rental r ON r.rental_id = p.rental_id
GROUP BY LEFT(c.last_name, 1)
ORDER BY SUM(p.amount) DESC;

--9)

SELECT store.store_id, SUM(payment.amount) AS "total_sales"
FROM store
JOIN staff ON store.store_id = staff.store_id
JOIN payment ON staff.staff_id = payment.staff_id
GROUP BY store.store_id



