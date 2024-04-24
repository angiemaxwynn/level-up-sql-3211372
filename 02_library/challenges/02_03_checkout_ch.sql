-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT PatronID
FROM Patrons
WHERE FirstName = 'Jack' AND LastName = 'Vaan';

--PatronID is 50--

SELECT BookID, Title
FROM Books
WHERE BARCODE IN ('2855934983', '4043822646');
--dorian 11, expectations 93

INSERT INTO LOANS (BookID, PatronID, LoanDate, DueDate)
VALUES ('11', '50', '2022-08-25', '2022-09-08'),
('93', '50', '2022-08-25', '2022-09-08');

