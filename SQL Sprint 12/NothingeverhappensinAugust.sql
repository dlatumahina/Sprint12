--Maak een nieuwe query aan en plak dit erin -- exec uspAugustEvents

--Deze Database gebruik je
USE WorldEvents
GO

--Hier maak je de stored procedure aan
ALTER PROC uspAugustEvents

AS

--Begin van de stored procedure
BEGIN

--De bovenste 5 resultaten worden getoond als de maand gelijk is aan de 8e maand oftewel augustus
SELECT TOP 5 EventID, EventName, EventDetails, EventDate    FROM tblEvent  WHERE  (Month(EventDate) = 08)

--Einde van de stored procedure
END