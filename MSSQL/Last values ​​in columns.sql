SELECT 
    'Результат отображения названия1' AS Таблица,
    Столбец1 
FROM (
    SELECT TOP 1 Столбец1
    FROM [].[].[] 
    ORDER BY Столбец1 DESC
) AS t1
UNION ALL
SELECT 
    'Результат отображения названия2' AS Таблица,
    Столбец2
FROM (
    SELECT TOP 1 Столбец2 
    FROM [].[].[] 
    ORDER BY Столбец2 DESC
) AS t2;