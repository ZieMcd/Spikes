USE sql_store;

SELECT * FROM Customers WHERE NOT (birth_date > "1990-01-01" OR Points > 1000);