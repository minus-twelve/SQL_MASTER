INSERT INTO [база].[dbo].[таблица]
    (столбец1, столбец2, столблец3)
SELECT TOP 1000
    LEFT(REPLACE(CAST(NEWID() AS VARCHAR(36)), '-', ''), 20),
    'значение2 для столбца2',
    'значение3 для столбца3'
FROM 
    sys.all_objects a1 
    CROSS JOIN sys.all_objects a2;