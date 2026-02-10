/* 
How many customers are there in each country? 
*/
SELECT Country, COUNT(*) AS Customer_count
FROM Customer
GROUP BY Country
ORDER BY Customer_count DESC; 
