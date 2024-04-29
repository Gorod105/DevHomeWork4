SELECT 'YOUNGEST' AS TYPE,name, birthsday FROM worker
WHERE
    birthsday = (SELECT MIN(birthsday) FROM worker) UNION ALL

SELECT 'OLDEST' AS TYPE,name , birthsday FROM worker
WHERE
    birthsday = (SELECT MAX(birthsday) FROM worker);

