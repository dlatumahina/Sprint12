--Deze database gebruik je
USE DoctorWho
GO

-- hier selecteer je alle films die russell heeft gemaakt het resultaat moet 0 zijn
SELECT * FROM dbo.fnChosenEpisodes(1,'Russell T. Davies')
