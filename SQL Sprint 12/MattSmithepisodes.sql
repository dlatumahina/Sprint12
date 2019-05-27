--maak een nieuwe query aan en plak dit -- exec dbo.spMattSmithEpisodes

--Deze Database gebruik je
USE DoctorWho
GO

--Hier maak je de stored procedure aan
CREATE PROC dbo.spMattSmithEpisodes

AS

--Hier begint de stored procedure
BEGIN

--Hier selecteer je de statements om de episodes te selecteren met Matt Smith de dokter uit 2012
SELECT SeriesNumber, EpisodeNumber, Title, EpisodeDate, DoctorName FROM tblEpisode,tblDoctor 
WHERE DoctorName = 'Matt Smith' AND year(EpisodeDate) =2012

--Je moet de EpisodeID orderen van weinig naar veel ID'S
ORDER BY EpisodeId ASC;

--Dit is het einde van de stored procedure
END