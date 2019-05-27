USE WorldEvents

DECLARE @EventName varchar(255) = 'Coup attempt in Russia'
DECLARE @EventDate date = '1991-08-19'  
DECLARE @CountryName varchar(255) = 'Russia' 

SELECT
@EventName as EpisodeName,
@EventDate as EventDate,
@CountryName as CountryName