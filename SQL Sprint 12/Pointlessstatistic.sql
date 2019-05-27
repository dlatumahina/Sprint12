--Deze database gebruik je
USE WorldEvents
GO

--hier maak je de function aan
ALTER FUNCTION dbo.fnLetterCount(
@First VARCHAR(MAX),
@Second VARCHAR(MAX)
)

--hier return je een int omdat je die op het einde moet asc
RETURNS INT

AS

BEGIN

--hier declareer je de variables die je wil laten zien 
DECLARE @FirstLength int = LEN(@First)
DECLARE @SecondLength int = LEN(@Second)

--hier roep je de variabelen op die je wil latenzien
RETURN @FirstLength + @SecondLength

END

--hier komen de results uit die je wil laten zien
GO

--hier selecteer je wat je precies wil laten zien
SELECT EventName,
       EventDetails,
	   EventDate, 
	   dbo.fnLetterCount(EventName,EventDetails) 

	AS 'Number Of Letters' 

--van deze table haal je informatie 
FROM tblEvent

--hier order je de number op letters van klein naar groot
ORDER BY [Number of letters]  ASC


