SELECT AVG(Libro.Prezzo) as 'Media', Autore.Cognome, Autore.Nome
FROM Autore
INNER JOIN ScrittoDa on ScrittoDa.IdAutore_fk = Autore.IdAutore
INNER JOIN Libro on Libro.IdLibro = ScrittoDa.IdLibro_fk
GROUP BY Autore.Nome, Autore.Cognome
HAVING AVG(Libro.Prezzo) <
	(
	SELECT AVG(Libro.Prezzo)
	FROM Libro
	INNER JOIN ScrittoDa on ScrittoDa.IdLibro_fk = Libro.IdLibro
	INNER JOIN Autore on Autore.IdAutore = ScrittoDa.IdAutore_fk
	WHERE (Autore.Nome = 'Rick')
)

