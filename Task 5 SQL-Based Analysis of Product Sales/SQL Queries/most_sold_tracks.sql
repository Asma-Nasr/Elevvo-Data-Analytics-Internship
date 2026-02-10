/*
Which 10 tracks have been sold the most (by quantity)?
*/
SELECT t.Name, SUM(i.Quantity) AS Quantity
FROM Track t
JOIN InvoiceLine i ON t.TrackId = i.TrackId
GROUP BY t.Name
ORDER BY Quantity DESC 
LIMIT 10;
