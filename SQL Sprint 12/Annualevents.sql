--Deze database gebruik je
USE DoctorWho
GO

--Je maakt eerst een functie aan
CREATE FUNCTION dbo.EpisodeByDoctor
(
	@EpisodeNumbers INT,
	@SeriesNumbers INT
)

--Je returned de table van hierboven om de select van hierbeneden uit te kunnen voeren
RETURNS TABLE 

AS

--Je returned de volgende dingen die je wil laten zien als uitkomst
RETURN
	SELECT EpisodeNumber, Title, SeriesNumber, AuthorId  FROM tblEpisode
