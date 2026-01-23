/*
How many tracks are in each playlist?
*/
SELECT 
    p.Name AS playlist,
    COUNT(pt.TrackId) AS track_count
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId
ORDER BY track_count DESC;
