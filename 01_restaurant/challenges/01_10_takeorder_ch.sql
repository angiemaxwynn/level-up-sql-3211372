-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO ORDERS (CustomerID, OrderDate)
VALUES ('70', '2022-09-20 14:00:00');

SELECT OrderID
FROM Orders
WHERE CustomerID = 70
ORDER BY OrderDate DESC;
--OrderID is 1001--

SELECT Name, DishID
FROM Dishes
WHERE Name IN ("House Salad", "Mini Cheeseburgers", "Tropical Blue Smoothie");

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4),(1001, 7), (1001, 20);

SELECT *
FROM Dishes AS d JOIN OrdersDishes AS o ON d.DishID = o.DishID
WHERE o.OrderID = 1001;

SELECT SUM (d.Price)
FROM Dishes AS d JOIN OrdersDishes AS o ON d.DishID = o.DishID
WHERE o.OrderID = 1001;