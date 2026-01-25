/*
Which customers have made more than 5 invoices?
*/
SELECT 
	i.CustomerId,
	c.FirstName||' '||c.LastName AS customer_name, 
	COUNT(i.InvoiceId) AS Invoice_count
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY i.CustomerId
HAVING COUNT(i.InvoiceId) > 5
ORDER BY Invoice_count DESC;
