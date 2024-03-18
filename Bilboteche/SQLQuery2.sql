--Prende tutti i prestiti del 2023, li joina a Genere (magari qualche genere manca), e conti i libri di quel genere che hanno quell'fk
SELECT COUNT(*) as "NumeroLibri", Genere.Nome
FROM Libro 
INNER JOIN Genere on Libro.IdGenere_fk = Genere.IdGenere
INNER JOIN Noleggia on Libro.IdLibro = Noleggia.IdLibro_fk
WHERE YEAR(Noleggia.DataPrestito) = 2023 
GROUP BY Genere.Nome

SELECT Città.Nome, COUNT(*) as 'NumeroSoci'
FROM Città
INNER JOIN Socio on Socio.IdCittà_fk = Città.IdCittà
GROUP BY Città.Nome 
--HAVING COUNT(*) > 3

SELECT Genere.Nome, AVG(Libro.Prezzo) as 'MediaPrezzi'
FROM Libro 
INNER JOIN ScrittoDa ON ScrittoDa.IdLibro_fk = Libro.IdLibro
INNER JOIN Autore ON ScrittoDa.IdAutore_fk = Autore.IdAutore
INNER JOIN Genere ON Libro.IdGenere_fk = Genere.IdGenere
WHERE YEAR(Autore.DataNascita) < 1970
GROUP BY Genere.Nome
HAVING AVG(Libro.Prezzo) BETWEEN 10 AND 15