--Deze database gebruik je
USE DoctorWho
GO

BEGIN

--deze functie maak je aan om de maanden in een tabel op te kunnen roepen
CREATE FUNCTION MonthName
(
@Month int
)

RETURNS TABLE

AS

RETURN 

--Dit is de code die geplakt is van de opdracht
SELECT DATENAME(MM, '2017-' + CAST(@Month as varchar(2)) + '-01') AS 'Maand'

END

GO

--2 is voor Maand 2 (January)
SELECT * FROM MonthName(1);

--8 is voor Maand 8 (February)
SELECT * FROM MonthName(2);

--12 is voor Maand 12 (March)
SELECT * FROM MonthName(3);