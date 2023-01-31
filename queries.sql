-------- SELECT

-- select all staff order by first_name,
SELECT * FROM staff
ORDER BY first_name

-- select all payment order by amount desc
SELECT * FROM staff
ORDER BY first_name

-- select all addresses order by postal_code asc
SELECT * FROM address
ORDER BY postal_code 

-------- JOIN

-- Select all customers and join their addresses.
SELECT first_name ||' '|| last_name AS full_name, address, postal_code FROM customer
JOIN address using (address_id)

-- Select all stores and join their addresses.
SELECT store.*, address.address, address.postal_code FROM store
JOIN address using (address_id)

-- Select all stores and join staff using manager_staff_id
SELECT store.*, address.address, address.postal_code FROM store
JOIN address using (address_id)

-- Select all addresses join cities
SELECT store.*, address.address, address.postal_code FROM store
JOIN address using (address_id)

-------- GROUP BY

-- find total payment by date
SELECT store.*, address.address, address.postal_code FROM store
JOIN address using (address_id)

-- find average payment
SELECT AVG(amount) as average_payment FROM payment

-- sum all payments
SELECT SUM(amount) as total_payment FROM payment
