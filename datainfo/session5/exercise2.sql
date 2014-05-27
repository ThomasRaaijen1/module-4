exercise a)

--read1(x)
--read1(y)
--read2(x)
--write1(x)
--write1(y)
--write2(x)

--read1(x):
SELECT titel FROM Boek WHERE isbn = '0136067018';
--read1(y):  
SELECT titel FROM Boek WHERE isbn = '0321228383';
--read2(x): 
SELECT titel FROM Boek WHERE isbn = ' 0136067018';
--write1(x): 
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018';
--write1(y): 
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383';
--write2(x): 
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';

exercise b)

BEGIN T1, T2;

--read1(x):
SELECT titel FROM Boek WHERE isbn = '0136067018';
--read1(y):  
SELECT titel FROM Boek WHERE isbn = '0321228383';
--write1(x): 
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0136067018';
--read2(x): 
SELECT titel FROM Boek WHERE isbn = ' 0136067018';
ROLLBACK T1;
--write1(y): 
UPDATE Boek SET titel = titel || ' deel 1' WHERE isbn = '0321228383';
--write2(x): 
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';
COMMIT T2;

END T1, T2;

exercise c)

BEGIN READ COMMITED;
--read2(x): 
SELECT titel FROM Boek WHERE isbn = ' 0136067018';
--write2(x): 
UPDATE Boek SET titel = titel || ' deel 2' WHERE isbn = ' 0136067018';
COMMIT;