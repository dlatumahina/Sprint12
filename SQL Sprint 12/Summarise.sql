--Deze Database gebruik je
USE DoctorWho
GO

--Hier begint de stored procedure
BEGIN

--Hier geef je aan dat je de top 3 van de tabellen wil zien die je geselecteerd hebt
SELECT TOP 3 tblCompanion.companionname,  Count(*)  AS Episodes
FROM tblEpisodeCompanion INNER JOIN tblCompanion ON tblEpisodeCompanion.companionid = tblCompanion.companionid
GROUP BY tblCompanion.companionname

--Hier order je de episodes van veel naar weinig
ORDER BY Count(*) DESC



--Hier komt het gedeelte van de 2e tabel



--Hier geef je aan dat je de top 3 van de tabellen wil zien die je geselecteerd hebt
SELECT TOP 3 tblEnemy.EnemyName, Count(*) AS Episodes
FROM tblEpisodeEnemy INNER JOIN tblEnemy ON tblEpisodeEnemy.EnemyId = tblEnemy.EnemyId
GROUP BY tblEnemy.EnemyName

--Hier order je de episodes van veel naar weinig
ORDER BY Count(*) DESC

--dit is het einde van de stored procedure
END