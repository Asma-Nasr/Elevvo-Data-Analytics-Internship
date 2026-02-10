SELECT              
    c.Country,
    ROUND(SUM(il.Quantity * il.UnitPrice), 2) AS TotalRevenue
FROM InvoiceLine il
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalRevenue DESC;  


