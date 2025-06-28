SELECT 
    'Member' AS Таблица,
    mUserNo 
FROM (
    SELECT TOP 1 mUserNo 
    FROM [FNLAccount].[dbo].[Member] 
    ORDER BY mUserNo DESC
) AS t1
UNION ALL
SELECT 
    'TblUser' AS Таблица,
    mUserNo
FROM (
    SELECT TOP 1 mUserNo 
    FROM [FNLAccount].[dbo].[TblUser] 
    ORDER BY mUserNo DESC
) AS t2;