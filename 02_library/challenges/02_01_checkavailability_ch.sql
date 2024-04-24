-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(b.Title)
FROM Books
WHERE b.Title = 'Dracula';

--3 Books of Dracula--
SELECT BookID
FROM Books
WHERE Title = 'Dracula';

--The book IDs are 12, 60,73--

SELECT COUNT(b.Title)
FROM Books AS b JOIN Loans AS l ON b.BookID = l.BookID
WHERE b.Title = 'Dracula'
AND l.ReturnedDate IS NULL;

--Subtracting the available books(returned) - not returned


SELECT
(SELECT COUNT(Title)
FROM Books
WHERE Title = 'Dracula') -
(SELECT COUNT(b.Title)
FROM Books AS b JOIN Loans AS l ON b.BookID = l.BookID
WHERE b.Title = 'Dracula'
AND l.ReturnedDate IS NULL)
AS AvailableCopies;