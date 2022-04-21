--Krzysztof WoŸniak
--1.
CREATE DATABASE firma;
--2.
CREATE SCHEMA ksiegowosc;

--4.
CREATE TABLE ksiegowosc.pracownicy (
	id_pracownika INT PRIMARY KEY NOT NULL,
	imie NVARCHAR(32) NOT NULL,
	nazwisko NVARCHAR(32) NOT NULL,
	adres NVARCHAR(128) NOT NULL,
	telefon INT CHECK	 (telefon >= 100000000 AND telefon < 1000000000)
);
--COMMENT ON TABLE  ksiegowosc.pracownicy IS 'Dane personalne pracownikow';
CREATE TABLE ksiegowosc.godziny (
	id_godziny INT PRIMARY KEY NOT NULL,
	data_ DATE NOT NULL,
	liczba_godzin INT NOT NULL,
	id_pracownika INT NOT NULL
);
--COMMENT ON TABLE  ksiegowosc.godziny IS 'Wymiar pracy wykonywanej przez pracownikow';
CREATE TABLE ksiegowosc.pensja (
	id_pensji INT PRIMARY KEY NOT NULL,
	stanowisko NVARCHAR(32),
	kwota FLOAT NOT NULL,
	
);
--COMMENT ON TABLE  ksiegowosc.pensja IS 'Stanowiska i pensje otrzymywane przez poszczegolnych pracowników';
CREATE TABLE ksiegowosc.premia (
	id_premii INT PRIMARY KEY NOT NULL,
	rodzaj NVARCHAR(128),
	kwota FLOAT NOT NULL
);
--COMMENT ON TABLE  ksiegowosc.premie IS 'Premie i bonusy które moga zostac przyznane zatrudnionym w naszej firmie';
CREATE TABLE ksiegowosc.wynagrodzenie (
	id_wynagrodzenia INT PRIMARY KEY NOT NULL,
	data_ DATE NOT NULL,
	id_pracownika INT NOT NULL,
	id_godziny INT NOT NULL,
	id_pensji INT NOT NULL,
	id_premii INT
);
--COMMENT ON TABLE  ksiegowosc.pracownicy IS 'Dane personalne pracownikow';
ALTER TABLE ksiegowosc.godziny ADD CONSTRAINT klucz_obcy FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
ALTER TABLE ksiegowosc.wynagrodzenie ADD CONSTRAINT klucz_obcy_2 FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
ALTER TABLE ksiegowosc.wynagrodzenie ADD CONSTRAINT klucz_obcy_3 FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny);
ALTER TABLE ksiegowosc.wynagrodzenie ADD CONSTRAINT klucz_obcy_4 FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji);
ALTER TABLE ksiegowosc.wynagrodzenie ADD CONSTRAINT klucz_obcy_5 FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii);
--5.
INSERT INTO ksiegowosc.pracownicy VALUES (1, 'Iga', 'Œwi¹tek', 'Warszawa ul. Pu³awska 45', 662311808);
INSERT INTO ksiegowosc.pracownicy VALUES (2, 'Karolina', 'WoŸniak', 'Kraków ul. Nowos¹decka 51', 658236662);
INSERT INTO ksiegowosc.pracownicy VALUES (3, 'Wojciech', 'Stawowy', 'Kraków ul. Igo³omska 17', 692236062);
INSERT INTO ksiegowosc.pracownicy VALUES (4, 'Rafa³', 'Wolski', 'Kraków ul. Kraszewskiego 11', 994236662);
INSERT INTO ksiegowosc.pracownicy VALUES (5, 'Robert', 'Podoliñski', 'Kraków ul. Jab³onowskich 5', 648239762);
INSERT INTO ksiegowosc.pracownicy VALUES (6, 'Barbara', 'Kurak', 'Kielce ul. Morawicka 34', 999230062);
INSERT INTO ksiegowosc.pracownicy VALUES (7, 'Miros³aw', 'Czowilski', 'Kraków ul. Wielicka 99', 877200772);
INSERT INTO ksiegowosc.pracownicy VALUES (8, 'Joanna', 'Tokarska', 'Proszowice ul. Koœcielna 12', 455200111);
INSERT INTO ksiegowosc.pracownicy VALUES (9, 'Stefan', 'Majewski', 'Kraków ul. Krowoderskich Zuchów 12/61', 303122984);
INSERT INTO ksiegowosc.pracownicy VALUES (10, 'Damian', 'Nowakowski', 'Kraków ul. Opolska 19', 648909111);


SELECT * FROM ksiegowosc.pracownicy

INSERT INTO ksiegowosc.godziny VALUES (1, '2022-01-08', 160, 2);
INSERT INTO ksiegowosc.godziny VALUES (2, '2022-01-15', 160, 1);
INSERT INTO ksiegowosc.godziny VALUES (3, '2022-01-22', 190, 3);
INSERT INTO ksiegowosc.godziny VALUES (4, '2022-01-29', 180, 4);
INSERT INTO ksiegowosc.godziny VALUES (5, '2022-02-14', 165, 5);
INSERT INTO ksiegowosc.godziny VALUES (6, '2022-02-21', 172, 6);
INSERT INTO ksiegowosc.godziny VALUES (7, '2022-03-01', 184, 8);
INSERT INTO ksiegowosc.godziny VALUES (8, '2022-03-08', 160, 7);
INSERT INTO ksiegowosc.godziny VALUES (9, '2022-03-22', 170, 9);
INSERT INTO ksiegowosc.godziny VALUES (10, '2022-04-01', 177, 10);

SELECT * FROM ksiegowosc.godziny

INSERT INTO ksiegowosc.premia VALUES (1, 'Premia za aktywnoœæ', 100.00);
INSERT INTO ksiegowosc.premia VALUES (2, 'Premia za czas pracy', 1000.50);
INSERT INTO ksiegowosc.premia VALUES (3, 'Premia za punktualnoœæ ', 40.60);
INSERT INTO ksiegowosc.premia VALUES (4, 'Premia za wyniki', 130.00);
INSERT INTO ksiegowosc.premia VALUES (5, 'trzynastka', 4000.00);
INSERT INTO ksiegowosc.premia VALUES (6, 'czternastka', 4000.00);
INSERT INTO ksiegowosc.premia VALUES (7, 'Premia za promowanie firmy', 200.99);
INSERT INTO ksiegowosc.premia VALUES (8, 'Premia za akcjê charytatywn¹', 305.49);
INSERT INTO ksiegowosc.premia VALUES (9, 'Premia za mobilnoœæ', 103.28);
INSERT INTO ksiegowosc.premia VALUES (10, 'Premia za realizacjê celów', 1000.00);


SELECT * FROM ksiegowosc.premia

INSERT INTO ksiegowosc.pensja VALUES (1, 'Kierownik sprzeda¿y', 1600.49);
INSERT INTO ksiegowosc.pensja VALUES (2, 'Inspektor', 7500.99);
INSERT INTO ksiegowosc.pensja VALUES (3, 'Menad¿er zespo³u', 600.49);
INSERT INTO ksiegowosc.pensja VALUES (4, 'Konstruktor mechanik', 2900.49);
INSERT INTO ksiegowosc.pensja VALUES (5, 'Elektryk', 4500.00);
INSERT INTO ksiegowosc.pensja VALUES (6, 'Elektronik', 5600.49);
INSERT INTO ksiegowosc.pensja VALUES (7, 'Konstruktor mechanik', 2000.49);
INSERT INTO ksiegowosc.pensja VALUES (8, 'Inspektor', 1900.99);
INSERT INTO ksiegowosc.pensja VALUES (9, 'Elektromechanik', 7000.49);
INSERT INTO ksiegowosc.pensja VALUES (10, 'Sta¿ysta', 800.49 );

SELECT * FROM ksiegowosc.pensja

INSERT INTO ksiegowosc.wynagrodzenie VALUES (1, '2022-01-08', 1, 2,1,1);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (2, '2022-01-15', 2, 1,2,2);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (3, '2022-01-22', 3, 3,3,4);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (4, '2022-01-29', 4, 4,4,4);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (5, '2022-02-14', 5, 5,5,NULL);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (6, '2022-02-21', 6, 6,6,NULL);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (7, '2022-03-01', 7, 8,7,5);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (8, '2022-03-08', 8, 7,8,8);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (9, '2022-03-22', 9, 9,9,9);
INSERT INTO ksiegowosc.wynagrodzenie VALUES (10, '2022-04-01', 10, 10,10,10);

SELECT * FROM ksiegowosc.wynagrodzenie
--6
--a
SELECT id_pracownika, nazwisko 
FROM ksiegowosc.pracownicy;
--b
SELECT T.id_pracownika, S.kwota
FROM ksiegowosc.wynagrodzenie AS T 
INNER JOIN ksiegowosc.pensja AS S
ON S.id_pensji=T.id_pensji
WHERE S.kwota > 1000

--c
SELECT T.id_pracownika, S.kwota
FROM ksiegowosc.wynagrodzenie AS T 
INNER JOIN ksiegowosc.pensja AS S
ON S.id_pensji=T.id_pensji
WHERE T.id_premii IS NULL AND S.kwota > 2000

--d
SELECT imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE imie LIKE'J%'

--e
SELECT imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE imie LIKE'%a' AND nazwisko LIKE '%n%'

SELECT K.imie, nazwisko, liczba_godzin-160 AS liczba_nadgodzin
FROM ksiegowosc.pracownicy AS K 
INNER JOIN ksiegowosc.godziny AS S ON S.id_pracownika=K.id_pracownika 
WHERE liczba_godzin>160;

--g
SELECT T.imie, nazwisko
FROM ksiegowosc.pracownicy AS T
INNER JOIN ksiegowosc.wynagrodzenie AS R ON R.id_pracownika=T.id_pracownika
INNER JOIN ksiegowosc.pensja AS P ON P.id_pensji= R.id_pensji
WHERE P.kwota BETWEEN 1500 AND 3000

--h
SELECT T.imie, nazwisko 
FROM ksiegowosc.pracownicy AS T
INNER JOIN ksiegowosc.wynagrodzenie AS S ON S.id_pracownika = T.id_pracownika 
INNER JOIN ksiegowosc.godziny G ON G.id_pracownika = S.id_pracownika
WHERE G.liczba_godzin > 160  AND S.id_premii IS NULL
--i
SELECT T.imie, nazwisko, G.kwota  
FROM ksiegowosc.pracownicy AS T
INNER JOIN ksiegowosc.wynagrodzenie AS S ON S.id_pracownika = T.id_pracownika 
INNER JOIN ksiegowosc.pensja G ON G.id_pensji = S.id_pensji
ORDER BY G.kwota

--j
SELECT T.imie, nazwisko, G.kwota ,K.kwota
FROM ksiegowosc.pracownicy AS T
INNER JOIN ksiegowosc.wynagrodzenie AS S ON S.id_pracownika = T.id_pracownika 
INNER JOIN ksiegowosc.pensja G ON G.id_pensji = S.id_pensji
INNER JOIN ksiegowosc.premia K ON K.id_premii = S.id_premii
ORDER BY G.kwota, K.kwota DESC

--k
SELECT stanowisko, COUNT(*)
FROM ksiegowosc.pensja 
GROUP BY stanowisko;

--l
SELECT AVG(kwota) AS Srednia
FROM ksiegowosc.pensja
WHERE stanowisko LIKE 'Inspektor'

SELECT MIN(kwota) AS Minimum
FROM ksiegowosc.pensja
WHERE stanowisko LIKE 'Inspektor'

SELECT MAX(kwota) AS Maksimum
FROM ksiegowosc.pensja
WHERE stanowisko LIKE 'Inspektor'

--m
SELECT SUM(kwota) AS Suma_pensji
FROM ksiegowosc.pensja

--n
SELECT stanowisko, SUM(kwota) AS Suma_zarobkow
FROM ksiegowosc.pensja 
GROUP BY stanowisko;

--o
SELECT K.stanowisko, COUNT(S.id_premii) AS Liczba_przyznanych_premii
FROM ksiegowosc.pensja AS K
INNER JOIN ksiegowosc.wynagrodzenie AS S ON S.id_pensji=K.id_pensji
GROUP BY stanowisko

--p

ALTER TABLE ksiegowosc.wynagrodzenie NOCHECK CONSTRAINT all
ALTER TABLE ksiegowosc.godziny NOCHECK CONSTRAINT all
DELETE G
FROM ksiegowosc.pracownicy  G
INNER JOIN ksiegowosc.wynagrodzenie  T ON T.id_pracownika=G.id_pracownika
INNER JOIN ksiegowosc.pensja  S ON S.id_pensji=T.id_pensji
WHERE S.kwota <1200
ALTER TABLE ksiegowosc.godziny CHECK CONSTRAINT all
ALTER TABLE ksiegowosc.wynagrodzenie CHECK CONSTRAINT all

SELECT * FROM ksiegowosc.pracownicy
