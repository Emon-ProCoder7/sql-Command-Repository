 SELECT *
FROM transaction_data
LIMIT 10;

SELECT full_name, email
FROM transaction_data
WHERE zip = 20252;


SELECT full_name, email
FROM transaction_data
WHERE full_name LIKE '% der %' OR
      full_name = 'Art Vandelay';

SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

SELECT *
FROM transaction_data
WHERE ip_address LIKE '120.%' AND
      full_name LIKE 'John%';
