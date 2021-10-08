

1    -- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

2    -- Get all playlist tracks where the playlist name is Music.

3    -- Get all track names for playlist_id 5.

4    -- Get all tracks where the genre is Comedy.

5    -- Get all tracks where the album is Fireball.

6    -- Get all tracks for the artist Queen ( 2 nested subqueries ).



-- Question 1 
SELECT * FROM invoice
WHERE invoice_id IN (
    SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99
);

-- Question 2 
SELECT * FROM playlist_track
WHERE playlist_id IN (
    SELECT playlist_id FROM playlist WHERE name = 'Music'
    
);

-- Question 3 
SELECT * FROM track 
WHERE track_id IN (
    SELECT track_id FROM playlist_track WHERE playlist_id = 5 
);

-- Question 4 
SELECT * FROM track 
WHERE genre_id IN (
    SELECT genre_id FROM genre WHERE name = 'Comedy'
);

-- Question 5 
SELECT * FROM track 
WHERE album_id IN (
    SELECT album_id FROM album WHERE title = 'Fireball'
);

-- Question 6 
SELECT * FROM track 
WHERE album_id IN (
    SELECT album_id FROM album WHERE artist_id IN (
     SELECT artist_id from artist WHERE name = 'Queen'
    )
);