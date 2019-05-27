--Deze database gebruik je
USE WorldEvents
GO

--Hier declareer je de variabelen
DECLARE @EventsInYear varchar(256) = '' 

--Hier selecteer je de variabelen die gedeclareerd zijn
SELECT TOP 3 @EventsInYear = @EventsInYear + EventName  + ', '

--Hier pak je alle informatie uit de Table (tblEvent) van het jaar 1992
FROM     tblEvent WHERE  (YEAR(EventDate) = 1992) 
ORDER BY EventName
Select @EventsInYear;