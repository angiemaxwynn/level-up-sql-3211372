-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)


Insert INTO Customers (FirstName, LastName, Email)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com');

Insert INTO Reservations (CustomerID, Date, PartySize)
VALUES ('102', '2018-08-12 18:00:00', '5');

SELECT c.FirstName, c.LastName, c.Email, r.Date, r.PartySize
FROM Customers AS c JOIN Reservations AS r ON c.CustomerID = r.CustomerID
WHERE c.Email = 'smac@kinetecoinc.com';