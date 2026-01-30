/*
Which customers have purchased tracks from at least 5 different genres?
*/
SELECT c.FirstName || ' ' || c.LastName AS customer_name, COUNT(DISTINCT g.GenreId) AS genre_count
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY c.CustomerId
HAVING COUNT(DISTINCT g.GenreId) > 5
ORDER BY genre_count DESC;
