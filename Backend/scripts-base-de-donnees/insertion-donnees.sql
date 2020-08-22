

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






			
