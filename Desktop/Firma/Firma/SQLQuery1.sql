--Krzysztof WoŸniak
--1.
CREATE DATABASE firma;
--2.
CREATE SCHEMA rozliczenia;

--3.
CREATE TABLE rozliczenia.pracownicy (
	id_pracownika INT PRIMARY KEY NOT NULL,
	imie NVARCHAR(32) NOT NULL,
	nazwisko NVARCHAR(32) NOT NULL,
	adres NVARCHAR(128) NOT NULL,
	telefon INT CHECK	 (telefon >= 100000000 AND telefon < 1000000000)
);

CREATE TABLE rozliczenia.godziny (
	id_godziny INT PRIMARY KEY NOT NULL,
	data_ DATE NOT NULL,
	liczba_godzin INT NOT NULL,
	id_pracownika INT NOT NULL
);

CREATE TABLE rozliczenia.pensje (
	id_pensji INT PRIMARY KEY NOT NULL,
	stanowisko NVARCHAR(32),
	kwota FLOAT NOT NULL,
	id_premii INT
);

CREATE TABLE rozliczenia.premie (
	id_premii INT PRIMARY KEY NOT NULL,
	rodzaj NVARCHAR(128),
	kwota FLOAT NOT NULL
);
ALTER TABLE rozliczenia.godziny ADD CONSTRAINT klucz_obcy FOREIGN KEY (id_pracownika) REFERENCES rozliczenia.pracownicy(id_pracownika);
ALTER TABLE rozliczenia.pensje ADD CONSTRAINT klucz_obcy_2 FOREIGN KEY (id_premii) REFERENCES rozliczenia.premie(id_premii);
--4.
INSERT INTO rozliczenia.pracownicy VALUES (1, 'Iga', 'Œwi¹tek', 'Warszawa ul. Pu³awska 45', 662311808);
INSERT INTO rozliczenia.pracownicy VALUES (2, 'Karolina', 'WoŸniak', 'Kraków ul. Nowos¹decka 51', 658236662);
INSERT INTO rozliczenia.pracownicy VALUES (3, 'Wojciech', 'Stawowy', 'Kraków ul. Igo³omska 17', 692236062);
INSERT INTO rozliczenia.pracownicy VALUES (4, 'Rafa³', 'Wolski', 'Kraków ul. Kraszewskiego 11', 994236662);
INSERT INTO rozliczenia.pracownicy VALUES (5, 'Robert', 'Podoliñski', 'Kraków ul. Jab³onowskich 5', 648239762);
INSERT INTO rozliczenia.pracownicy VALUES (6, 'Barbara', 'Kurak', 'Kielce ul. Morawicka 34', 999230062);
INSERT INTO rozliczenia.pracownicy VALUES (7, 'Miros³aw', 'Czowilski', 'Kraków ul. Wielicka 99', 877200772);
INSERT INTO rozliczenia.pracownicy VALUES (8, 'Anna', 'Tokarska', 'Proszowice ul. Koœcielna 12', 455200111);
INSERT INTO rozliczenia.pracownicy VALUES (9, 'Stefan', 'Majewski', 'Kraków ul. Krowoderskich Zuchów 12/61', 303122984);
INSERT INTO rozliczenia.pracownicy VALUES (10, 'Damian', 'Lodziarski', 'Kraków ul. Opolska 19', 648909111);


SELECT * FROM rozliczenia.pracownicy

INSERT INTO rozliczenia.godziny VALUES (1, '2022-01-08', 12, 2);
INSERT INTO rozliczenia.godziny VALUES (2, '2022-01-15', 10, 1);
INSERT INTO rozliczenia.godziny VALUES (3, '2022-01-22', 9, 3);
INSERT INTO rozliczenia.godziny VALUES (4, '2022-01-29', 6, 4);
INSERT INTO rozliczenia.godziny VALUES (5, '2022-02-14', 4, 5);
INSERT INTO rozliczenia.godziny VALUES (6, '2022-02-21', 8, 6);
INSERT INTO rozliczenia.godziny VALUES (7, '2022-03-01', 12, 8);
INSERT INTO rozliczenia.godziny VALUES (8, '2022-03-08', 4, 7);
INSERT INTO rozliczenia.godziny VALUES (9, '2022-03-22', 10, 9);
INSERT INTO rozliczenia.godziny VALUES (10, '2022-04-01', 7, 10);

SELECT * FROM rozliczenia.godziny

INSERT INTO rozliczenia.premie VALUES (1, 'Premia za aktywnoœæ', 100.00);
INSERT INTO rozliczenia.premie VALUES (2, 'Premia za czas pracy', 1000.50);
INSERT INTO rozliczenia.premie VALUES (3, 'Premia za punktualnoœæ ', 40.60);
INSERT INTO rozliczenia.premie VALUES (4, 'Premia za wyniki', 130.00);
INSERT INTO rozliczenia.premie VALUES (5, 'trzynastka', 4000.00);
INSERT INTO rozliczenia.premie VALUES (6, 'czternastka', 4000.00);
INSERT INTO rozliczenia.premie VALUES (7, 'Premia za promowanie firmy', 200.99);
INSERT INTO rozliczenia.premie VALUES (8, 'Premia za akcjê charytatywn¹', 305.49);
INSERT INTO rozliczenia.premie VALUES (9, 'Premia za mobilnoœæ', 103.28);
INSERT INTO rozliczenia.premie VALUES (10, 'Premia za realizacjê celów', 1000.00);


SELECT * FROM rozliczenia.premie

INSERT INTO rozliczenia.pensje VALUES (1, 'Kierownik sprzeda¿y', 10000.49,3);
INSERT INTO rozliczenia.pensje VALUES (2, 'G³owny inspektor', 7500.99,1);
INSERT INTO rozliczenia.pensje VALUES (3, 'Menad¿er zespo³u', 6000.49,7);
INSERT INTO rozliczenia.pensje VALUES (4, 'Konstruktor mechanik', 4900.49,5);
INSERT INTO rozliczenia.pensje VALUES (5, 'Elektryk', 4500.00,6);
INSERT INTO rozliczenia.pensje VALUES (6, 'Elektronik', 5600.49,3);
INSERT INTO rozliczenia.pensje VALUES (7, 'Konstruktor mechanik', 6000.49,NULL);
INSERT INTO rozliczenia.pensje VALUES (8, 'Inspektor', 3900.99,2);
INSERT INTO rozliczenia.pensje VALUES (9, 'Elektromechanik', 7000.49,3);
INSERT INTO rozliczenia.pensje VALUES (10, 'Sta¿ysta', 2800.49, NULL );

SELECT * FROM rozliczenia.pensje
--5.
SELECT	nazwisko, adres FROM rozliczenia.pracownicy;
--6.
SET DATEFIRST 7 --pierwszy dzieñ tygodnia to niedziela
SELECT DATEPART(dw, data_) FROM rozliczenia.godziny
SELECT DATEPART(m, data_) FROM rozliczenia.godziny

--7.
EXEC sp_rename 'rozliczenia.pensje.kwota', 'kwota_brutto', 'COLUMN';

ALTER TABLE rozliczenia.pensje ADD kwota_netto AS kwota_brutto-kwota_brutto*0.23;

