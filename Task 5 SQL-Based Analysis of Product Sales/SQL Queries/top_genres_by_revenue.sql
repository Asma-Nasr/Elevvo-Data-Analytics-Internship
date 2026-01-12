/*
Which music genres generate the most revenue?
*/
SELECT g.name, SUM(ROUND(i.UnitPrice * i.Quantity u)) AS Revenue
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
JOIN InvoiceLine i ON t.TrackId = i.TrackId
GROUP BY g.Name
ORDER BY Revenue DESC;
