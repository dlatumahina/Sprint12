--Deze database gebruik je
USE DoctorWho
GO

--hier declareer je alle variabelen
DECLARE @EpisodeId int = 42
DECLARE @EpisodeName VARCHAR(20) = 'Voyage of the Damned'
DECLARE @NumberCompanions int = 1
DECLARE @NumberEnemies int = 2 

--hier selecteer je alle variabelen die je wil laten zien
SELECT

@EpisodeName as Title,

@EpisodeId as 'Episode id',

@NumberCompanions as 'Number of companions',

@NumberEnemies as 'Number of enemies'