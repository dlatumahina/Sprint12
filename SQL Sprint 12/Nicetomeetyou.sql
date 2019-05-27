--Deze database gebruik je
USE DoctorWho
GO

--Declaratie van de variabelen en waarden
DECLARE @Naam varchar(11) = 'Dani Latumahina'
DECLARE @Geboortedatum datetime = '2000-12-07'
DECLARE @PetCount int = 0

--Selecteren van de variabelen 
SELECT @Naam AS Naam, @Geboortedatum AS Geboortedatum, @PetCount AS 'Aantal huisdieren';