-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(l.LoanID) AS LoanCount, p.FirstName, p.LastName
FROM Patrons AS p JOIN LOANS AS l 
ON p.PatronID = l.PatronID
GROUP BY l.PatronID
ORDER BY LoanCount ASC
LIMIT 10;


