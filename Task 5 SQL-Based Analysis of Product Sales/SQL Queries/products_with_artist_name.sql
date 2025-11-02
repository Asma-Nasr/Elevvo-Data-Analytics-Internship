SELECT 
    t.Name AS Track,
    ar.Name AS Artist,
    al.Title AS Album,
    g.Name AS Genre,
    t.UnitPrice
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
JOIN Genre g ON t.GenreId = g.GenreId
LIMIT 10;
