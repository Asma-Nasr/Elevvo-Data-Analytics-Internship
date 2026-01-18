/*
How much total revenue has each employee generated?
*/
SELECT 
    e.FirstName || ' ' || e.LastName AS employee,
    ROUND(SUM(i.Total), 2) AS total_sales
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY total_sales DESC;
