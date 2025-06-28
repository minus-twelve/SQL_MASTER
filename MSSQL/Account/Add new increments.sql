INSERT INTO [FNLAccount].[dbo].[TblUser]
    (mUserId, mUserPasikTbluserik, mUserPswd)
SELECT TOP 1000
    LEFT(REPLACE(CAST(NEWID() AS VARCHAR(36)), '-', ''), 20),
    'default_password',
    'default_password'
FROM 
    sys.all_objects a1 
    CROSS JOIN sys.all_objects a2;