--stap a

INSERT INTO F VALUES("ABC", "EF", false, "Aan de hand van ABC kan aan de hand van E-> D ABCDEF bepaal worden. Dit is dus een key");
INSERT INTO F VALUES("E", "D", true, "Aan de hand van E kan D -> A bepaaldd worden maar niet BC.");
INSERT INTO F VALUES("D", "A", true, "Aan de hand van D kan alleen A bepaald worden.");

--stap b

CREATE TABLE R1 (E INT, D INT);
CREATE TABLE R2 (A INT, B INT, C INT,E INT, F INT);
CREATE TABLE F1 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR (100));
INSERT INTO F1 VALUES ("E", "D", false, "Met E kan je alle kolommen verkrijgen");
CREATE TABLE F2 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR (100));
INSERT INTO F2 VALUES ("ABC", "EF", false, "zie vorige tabel"),
("E", "A", true, "Hieruit kunnen B en C niet bepaald worden.");

--stap c

CREATE TABLE R21 (E INT, A INT);
CREATE TABLE R22 (B INT, C INT, E INT, F INT);
CREATE TABLE F21 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR (100));
INSERT INTO F21 VALUES ("E", "A", false, "Met E kan je A verkrijgen");
CREATE TABLE F22 (x VARCHAR(10), y VARCHAR(10), violation BOOLEAN, motivation VARCHAR (100));
INSERT INTO F22 VALUES ("EBC", "EF", false, "Met BC kan je alle andere kolommen bereiken");