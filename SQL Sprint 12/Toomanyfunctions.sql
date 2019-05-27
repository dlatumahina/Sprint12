--Deze database gebruik je
USE DoctorWho
GO

--Hier maak je de functie aan
CREATE FUNCTION fnNumberCompanions
(
@ID int
)

--Je vraagt om een int 
RETURNS INT

--Het begin van de functie
BEGIN

--Hier declareer je de variable
DECLARE @AantalCompanions INT

SET @AantalCompanions = (SELECT COUNT(tblCompanion.CompanionId)
	FROM            tblEpisode INNER JOIN tblEpisodeCompanion 
				 ON tblEpisode.EpisodeId = tblEpisodeCompanion.EpisodeId INNER JOIN tblCompanion 
				 ON tblEpisodeCompanion.CompanionId = tblCompanion.CompanionId

	WHERE tblEpisode.EpisodeId = @ID)

--Hier vraag je de volgende variable op
RETURN @AantalCompanions 

--Einde van de functie
END

GO

--Hier maak je de functie aan
CREATE FUNCTION fnNumberEnemies
(
@ID INT
)

--Je vraagt om een int 
RETURNS INT

AS

--Het begin van de functie
BEGIN

--Hier declareer je de variable
DECLARE @AantalEnemies INT

SET @AantalEnemies = (SELECT COUNT(tblEnemy.EnemyId) 
FROM     tblEpisode INNER JOIN
                  tblEpisodeEnemy ON tblEpisode.EpisodeId = tblEpisodeEnemy.EnemyId INNER JOIN
                  tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyID
				  
WHERE  (tblEpisode.EpisodeId = @ID))

--Hier vraag je de volgende variable op
RETURN @AantalEnemies 

--Einde van de functie
END

GO

--Hier maak je de functie aan
CREATE FUNCTION fnWords
(
@Title VARCHAR(100)
)

--Je vraagt om een int 
RETURNS INT

AS

--Het begin van de functie
BEGIN

--Hier declareer je de variable
DECLARE @Number INT

SET @Number =

(SELECT LEN(LTRIM(RTRIM(Title))) - LEN(REPLACE(LTRIM(RTRIM(Title)), ' ', '')) + 1
FROM tblEpisode

WHERE Title = @Title)

--Hier vraag je de volgende variable op
RETURN @Number

--Einde van de functie
END

GO

--hier selecteer je de variabelen uit de tblEpisode en je wil her orderen op woorden van veel naar weinig
SELECT EpisodeId, Title,
dbo.fnNumberCompanions(EpisodeId) AS Companions,
dbo.fnNumberEnemies(EpisodeId) AS Enemies,
dbo.fnWords(Title) AS Words

FROM tblEpisode

ORDER BY Words DESC