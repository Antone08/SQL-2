
-- Join

--    1 Get all invoices where the unit_price on the invoice_line is greater than $0.99.

--    2 Get the invoice_date, customer first_name and last_name, and total from all invoices.

--    3 Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.

--            4 Support reps are on the employee table.

--   5  Get the album title and the artist name from all albums.

--   6 Get all playlist_track track_ids where the playlist name is Music.

--   7 Get all track name`s for `playlist_id.

--   8 Get all track name`s and the playlist `name that they’re on ( 2 joins ).

--   9 Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).


-- Question 1
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

-- Question 2 
SELECT i.invoice.date, c.first_name, c.last_name, i.total 
FROM invoice i 
JOIN customer c ON c.customer_id = i.customer_id;

-- Question 3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c 
JOIN employee e ON c.support_rep_id = e.employee_id;

-- Question 5
SELECT a.name, ab.title
FROM artist a
JOIN album ab ON a.artist_id = ab.artist_id;

-- Question 6
SELECT pt.track_id 
FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

-- Question 7 
SELECT t.name, pt.playlist_id
FROM playlist_track pt
JOIN track t ON pt.track_id = t.track_id

-- Question 8 
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;


-- Question 9
SELECT t.name, a.title, g.name
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name LIKE '%Alternative & Punk%';