CREATE DATABASE decode_labs;
USE decode_labs;

SELECT * FROM orders
LIMIT 10;

SELECT count(*) AS total_orders FROM orders;

SELECT AVG(TotalPrice) AS Total_Average FROM orders;

SELECT Product,COUNT(*) AS Order_Count FROM orders
GROUP BY Product
ORDER BY Order_Count DESC;

SELECT PaymentMethod,COUNT(*) AS Payment_Count FROM orders
GROUP BY PaymentMethod
ORDER BY Payment_Count DESC;

SELECT CouponCode,COUNT(*) AS Usage_Count FROM orders
GROUP BY CouponCode
ORDER BY Usage_Count DESC;

SELECT *FROM orders
WHERE TotalPrice > (select avg(TotalPrice) from orders); 