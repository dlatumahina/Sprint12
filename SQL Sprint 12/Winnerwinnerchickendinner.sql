--Deze database gebruik je
USE WorldEvents
GO
 
--het begin van de functie
BEGIN

--Hier declareer je de variabelen die je nodig hebt
DECLARE @Newest VARCHAR(256)
DECLARE @Oldest VARCHAR(256)
DECLARE @FirstAlphabetically VARCHAR(256)
DECLARE @LastAlphabetically VARCHAR(256)
DECLARE @NotAWinner VARCHAR(256)

--Hier selecteer je de First & Last AB die je straks terugziet in de tabel
SELECT @FirstAlphabetically = (SELECT EVENTNAME FROM tblEvent ORDER BY EventName)
SELECT @LastAlphabetically = (SELECT EVENTNAME FROM tblEvent ORDER BY EventName)
SELECT
	CASE
		WHEN @Newest (SELECT TOP 1 EventName FROM tblEvent ORDER BY EventDate)
		
		THEN 'Newest'

	    ELSE 'LOSER'

--einde van de functie 
END

--hier selecteer je alle variabelen die je wil laten zien in de tabel
SELECT @Newest
SELECT @FirstAlphabetically, 'First Alphabetically'
SELECT @LastAlphabetically, 'Last Alphabetically'
SELECT @Newest, 'Newest'
SELECT @NotAWinner, 'Not A Winner'

--einde van de laatste functie
END