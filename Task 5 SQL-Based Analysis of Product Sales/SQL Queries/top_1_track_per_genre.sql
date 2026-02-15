/*
What's the top best selling track for each genre.
*/
SELECT genre, track, units_sold
FROM (
    SELECT
        g.Name AS genre,
        t.Name AS track,
        SUM(il.Quantity) AS units_sold,
        ROW_NUMBER() OVER (
            PARTITION BY g.Name
            ORDER BY SUM(il.Quantity) DESC
        ) AS rn
    FROM InvoiceLine il
    JOIN Track t ON il.TrackId = t.TrackId
    JOIN Genre g ON t.GenreId = g.GenreId
    GROUP BY g.Name, t.Name
)
WHERE rn = 1
ORDER BY units_sold DESC;
