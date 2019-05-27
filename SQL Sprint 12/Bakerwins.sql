--Deze database gebruik je
USE DoctorWho
GO 

--Hier maak je de functie aan
CREATE FUNCTION fnRegion
(
@FirstDate DATE,
@LastDate DATE
)

--je vraagt om een getal
RETURNS INT

AS

--Het begin van de functie
BEGIN

--Hier maak, selecteer en laat je de volgende variabelen zien:
DECLARE @Date_Diff INT

SELECT @Date_Diff=DateDIff(day,@FirstDate,ISNULL(@LastDate,Getdate()))

RETURN  @Date_Diff

END

GO

--Hier selecteer je de volgende dingen die je wil laten zien in de tabel:
SELECT DoctorName,dbo.fnRegion(FirstEpisodeDate,LastEpisodeDate) 
AS 'Reign in days' 
FROM tblDoctor 
ORDER BY [Reign in days] desc