

CREATE TABLE wyposazenie_sal (
	id_sali INT PRIMARY KEY NOT NULL,
	numer_sali INT NOT NULL,
	liczba_tablic INT NOT NULL,
	liczba_kred INT NOT NULL,
	liczba_gabek INT NOT NULL,
	liczba_miejsc INT NOT NULL,
	liczba_komputerow INT NOT NULL,
	posiada_rzutnik BOOLEAN NOT NULL,
	posiada_tablice_multimedialna BOOLEAN NOT NULL
	
);

INSERT INTO wyposazenie_sal VALUES (1, 5, 3, 4, 2, 32, 18, TRUE, FALSE);
INSERT INTO wyposazenie_sal VALUES (2, 6, 3, 5, 2, 32, 24, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (3, 7, 1, 2, 1, 20, 0, FALSE, FALSE);
INSERT INTO wyposazenie_sal VALUES (4, 8, 5, 10, 5, 42, 0, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (5, 9, 3, 4, 2, 30, 2, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (6, 10, 1, 4, 2, 16, 0, TRUE, FALSE);
INSERT INTO wyposazenie_sal VALUES (7, 11, 5, 6, 3, 40, 0, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (8, 12, 7, 16, 6, 44, 0, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (9, 13, 3, 4, 2, 34, 1, TRUE, FALSE);
INSERT INTO wyposazenie_sal VALUES (10, 14, 3, 4, 2, 36, 18, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (11, 21, 1, 4, 2, 16, 1, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (12, 22, 3, 4, 2, 32, 1, TRUE, TRUE);
INSERT INTO wyposazenie_sal VALUES (13, 23, 2, 5, 3, 16, 1, TRUE, TRUE);

SELECT * FROM wyposazenie_sal

