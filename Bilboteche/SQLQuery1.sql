CREATE TABLE Genere
(
	IdGenere int primary key identity(1,1),
	Nome varchar(30),
);
CREATE TABLE Città
(
	IdCittà int primary key identity(1,1),
	Nome varchar(30),
)
CREATE TABLE Autore
(
	IdAutore int primary key identity(1,1),
	Nome varchar(30),
	Cognome varchar(30),
	DataNascita date,
)
CREATE TABLE CasaEditrice
(
	IdCasaEditrice int primary key identity(1,1),
	Nome varchar(30),
	IdCittà_fk int foreign key references Città(IdCittà),
)
CREATE TABLE Socio
(
	IdSocio int primary key identity(1,1),
	Nome varchar(30),
	Cognome varchar(30),
	Via varchar(50),
	IdCittà_fk int foreign key references Città(IdCittà),
)
CREATE TABLE Libro 
(
	IdLibro int primary key identity(1,1),
	Titolo varchar(100),
	IdGenere_fk int foreign key references Genere(IdGenere),
	IdCasaEditrice_fk int foreign key references CasaEditrice(IdCasaEditrice),
	Prezzo money,
);
CREATE TABLE ScrittoDa
(
	IdScrittoDa int primary key identity(1,1),
	IdAutore_fk int foreign key references Autore(IdAutore),
	IdLibro_fk int foreign key references Libro(IdLibro),
)
CREATE TABLE Noleggia
(
	IdNoleggia int primary key identity(1,1),
	DataPrestito date,
	DataRestituzione date,
	IdSocio_fk int foreign key references Socio(IdSocio),
	IdLibro_fk int foreign key references Libro(IdLibro),
)
