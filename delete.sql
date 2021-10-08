
-- CREATE TABLE animals (

--     id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER

-- );

-- INSERT INTO animals ( name, type, age ) VALUES (‘Leo’, ‘lion’, 12), (‘Jerry’, ‘mouse’, 4), (‘Marty’, ‘zebra’, 10), (‘Gloria’, ‘hippo’, 8), (‘Alex’, ‘lion’, 9), (‘Melman’, ‘giraffe’, 15), (‘Nala’, ‘lion’, 2), (‘Marie’, ‘cat’, 1), (‘Flounder’, ‘fish’, 8);

-- SELECT * FROM animals;

1 --     Copy, paste, and run the SQL code from the summary.

2 --     Delete all ‘lion’ entries from the table.

3 --     Delete all animals whose names start with “M”.

4 --     Delete all entries whose age is less than 9.


-- Question 2 
DELETE 
FROM animals
WHERE type = 'lion';

-- Question 3
DELETE 
FROM animals
WHERE name LIKE 'M%';

-- Question 4
DELETE 
FROM animals
WHERE age < 9;