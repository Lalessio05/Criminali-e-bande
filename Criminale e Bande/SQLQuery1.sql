﻿--UPDATE Criminale SET DataNascita= '1999-11-11' WHERE (Nome='Giovanni' AND Cognome='Rossi');
--ALTER TABLE Crimine RENAME COLUMN 'Descrizione' to 'TipoCrimine';
--EXEC sp_rename 'Crimine.Descrizione', 'TipoCrimine';
--DELETE FROM Crimine WHERE(YEAR(DataCrimine) < 1990)