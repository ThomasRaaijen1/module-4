--stap 1 shunting rule

SELECT p.pid FROM Person p 
 WHERE EXISTS( 
	SELECT * 
	FROM Acts a, Movies m 
	WHERE a.pid = p.pid
	AND m.mid = a.mid 
	AND m.name = 'Back to the Future'); 
	
--stap 2 shunting rule

SELECT DISTINCT p.pid 
 FROM Person p, Acts a, Movies m 
 WHERE a.pid = p.pid
 AND m.mid = a.mid 
 AND m.name = 'Back to the Future';
 
