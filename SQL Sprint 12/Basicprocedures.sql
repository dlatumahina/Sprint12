--vul dit in een nieuwe query in -- exec uspCountriesAsia

--Deze Database gebruik je.
USE WorldEvents
GO

--Hier maak je een stored procedure aan.
ALTER PROC [dbo].[uspCountriesAsia]

AS

--Hier begin je de stored procedure.
BEGIN

--Deze statements vraag je om de CountryID en CountryName op te kunnen vragen.
SELECT CountryID, countryName FROM tblCountry WHERE (ContinentID = 1)

--Je moet het orderen op Countryname, dat doe je door het te orderen by countryname.
ORDER BY CountryName

--Dit is het einde van de stored procedure
END

