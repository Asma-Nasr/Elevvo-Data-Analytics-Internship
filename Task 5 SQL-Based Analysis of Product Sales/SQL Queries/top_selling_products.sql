SELECT 
    t.Name AS TrackName,
    g.Name AS Genre,
    SUM(il.Quantity) AS TotalUnitsSold,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS TotalRevenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY t.TrackId
ORDER BY TotalRevenue DESC
LIMIT 10;
