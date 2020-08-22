
create table biere (
    nom char(30) not null,
    genre char(30) not null,
	biereId integer not null default autoincrement
    CONSTRAINT PK_nom PRIMARY KEY (nom)
);

create table prix(
    biereId integer not null default autoincrement
    prix char(60) not null,
    CONSTRAINT PK_prix PRIMARY KEY (genrId)
	CONSTRAINT FK_biereId FOREIGN KEY (biereId) REFERENCES biere(biereId),
);

create table client (
	nomC char(30) not null,
    prenomC char(30) not null,
    CONSTRAINT PK_nomC PRIMARY KEY (nomc),
);

create table myList (
    nomC char(30) not null,
    biereId integer not null,
    prix integer not null,
    CONSTRAINT PK_nombiereIdrating PRIMARY KEY (nomP, biereId),
    CONSTRAINT FK_nomC FOREIGN KEY (nomC) REFERENCES client(nomC),
    CONSTRAINT FK_prix FOREIGN KEY (prix) REFERENCES prix(prix),
	CONSTRAINT FK_biereId FOREIGN KEY (biereId) REFERENCES biere(biereId)
);

CREATE DOMAIN "boolean" BIT NOT NULL DEFAULT 0 check(@col in( 0,1 ) );

insert into prix
		(prix)
values
		('4.00'),
		('5.30'),
		('7.99'),
		('3.50');

insert into biere
		(nom,genre)
values
		('Kriek','Alcolisé'),
		('Blonde','Aloclisé'),
		('brune','Alcolisé'),
		('Chouffe','Non Alcolisé');

insert into client
		(nomC, prenomC,)
values
		('Bailly', 'Xavier'),
		('Bbbbb','Aaaa'),
		('lolilo','trololol');

insert into myList
		(nomC, biereId, prix)
values
		('Bailly',)






			
