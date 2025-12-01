CREATE PROCEDURE iyvjestaj
@pocetniMjesec date,
@krajnjiMjesec date,
@idMagacina int
AS
BEGIN
SET NOCOUNT ON


SELECT pp.stanje
FROM GOTOV_PROIYVOD gp
WHERE gp.datumProizvodnje>TO_DATE(@pocetniMjesec,"dd-mm-gg") AND gp.datumProizvodnje>TO_DATE(@krajnjiMjesec,"dd-mm-gg") AND 
END

Napisati uskladištenu proceduru koja omogućava
formiranje rezultujućeg skupa podataka koji treba da 
posluže kao podloga za formiranje izveštaja o 
stanju poluproizvoda, materijala i gotovih proizvoda na skladištu u zadatom datumskom intervalu,


 po magacinu i vrsti,.