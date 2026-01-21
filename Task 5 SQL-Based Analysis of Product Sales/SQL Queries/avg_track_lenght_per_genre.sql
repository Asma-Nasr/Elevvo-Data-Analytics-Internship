/*
What is the average track length (in minutes) for each genre? 
*/ 
SELECT g.Name, ROUND(AVG(t.Milliseconds/60000),2) AS avg_lenght_minutes
FROM Genre g 
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.Name 
ORDER BY avg_lenght_minutes DESC;   
 