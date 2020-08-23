	create table tbclient (
		nomC char(30) not null,
		prenomC char(30) not null,		
		CONSTRAINT PK_nomC PRIMARY KEY (nomc),
	);
	
	create table tbPrix (
		prix char(30) not null,
		prixId INTEGER NOT NULL default autoincrement,
		CONSTRAINT PK_prixId PRIMARY KEY (prixId),
	);
	
	create table tbBiere (
		biereId INTEGER NOT NULL default autoincrement,
	    nomBiere char(30) not null,
		prixId integer not null,
		CONSTRAINT PK_biereId PRIMARY KEY (biereId),
		CONSTRAINT FK_prixId FOREIGN KEY (prixId) REFERENCES tbPrix(prixId),
	);
	
		
	create table tbCommande (
		nomC char(30) not null,
		nbcommande char(100),
		commandeId INTEGER NOT NULL default autoincrement,
		biereId integer not null,
		CONSTRAINT PK_commandeId PRIMARY KEY (commandeId),
		CONSTRAINT FK_nomC FOREIGN KEY (nomC) REFERENCES tbClient(nomC),
		CONSTRAINT FK_biereId FOREIGN KEY (biereId) REFERENCES tbBiere(biereId),
	);
	
