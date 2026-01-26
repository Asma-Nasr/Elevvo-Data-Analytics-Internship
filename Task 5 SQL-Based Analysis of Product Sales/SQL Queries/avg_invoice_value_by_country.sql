/*
What is the average invoice total for each billing country?
*/
SELECT BillingCountry,ROUND(AVG(Total), 2) AS avg_invoice
FROM Invoice
GROUP BY BillingCountry
ORDER BY avg_invoice DESC;
