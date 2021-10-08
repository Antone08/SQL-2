

 1   -- Find all customers with fax numbers and set those numbers to null.

 2   -- Find all customers with no company (null) and set their company to “Self”.

 3   -- Find the customer Julia Barnett and change her last name to Thompson.

 4   -- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.

 5   -- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.

 6   -- Refresh your page to remove all database changes.



-- Question 1 
UPDATE customer
SET fax = null
WHERE fax IS NOT null;

-- Quesion 2
UPDATE customer
SET company = 'Self'
WHERE company IS null;

-- Question 3
UPDATE customer 
SET last_name = 'Thompson' 
WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- Question 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- Question 5
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;
