--Declaratie van de variabelen en waarden
DECLARE @Title varchar(15) = 'Summary of events'
DECLARE @EarliestDate date = '1776-03-09'
DECLARE @LatestDate date = '2016-11-08'
DECLARE @NumberOfEvents int = 459

--Selecteren van de variabelen en waarden 
SELECT @Title AS Title, @EarliestDate AS EarliestDate, @LatestDate AS LatestDate, @NumberOfEvents AS 'Number Of Events';