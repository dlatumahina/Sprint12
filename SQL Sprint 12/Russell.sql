--Plak dit in een nieuwe query -- exec spRussell

--Deze Database gebruik je
USE DoctorWho
GO

--Hier maak je de stored procedure aan
ALTER PROC spRussell

AS

--hier begint de stored procedure
BEGIN

--hier selecteer je de volgende tables wat je moet laten zien volgens de opdracht
	SELECT tblEpisode.Title  FROM tblEpisode 
	WHERE  (AuthorId = 22)

--Je moet ze orderen op episodedate van nieuw naar oud
	ORDER BY tblEpisode.EpisodeDate DESC;

--Dit is het einde van de stored procedure
END