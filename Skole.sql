--Inserts
insert into Laere (fornavn, efternavn, adresse, postNr_id, klasse_id)
values('Tom','It', 'Sankt Thomas Alle 3', 10, 2)

insert into Laere (fornavn, efternavn, adresse, postNr_id, klasse_id)
values('Lars','Henriksen', 'Nissedalen 76 ', 11, 1)

insert into Laere (fornavn, efternavn, adresse, postNr_id, klasse_id)
values('Mia','Hansen', 'Østervej 16', 12, 3)

DELETE 
FROM laere 
WHERE efternavn = 'Henriksen'

DELETE
FROM laere
WHERE efternavn = 'It'

DELETE
FROM laere
WHERE efternavn = 'Hansen'

DELETE FROM Laere






-- Alle lærerne
DROP TABLE IF EXISTS Laere

CREATE TABLE Laere (
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	fornavn VARCHAR(50) NOT NULL,
	efternavn VARCHAR(50) NOT NULL ,
	adresse VARCHAR(100) NOT NULL ,
	postNr_id INT NOT NULL,
	klasse_id INT NOT NULL
	FOREIGN KEY (klasse_id) REFERENCES Klasse(klasse_id),
	FOREIGN KEY (postNr_id) REFERENCES PostNr(PostNr_id)
);

SELECT * FROM Laere

--Junk tables
------------------------------------------------------------------------------------
DROP TABLE IF EXISTS Laere_Klasse

CREATE TABLE Laere_Klasse(
	klasse_id INT NOT NULL,
	Laere_id INT NOT NULL
	
	FOREIGN KEY (klasse_id) REFERENCES Klasse(klasse_id),
	FOREIGN KEY (Laere_id) REFERENCES Laere(id)
);

DROP TABLE IF EXISTS Elev_Klasse

CREATE TABLE Elev_Klasse(
	klasse_id INT NOT NULL,
	elev_id INT NOT NULL

	FOREIGN KEY (klasse_id) REFERENCES Klasse(klasse_id),
	FOREIGN KEY (elev_id) REFERENCES elev(elev_id)

);

SELECT * FROM elev

SELECT * FROM Laere LEFT JOIN Klasse  ON Laere.id = Klasse.klasse_id
SELECT * FROM elev RIGHT JOIN Klasse ON elev.klasse_id = Klasse.klasse_id ORDER BY Klasse.klasse, fornavn
SELECT * FROM elev INNER JOIN PostNr  ON elev.post_nr = PostNr.PostNr_id
SELECT * FROM Laere INNER JOIN PostNr  ON Laere.postNr_id = PostNr.PostNr_id

SELECT * FROM elev INNER JOIN Klasse ON elev.klasse_id = Klasse.klasse_id AND elev.efternavn IS NOT NULL

------------------------------------------------------------------------------------
select * from Klasse
-- klasserne
DROP TABLE IF EXISTS Klasse

CREATE TABLE Klasse (
	klasse_id INT PRIMARY KEY IDENTITY (1,1),

	klasse VARCHAR (100),
);
INSERT INTO Klasse (klasse)
VALUES ('1A')
INSERT INTO Klasse (klasse)
VALUES ('9B')
INSERT INTO Klasse (klasse)
VALUES ('4D')
INSERT INTO Klasse(klasse)
VALUES ('Elev ikke tildelt en klasse')

SELECT * FROM Laere

SELECT * FROM Klasse
DELETE FROM Klasse


-- elev
DROP TABLE IF EXISTS elev

CREATE TABLE elev (
	elev_id INT PRIMARY KEY IDENTITY (1,1),
	fornavn VARCHAR(100) NOT NULL,
	efternavn VARCHAR(100) NOT NULL,
	adresse VARCHAR(100) NOT NULL,
	post_nr INT NOT NULL,
	klasse_id INT NOT NULL
	FOREIGN KEY (klasse_id) REFERENCES Klasse(klasse_id),
	FOREIGN KEY (post_nr) REFERENCES PostNr(PostNr_id)
);

SELECT * FROM elev

DELETE FROM elev

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Bo', 'Andersen', 'Gammel Byvej 12', 1, 2)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Frederikke', 'Hansen', 'Amager Boulevard 5', 2, 4)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Jens', 'Mikkelsen', 'Lily Brogbergs Vej 17', 3, 4)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Philip', 'Mortensen', 'Brunevang 90', 4, 4)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Kasper', 'Frederiksen', 'Bryggertorvet32', 5, 1)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Milla', 'Jørgensen', 'Virum Torv 25',5, 1)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Fie', 'Kudsen', 'Allen 85', 6, 2)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Henrik', 'Madsen', 'Lily Brobergs Vej53', 7, 3)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Felix', 'flikkersen', 'Møntergade 19', 8, 3)

INSERT INTO elev(fornavn, efternavn, adresse, post_nr, klasse_id)
VALUES ('Flint', 'Lockwood', 'Stormgade 27', 3, 3)




--Post nummber og by
---------------------------------------------------------------------------------
DROP TABLE IF EXISTS PostNr

CREATE TABLE PostNr (
	PostNr_id INT PRIMARY KEY IDENTITY (1,1),
	PostNr INT,
);

SELECT * FROM PostNr

DELETE FROM PostNr

INSERT INTO Klasse(klasse)
VALUES ('Elev ikke tildelt en klasse')

INSERT INTO PostNr(PostNr)
VALUES (2650)
INSERT INTO PostNr(PostNr)
VALUES (2300)
INSERT INTO PostNr(PostNr)
VALUES (2500)
INSERT INTO PostNr(PostNr)
VALUES (2610)
INSERT INTO PostNr(PostNr)
VALUES (3650)
INSERT INTO PostNr(PostNr)
VALUES (2830)
INSERT INTO PostNr(PostNr)
VALUES (2770)
INSERT INTO PostNr(PostNr)
VALUES (1140)
INSERT INTO PostNr(PostNr)
VALUES (1555)
INSERT INTO PostNr(PostNr)
VALUES (1824)
INSERT INTO PostNr(PostNr)
VALUES (2740)
INSERT INTO PostNr(PostNr)
VALUES (2750)