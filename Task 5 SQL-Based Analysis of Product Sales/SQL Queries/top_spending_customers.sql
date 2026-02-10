/*
Who are the top 10 customers by total spending?
*/
SELECT c.CustomerId,
		FirstName || ' ' || LastName AS 'Full Name',
		ROUND(SUM(i.Total)) AS Total
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY i.CustomerId
ORDER BY Total DESC
LIMIT 10; 
