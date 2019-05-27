--Deze database gebruik je
USE DoctorWho
GO

--Hier declareer je de volgende variabelen
DECLARE @DoctorNumber int = 9
DECLARE @DoctorId int
DECLARE @DoctorName varchar(100)
DECLARE @NumberEpisodes int

--Hieronder zie je bij de volgende 3 dingen dat de DI, DN en NE zijn geselecteerd uit de TD en TE 
--door dat te selecteren kun je verder naar de stap eronder
SELECT @DoctorId = DoctorId 
FROM dbo.tblDoctor 
WHERE DoctorNumber =  @DoctorNumber

SELECT @DoctorName = DoctorName 
FROM dbo.tblDoctor 
WHERE DoctorNumber =  @DoctorNumber

SELECT @NumberEpisodes = COUNT(DoctorId) 
FROM dbo.tblEpisode 
WHERE DoctorId = @DoctorId

--Dit is wat je gepresenteerd krijgt als je op execute klikt
PRINT 'Result for doctor number ' + CAST(@DoctorId AS VARCHAR(3))
PRINT '----------------------------'
PRINT ''
PRINT 'Doctor Name: ' + @DoctorName
PRINT ''
PRINT 'Episodes appeared in: ' + CAST(@NumberEpisodes AS VARCHAR(3))