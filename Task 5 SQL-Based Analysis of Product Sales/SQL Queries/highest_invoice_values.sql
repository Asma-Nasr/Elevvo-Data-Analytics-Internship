/*
List the top 5 invoices with the highest total amounts.
*/
SELECT InvoiceId, CustomerId, Total
FROM Invoice
ORDER BY Total DESC
LIMIT 5;
