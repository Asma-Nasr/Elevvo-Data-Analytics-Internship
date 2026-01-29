/*
Which albums contain more than 20 tracks?
*/ 
SELECT a.AlbumId, a.Title, COUNT(t.TrackId) AS num_tracks
FROM Album a 
JOIN Track t ON a.AlbumId = t.AlbumId
GROUP BY a.Title
HAVING COUNT(t.TrackId)>20
ORDER BY num_tracks DESC;
