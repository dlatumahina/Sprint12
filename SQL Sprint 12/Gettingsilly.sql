--Deze database gebruik je
USE DoctorWho
GO

--Hier maak je de functie aan
CREATE FUNCTION dbo.fnSilly2
(
@CompanionName varchar(50),
@EnemyName varchar(50)
)

--Je vraagt een tabel op
RETURNS TABLE

AS

RETURN 

--Selecteer de episode waar de naam van de doktor de opgegeven parameter bevat
SELECT tblEpisode.SeriesNumber, tblEpisode.EpisodeNumber, tblEpisode.Title, tblDoctor.DoctorName, tblAuthor.AuthorName, tblEnemy.EnemyName, + tblCompanion.CompanionName
FROM     tblEpisode INNER JOIN tblDoctor 
      ON tblEpisode.DoctorId = tblDoctor.DoctorId INNER JOIN tblAuthor 
	  ON tblEpisode.AuthorId = tblAuthor.AuthorId CROSS JOIN tblCompanion CROSS JOIN tblEnemy

WHERE (CompanionName LIKE('%' + @CompanionName + '%')) AND (EnemyName LIKE('%' + @EnemyName + '%'))

GO

--Hier selecteer je alles van de database van wilf en ood
SELECT * FROM dbo.fnSilly('wilf','ood')





-- eerst had ik alleen dit (maar na vragen kwam ik op de code van hierboven uit) -- SELECT * FROM dbo.fnSilly('wilf','ood')

-- VERGELIJKEN MET DE CODE VAN IEMAND ANDERS UIT HET GROEPJE!!