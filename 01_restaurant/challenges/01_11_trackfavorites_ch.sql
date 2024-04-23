-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT Name, DishID
FROM Dishes 
WHERE Name = 'Quinoa Salmon Salad';
--The DishID is 9--

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;

SELECT c.FirstName, c.LastName, d.name
FROM Customers AS c JOIN Dishes AS d ON c.FavoriteDish = d.DishID
WHERE c.CustomerID = 42;

