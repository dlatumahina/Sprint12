--Deze database gebruik je
USE WorldEvents
GO

--Hier maak je de nieuwe function aan
CREATE FUNCTION fnContinentSummary2
(
@Continent varchar(20),
@Maand int
)

--Je vraagt een tabel terug
RETURNS TABLE

AS

RETURN 

--Hier selecteer je EventName, EventDetails, CategoryId en CountryID van tabel tblEvent
SELECT tblContinent.ContinentName, COUNT(DISTINCT(EventID)) 
AS 'Number of Events', COUNT(DISTINCT(CountryName)) 
AS 'Number of Countries', COUNT(DISTINCT(CategoryName)) 
AS 'Number of Categories'

FROM     tblContinent INNER JOIN tblCountry 
      ON tblContinent.ContinentID = tblCountry.ContinentID INNER JOIN tblEvent 
	  ON tblCountry.CountryID = tblEvent.CountryID INNER JOIN tblCategory 
	  ON tblEvent.CategoryID = tblCategory.CategoryID

WHERE  (MONTH(EventDate) = @Maand) AND (ContinentName = @Continent)

--Je moet het van A naar Z doen dus aftellen
GROUP BY ContinentName;

GO 

--Hier begint het resultaat wat je wil laten zien van de functie

--Tabel 1
SELECT * FROM fnContinentSummary('Europe', '4'); 

--Tabel 2
SELECT * FROM fnContinentSummary('Asia', '2'); 