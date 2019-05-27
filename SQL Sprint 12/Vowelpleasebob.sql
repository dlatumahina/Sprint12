--Deze database gebruik je
USE WorldEvents
GO

--Hier maak je de functie aan
CREATE FUNCTION Vowel
(
@vow varchar(2)
)

--Hier vraag je om de table
RETURNS @tblInfo TABLE
(Information varchar(MAX),
 Category varchar(MAX))

AS

--Het begin van de functie
BEGIN

GO

--Hier wil je alles Selecteren van de dingen dien aangegeven zijn
INSERT INTO @tblInfo
SELECT CountryName, 'Country' FROM tblCountry WHERE CountryName = 'vowel'
SELECT ContinentName, 'Continent' FROM tblContinent WHERE ContinentName = 'vowel'
SELECT CategoryName, 'Category' FROM tblCategory WHERE CategoryName = 'vowel'

RETURN

END

BEGIN

--hier selecteer je alles van vowel wat je wil laten zien en je wil het orderen op continent
SELECT * from Vowel('a') ORDER BY tblContinent


--Dit is het einde van de functie
END
