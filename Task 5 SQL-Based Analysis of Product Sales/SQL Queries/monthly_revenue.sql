/*
Show total revenue per month (YYYY-MM format).
*/
-- Monthly Revenue Trend
SELECT strftime('%Y-%m',InvoiceDate) AS Month,
		SUM(ROUND(Total,2)) AS Total
FROM Invoice 
GROUP BY Month 
ORDER BY Month;
