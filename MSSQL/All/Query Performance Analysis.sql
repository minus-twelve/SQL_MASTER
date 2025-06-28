SELECT 
    deqs.last_execution_time AS [Время исполнения],
    dest.text AS [SQL код],
    deqp.query_plan AS [План выполнения]
FROM sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
CROSS APPLY sys.dm_exec_query_plan(deqs.plan_handle) AS deqp
WHERE dest.objectid IS NOT NULL
ORDER BY deqs.last_execution_time DESC;