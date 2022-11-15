

CREATE TABLE lista_uczniow (
	id_ucznia INT PRIMARY KEY NOT NULL,
	imie VARCHAR(32) NOT NULL,
	nazwisko VARCHAR(32) NOT NULL,
	data_urodzenia DATE NOT NULL,
	adres VARCHAR(128) NOT NULL,
	telefon_do_rodzica INT CHECK	 (telefon_do_rodzica >= 100000000 AND telefon_do_rodzica < 1000000000)
);

INSERT INTO lista_uczniow VALUES (1, 'Iga', 'Tomaszewska', '2008-01-08', 'Krakow ul. Nowohucka 45', 662311808);
INSERT INTO lista_uczniow VALUES (2, 'Damian', 'Nowak', '2008-11-22', 'Krakow ul. Nowosądecka 52', 662909808);
INSERT INTO lista_uczniow VALUES (3, 'Karolina', 'Kowalczyk', '2006-05-19', 'Krakow ul. Dobrego Pasterza 11', 602344808);
INSERT INTO lista_uczniow VALUES (4, 'Joanna', 'Kruk', '2007-12-03', 'Bibice ul. Krakowska 6', 692388801);
INSERT INTO lista_uczniow VALUES (5, 'Tomasz', 'Rakoczy', '2008-08-08', 'Krakow ul. Kryniczna 12', 677821808);
INSERT INTO lista_uczniow VALUES (6, 'Feliks', 'Kowalski', '2007-10-14', 'Krakow ul. Lea 145', 669091808);
INSERT INTO lista_uczniow VALUES (7, 'Renata', 'Esmund', '2008-11-28', 'Krakow ul. Wielicka 124', 678011823);
INSERT INTO lista_uczniow VALUES (8, 'Filip', 'Zygmunt', '2012-04-11', 'Bolechowice ul. Przybylskiego 11', 696969696);
INSERT INTO lista_uczniow VALUES (9, 'Iga', 'Samborska', '2010-07-15', 'Krakow ul. Brodowicza 12', 662099308);
INSERT INTO lista_uczniow VALUES (10, 'Ewelina', 'Klich', '2010-01-06', 'Krakow ul. Czarnowiejska 14', 669261808);
INSERT INTO lista_uczniow VALUES (11, 'Franciszek', 'Dolas', '2009-01-08', 'Wieliczka ul. Krakowska 11', 692322855);
INSERT INTO lista_uczniow VALUES (12, 'Jan', 'Suwak', '2009-09-06', 'Krakow ul. Igolomska 12', 692344890);
INSERT INTO lista_uczniow VALUES (13, 'Sebastian', 'Kozak', '2011-11-28', 'Krakow ul. Miodowa 8', 662506608);
INSERT INTO lista_uczniow VALUES (14, 'Krzysztof', 'Stoch', '2009-08-24', 'Krakow al. Przyjazni 10', 692648213);
INSERT INTO lista_uczniow VALUES (15, 'Bartosz', 'Sowa', '2012-03-15', 'Pietrzejowice ul. Kościelna 3', 662991808);
INSERT INTO lista_uczniow VALUES (16, 'Jakub', 'Barszcz', '2012-07-28', 'Krakow ul. Krowoderskich Zuchow 9', 755311208);
INSERT INTO lista_uczniow VALUES (17, 'ALeksandra', 'Serek', '2011-06-17', 'Krakow ul. Moniuszki 3', 644301808);
INSERT INTO lista_uczniow VALUES (18, 'Katarzyna', 'Kruk', '2008-02-01', 'Zabierzow ul. Targowa 45', 692344802);
INSERT INTO lista_uczniow VALUES (19, 'Sylwester', 'Stal', '2007-12-21', 'Krakow ul. Lubomirskiego 18', 809311312);
INSERT INTO lista_uczniow VALUES (20, 'Mariusz', 'Pajda', '2011-06-19', 'Krakow ul. Teligi 22', 679311508);
INSERT INTO lista_uczniow VALUES (21, 'Dariusz', 'Nowak', '2010-08-12', 'Krakow ul. Kupa 3', 622511806);
INSERT INTO lista_uczniow VALUES (22, 'Jan', 'Marek', '2009-02-26', 'Krakow ul.  45', 662311808);
INSERT INTO lista_uczniow VALUES (23, 'Krzysztof', 'Warzecha', '2013-11-11', 'Skawina ul. Nowa 6', 790315868);
INSERT INTO lista_uczniow VALUES (24, 'Michal', 'Malinowski', '2010-06-06', 'Krakow ul. Bulwarowa 2', 809121232);
INSERT INTO lista_uczniow VALUES (25, 'Wojciech', 'Tokarski', '2009-02-20', 'Krakow ul. Dobrego Pasterz 13', 978311293);
INSERT INTO lista_uczniow VALUES (26, 'Kacper', 'Jakubiec', '2009-01-23', 'Krakow ul. Opolska 11', 982312208);
INSERT INTO lista_uczniow VALUES (27, 'Klaudia', 'Wykrota', '2011-07-31', 'Krakow ul. Grochowska 22', 982311999);
INSERT INTO lista_uczniow VALUES (28, 'Anastazja', 'Domaszewska', '2012-01-08', 'Krakow ul. Tarnowska 9', 405711808);
INSERT INTO lista_uczniow VALUES (29, 'Mateusz', 'Pajor', '2010-04-22', 'Krakow ul. Zakopianska 6', 882391837);
INSERT INTO lista_uczniow VALUES (30, 'Marta', 'Piekarska', '2013-02-27', 'Wieliczka ul. Krakowska 9', 692311532);
INSERT INTO lista_uczniow VALUES (31, 'Dawid', 'Mazurek', '2012-05-03', 'Krakow ul. Krowoderska 2', 987315508);
INSERT INTO lista_uczniow VALUES (32, 'Jessica', 'Tomek', '2011-12-10', 'Krakow Aleja Roz 45', 662311808);
INSERT INTO lista_uczniow VALUES (33, 'Barbara', 'Aniela', '2007-10-15', 'Krakow ul. Dunajewskiego 10', 669998033);
INSERT INTO lista_uczniow VALUES (34, 'Piotr', 'Serafin', '2010-10-19', 'Krakow ul. Czarnowiejska 12', 808909777);
INSERT INTO lista_uczniow VALUES (35, 'Dariusz', 'Wrona', '2010-10-01', 'Krakow ul. Klasztorna 9', 662311808);
INSERT INTO lista_uczniow VALUES (36, 'Magdalena', 'Moskal', '2012-11-03', 'Krakow ul. Rajska 3', 688811808);
INSERT INTO lista_uczniow VALUES (37, 'Daria', 'Kaczor', '2011-12-11', 'Krakow ul. Krakowska 12', 663311808);
INSERT INTO lista_uczniow VALUES (38, 'Diana', 'Wolska', '2010-05-09', 'Krakow ul. Nowa 9', 662555833);
INSERT INTO lista_uczniow VALUES (39, 'Dominika', 'Nowak', '2012-01-08', 'Bolechowice ul. Lesista 5', 807655444);
INSERT INTO lista_uczniow VALUES (40, 'Franciszek', 'Dyzma', '2009-10-16', 'Krakow ul. Ciepielewskiego 14', 455432221);
INSERT INTO lista_uczniow VALUES (41, 'Maria', 'Gruszka', '2009-07-31', 'Krakow ul. Lema 22', 777888323);





