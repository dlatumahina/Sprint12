--Declaratie van de datum 
DECLARE @DOB Date ='12/07/2000'

--Je selecteert hier de volgende dingen en Hier worden de Geboorte Datum en de datum van vandaag berekend en daar komt je leeftijd uit
SELECT @DOB 'Geboorte Datum',
     GETDATE() 'Het is nu',
 DATEDIFF(YEAR,@DOB,GETDATE()) 'Je bent zo oud'