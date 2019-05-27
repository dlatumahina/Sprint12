--Deze database gebruik je
USE DoctorWho
GO

--deze functie maak je aan
  CREATE FUNCTION fnEpisodeDescription 
	(
	  
	  @Title varchar(MAX)

	)

--Je vraagt om de varchar
RETURNS varchar(MAX)

AS

BEGIN

--Hier declareer je de Episode Type

	DECLARE @EType varchar(MAX)
	
	SET @EType =

--Hier selecteer je First part & Second part en als je een Episode hebt die dat niet is dan krijg je Single episode terug
	(SELECT 

		CASE

			WHEN 
			CHARINDEX ('First Part', Title) > 1 THEN 'First part'

			WHEN 
			CHARINDEX ('First Part', Title) > 1 THEN 'Second part'

			ELSE 'Single episode'

END

--Je haalt hier informatie uit de TblEpisode
FROM tblEpisode

--Je krijgt alle Episode Types terug 
WHERE Title = @Title)
	
RETURN @EType

END

GO

--Door de Database en Tbl te selecteren kun je de tellen hoeveel episodes er zijn per type
SELECT dbo.fnEpisodeDescription(Title) AS 'Episode type', COUNT(*) AS 'Number of episodes'

FROM tblEpisode

GROUP BY dbo.fnEpisodeDescription(Title)
