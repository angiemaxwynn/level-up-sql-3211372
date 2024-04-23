-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(o.OrderID) 'OrderCount', c.FirstName, c.LastName, c.Email
FROM Orders AS o JOIN Customers AS c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount DESC
LIMIT 10;
