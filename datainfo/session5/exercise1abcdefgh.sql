exercise a)

DROP TABLE boek;
DROP TABLE exemplaar;


CREATE TABLE  boek {
	isbn  serial PRIMARY KEY, 
	titel VARCHAR, 
	auteur VARCHAR
};

CREATE TABLE exemplaar {
	isbn INT,
	volgnummer serial PRIMARY KEY, 
	gewicht INT, 
	kast INT, 
	FOREIGN KEY ("isbn") REFERENCES boek ("isbn")
	ON UPDATE CASCADE
	ON DELETE CASCADE
};

exercise b)

INSERT INTO boek
	VALUES(2, 'FOXX', 'Dickie')
	
INSERT INTO boek
	VALUES(2, 'The kitty', 'Max')
	
exercise c)

INSERT INTO exemplaar
	VALUES(1, 100, 100, 3)

INSERT INTO exemplaar
	VALUES(2, 101, 101, 4)
	
exercise d)

UPDATE boek SET isbn = 3 WHERE isbn = 2;

exercise e)

DELETE FROM boek WHERE isb = 2;

exercise f)

CREATE trigger deleteBoek {
	before delete on boek
	for each row
	BEGIN 
		DELETE FROM exemplaar WHERE OLD.isbn = exemplaar.isbn
	END
	
exercise g)

DROP TABLE 	bestelling;

CREATE TABLE bestelling {
	isbn serial PRIMARY KEY, 
	aantal INT, 
	FOREIGN KEY ("isbn") REFERENCES boek("isbn")
};

CREATE trigger newBoek {
	after INSERT on boek
	for each statement
	WHEN (SELECT * FROM OLD WHERE auteur = NEW.auteur)
	BEGIN
		INSERT INTO bestelling VALUES(NEW.isbn, 5)
	END

exercise h)

CREATE TABLE exemplaar {
	isbn INT,
	volgnummer serial PRIMARY KEY, 
	gewicht INT, 
	kast INT, 
	FOREIGN KEY ("isbn") REFERENCES boek ("isbn")
	ON UPDATE CASCADE
	ON DELETE CASCADE
	CHECK (gewicht < 2)
};



