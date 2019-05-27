--Deze database gebruik je
USE DoctorWho
GO

--hier declareer je alle variabelen
DECLARE @EpisodeId int = 15
DECLARE @EnemyList varchar(100) = 'Face of Boe, Sisters of Plenitude, Lady Cassandra'

--hier selecteer je alle variabelen die je wil laten zien
SELECT
@EpisodeId as 'Episode id',
@EnemyList as 'Enemies'