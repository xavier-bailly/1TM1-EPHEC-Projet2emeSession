	create table tbclient (
		nomC char(30) not null,
		prenomP char(30) not null,
		nbcommande char(100),
		commandeId INTEGER NOT NULL default autoincrement,
		CONSTRAINT PK_nomC PRIMARY KEY (nomc),
		CONSTRAINT FK_nbcommande FOREIGN KEY (nbcommande) REFERENCES tbcommande(nbcommande),
		
	);
	
	create table tbBiere (
		biereId INTEGER NOT NULL default autoincrement,
	    nomBiere char(30) not null,
		prix char(60) not null,
		prixId char(60) not null,
		CONSTRAINT PK_biereId PRIMARY KEY (biereId),
		
	);
	
	create table tbPrix (
		prix char(30) not null,
		prixId INTEGER NOT NULL default autoincrement,
		CONSTRAINT PK_prix PRIMARY KEY (prix),
		CONSTRAINT FK_biereId FOREIGN KEY (biereId) REFERENCES tbBiere(biereId),
	);
		
	create table tbCommande (
		nbcommande char(100),
		commandeId integer not null,
		biereId integer not null,
		CONSTRAINT PK_nbcommande PRIMARY KEY (nbcommande),
		CONSTRAINT FK_biereId FOREIGN KEY (biereId) REFERENCES tbBiere(biereId),
	);
	
