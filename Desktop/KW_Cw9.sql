-- Database: Cwiczenie_9

-- DROP DATABASE IF EXISTS "Cwiczenie_9";

CREATE DATABASE "Cwiczenie_9"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
	CREATE SCHEMA geo;

--4.
CREATE TABLE geo.GeoEon (
	id_eon INT PRIMARY KEY NOT NULL,
	nazwa_eon VARCHAR(32) NOT NULL
	
);

CREATE TABLE geo.GeoEra (
	id_era INT PRIMARY KEY NOT NULL,
	id_eon INT  NOT NULL,
	nazwa_era VARCHAR(32) NOT NULL
	
);

CREATE TABLE geo.GeoOkres (
	id_okres INT PRIMARY KEY NOT NULL,
	id_era INT  NOT NULL,
	nazwa_okres VARCHAR(32) NOT NULL
	
);

CREATE TABLE geo.GeoEpoka (
	id_epoka INT PRIMARY KEY NOT NULL,
	id_okres INT  NOT NULL,
	nazwa_epoka VARCHAR(32) NOT NULL
	
);

CREATE TABLE geo.GeoPietro (
	id_pietro INT PRIMARY KEY NOT NULL,
	id_epoka INT  NOT NULL,
	nazwa_pietro VARCHAR(32) NOT NULL
	
);

ALTER TABLE geo.GeoEra ADD CONSTRAINT klucz_obcy FOREIGN KEY (id_eon) REFERENCES geo.GeoEon(id_eon);
ALTER TABLE geo.GeoOkres ADD CONSTRAINT klucz_obcy_2 FOREIGN KEY (id_era) REFERENCES geo.GeoEra(id_era);
ALTER TABLE geo.GeoEpoka ADD CONSTRAINT klucz_obcy_3 FOREIGN KEY (id_okres ) REFERENCES geo.GeoOkres(id_okres );
ALTER TABLE geo.GeoPietro ADD CONSTRAINT klucz_obcy_4 FOREIGN KEY (id_epoka) REFERENCES geo.GeoEpoka(id_epoka);

--5.
INSERT INTO geo.GeoEon VALUES (1, 'Fanerozoik');


INSERT INTO geo.GeoEra VALUES (1, 1, 'Paleozoik');
INSERT INTO geo.GeoEra VALUES (2, 1, 'Mezozoik');
INSERT INTO geo.GeoEra VALUES (3, 1, 'Kenozoik');


INSERT INTO geo.GeoOkres VALUES (1, 1, 'Dewon');
INSERT INTO geo.GeoOkres VALUES (2, 1, 'Karbon');
INSERT INTO geo.GeoOkres VALUES (3, 1, 'Perm');
INSERT INTO geo.GeoOkres VALUES (4, 2, 'Trias');
INSERT INTO geo.GeoOkres VALUES (5, 2, 'Jura');
INSERT INTO geo.GeoOkres VALUES (6, 2, 'Kreda');
INSERT INTO geo.GeoOkres VALUES (7, 3, 'Paleogen');
INSERT INTO geo.GeoOkres VALUES (8, 3, 'Neogen');
INSERT INTO geo.GeoOkres VALUES (9, 3, 'Czwartorzad');

INSERT INTO geo.GeoEpoka VALUES (1, 1, 'Dolny');
INSERT INTO geo.GeoEpoka VALUES (2, 1, 'Srodkowy');
INSERT INTO geo.GeoEpoka VALUES (3, 1, 'Gorny');

INSERT INTO geo.GeoEpoka VALUES (4, 2, 'Dolny');
INSERT INTO geo.GeoEpoka VALUES (5, 2, 'Gorny');

INSERT INTO geo.GeoEpoka VALUES (6, 3, 'Dolny');
INSERT INTO geo.GeoEpoka VALUES (7, 3, 'Gorny');

INSERT INTO geo.GeoEpoka VALUES (8, 4, 'Dolna');
INSERT INTO geo.GeoEpoka VALUES (9, 4, 'Srodkowa');
INSERT INTO geo.GeoEpoka VALUES (10, 4, 'Gorna');

INSERT INTO geo.GeoEpoka VALUES (11, 5, 'Dolna');
INSERT INTO geo.GeoEpoka VALUES (12, 5, 'Srodkowa');
INSERT INTO geo.GeoEpoka VALUES (13, 5, 'Gorna');


INSERT INTO geo.GeoEpoka VALUES (14, 6, 'Dolna');
INSERT INTO geo.GeoEpoka VALUES (15, 6, 'Gorna');

INSERT INTO geo.GeoEpoka VALUES (16, 7, 'Paleocen');
INSERT INTO geo.GeoEpoka VALUES (17, 7, 'Eocen');
INSERT INTO geo.GeoEpoka VALUES (18, 7, 'Oligocen');


INSERT INTO geo.GeoEpoka VALUES (19, 8, 'Miocen');
INSERT INTO geo.GeoEpoka VALUES (20, 8, 'Pliocen');

INSERT INTO geo.GeoEpoka VALUES (21, 9, 'Plejstocen');
INSERT INTO geo.GeoEpoka VALUES (22, 9, 'Holocen');

INSERT INTO geo.GeoPietro VALUES (1, 1, 'Lochkow');
INSERT INTO geo.GeoPietro VALUES (2, 1, 'Prag');
INSERT INTO geo.GeoPietro VALUES (3, 1, 'Ems');
INSERT INTO geo.GeoPietro VALUES (4, 2, 'Eifel');
INSERT INTO geo.GeoPietro VALUES (5, 2, 'Zywet');
INSERT INTO geo.GeoPietro VALUES (6, 3, 'Fran');
INSERT INTO geo.GeoPietro VALUES (7, 3, 'Famen');
INSERT INTO geo.GeoPietro VALUES (8, 4, 'Turnej');
INSERT INTO geo.GeoPietro VALUES (9, 4, 'Wizen');
INSERT INTO geo.GeoPietro VALUES (10, 5, 'Namur');
INSERT INTO geo.GeoPietro VALUES (11, 5, 'Westfal');
INSERT INTO geo.GeoPietro VALUES (12, 5, 'Stefan');
INSERT INTO geo.GeoPietro VALUES (13, 6, 'Aselsk');
INSERT INTO geo.GeoPietro VALUES (14, 6, 'Sakmar');
INSERT INTO geo.GeoPietro VALUES (15, 6, 'Artynsk');
INSERT INTO geo.GeoPietro VALUES (16, 7, 'Kungur');
INSERT INTO geo.GeoPietro VALUES (17, 7, 'Kazañ');
INSERT INTO geo.GeoPietro VALUES (18, 7, 'Tatar');
INSERT INTO geo.GeoPietro VALUES (19, 8, 'Scytyk');
INSERT INTO geo.GeoPietro VALUES (20, 9, 'Anizyk');
INSERT INTO geo.GeoPietro VALUES (21, 9, 'Ladyn');
INSERT INTO geo.GeoPietro VALUES (22, 10, 'Karnik');
INSERT INTO geo.GeoPietro VALUES (23, 10, 'Noryk');
INSERT INTO geo.GeoPietro VALUES (24, 10, 'Retyk');
INSERT INTO geo.GeoPietro VALUES (25, 11, 'Hetang');
INSERT INTO geo.GeoPietro VALUES (26, 11, 'Synemur');
INSERT INTO geo.GeoPietro VALUES (27, 11, 'Pliensbach');
INSERT INTO geo.GeoPietro VALUES (28, 11, 'Toark');
INSERT INTO geo.GeoPietro VALUES (29, 12, 'Alen');
INSERT INTO geo.GeoPietro VALUES (30, 12, 'Bajos');
INSERT INTO geo.GeoPietro VALUES (31, 12, 'Baton');
INSERT INTO geo.GeoPietro VALUES (32, 12, 'Kejlowej');
INSERT INTO geo.GeoPietro VALUES (33, 13, 'Oksford');
INSERT INTO geo.GeoPietro VALUES (34, 13, 'Kimeryd');
INSERT INTO geo.GeoPietro VALUES (35, 13, 'Tyton');
INSERT INTO geo.GeoPietro VALUES (36, 14, 'Berias');
INSERT INTO geo.GeoPietro VALUES (37, 14, 'Walanzyn');
INSERT INTO geo.GeoPietro VALUES (38, 14, 'Hoteryw');
INSERT INTO geo.GeoPietro VALUES (39, 14, 'Barrem');
INSERT INTO geo.GeoPietro VALUES (40, 14, 'Apt');
INSERT INTO geo.GeoPietro VALUES (41, 14, 'Alb');
INSERT INTO geo.GeoPietro VALUES (42, 15, 'Cenoman');
INSERT INTO geo.GeoPietro VALUES (43, 15, 'Turon');
INSERT INTO geo.GeoPietro VALUES (44, 15, 'Koniak');
INSERT INTO geo.GeoPietro VALUES (45, 15, 'Santon');
INSERT INTO geo.GeoPietro VALUES (46, 15, 'Kampan');
INSERT INTO geo.GeoPietro VALUES (47, 15, 'Mastrycht');
INSERT INTO geo.GeoPietro VALUES (48, 16, 'Dan');
INSERT INTO geo.GeoPietro VALUES (49, 16, 'Tanet');
INSERT INTO geo.GeoPietro VALUES (50, 17, 'Yprez');
INSERT INTO geo.GeoPietro VALUES (51, 17, 'Lutet');
INSERT INTO geo.GeoPietro VALUES (52, 17, 'Barton');
INSERT INTO geo.GeoPietro VALUES (53, 17, 'Priabon');
INSERT INTO geo.GeoPietro VALUES (54, 18, 'Rupel');
INSERT INTO geo.GeoPietro VALUES (55, 18, 'Szat');
INSERT INTO geo.GeoPietro VALUES (56, 19, 'Egger');
INSERT INTO geo.GeoPietro VALUES (57, 19, 'Egenuburg');
INSERT INTO geo.GeoPietro VALUES (58, 19, 'Otanang');
INSERT INTO geo.GeoPietro VALUES (59, 19, 'Karpat');
INSERT INTO geo.GeoPietro VALUES (60, 20, 'Baden');
INSERT INTO geo.GeoPietro VALUES (61, 20, 'Zankl');
INSERT INTO geo.GeoPietro VALUES (62, 20, 'Piacent');
INSERT INTO geo.GeoPietro VALUES (63, 21, 'Gelas');
INSERT INTO geo.GeoPietro VALUES (64, 21, 'Kalabr');
INSERT INTO geo.GeoPietro VALUES (65, 21, 'Chiban');
INSERT INTO geo.GeoPietro VALUES (66, 22, 'Grenland');
INSERT INTO geo.GeoPietro VALUES (67, 22, 'Northgrip');
INSERT INTO geo.GeoPietro VALUES (68, 22, 'Megalaj');


CREATE TABLE geo.GeoTabela AS (SELECT * FROM geo.GeoPietro NATURAL JOIN geo.GeoEpoka NATURAL 
JOIN geo.GeoOkres NATURAL JOIN geo.GeoEra NATURAL JOIN geo.GeoEon );

SELECT * FROM geo.GeoTabela;


CREATE TABLE Milion(
	liczba INT,
	cyfra INT,
	bit INT);
	
	CREATE TABLE Dziesiec(
		cyfra INT,
		bit INT);
	
INSERT INTO Dziesiec VALUES (0, 00000000);
INSERT INTO Dziesiec VALUES (1, 00000001);
INSERT INTO Dziesiec VALUES (2, 00000010);
INSERT INTO Dziesiec VALUES (3, 00000011);
INSERT INTO Dziesiec VALUES (4, 00000100);
INSERT INTO Dziesiec VALUES (5, 00000101);
INSERT INTO Dziesiec VALUES (6, 00000110);
INSERT INTO Dziesiec VALUES (7, 00000111);
INSERT INTO Dziesiec VALUES (8, 00001000);
INSERT INTO Dziesiec VALUES (9, 00001001);

	
	INSERT INTO Milion SELECT a1.cyfra +10* a2.cyfra +100*a3.cyfra + 1000*a4.cyfra 
+ 10000*a5.cyfra + 10000*a6.cyfra AS liczba , a1.cyfra AS cyfra, a1.bit AS bit 
FROM Dziesiec a1, Dziesiec a2, Dziesiec a3, Dziesiec a4, Dziesiec a5, Dziesiec 
a6 

SELECT * FROM Milion;

#Zapytanie 1 
SELECT COUNT(*) FROM Milion INNER JOIN geo.GeoTabela ON 
(MOD(Milion.liczba,68)=(geo.GeoTabela.id_pietro));

#Zapytanie 2 (2 ZL)

SELECT COUNT(*) FROM Milion INNER JOIN geo.GeoPietro ON 
(MOD(Milion.liczba,68)=geo.GeoPietro.id_pietro) NATURAL JOIN geo.GeoEpoka NATURAL JOIN 
geo.GeoOkres NATURAL JOIN geo.GeoEra NATURAL JOIN geo.GeoEon;


#Zapytanie 3 (3 ZG)

SELECT COUNT(*) FROM Milion WHERE MOD(Milion.liczba,68)= 
(SELECT id_pietro FROM geo.GeoTabela WHERE MOD(Milion.liczba,68)=(id_pietro));

#Zapytanie 4 (4 ZG)


SELECT COUNT(*) FROM Milion WHERE mod(Milion.liczba,68) IN
(SELECT geo.GeoPietro.id_pietro FROM geo.GeoPietro NATURAL JOIN geo.GeoEpoka 
NATURAL JOIN geo.GeoOkres NATURAL JOIN geo.GeoEra NATURAL JOIN geo.GeoEon);


CREATE INDEX IndexEra ON geo.GeoEra (id_eon);
CREATE INDEX IndexOkres ON geo.GeoOkres (id_era);
CREATE INDEX IndexEpoka ON geo.GeoEpoka (id_okres);
CREATE INDEX IndexPietro ON geo.GeoPietro (id_epoka);



