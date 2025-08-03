SELECT 
    t.table_name,
    t.table_schema,
    pg_size_pretty(pg_total_relation_size('"' || t.table_schema || '"."' || t.table_name || '"')) as size,
    pg_relation_filepath('"' || t.table_schema || '"."' || t.table_name || '"') as file_path,
    obj_description(('"' || t.table_schema || '"."' || t.table_name || '"')::regclass) as description,
    c.column_count
FROM 
    information_schema.tables t
JOIN (
    SELECT 
        table_schema, 
        table_name, 
        count(*) as column_count 
    FROM 
        information_schema.columns 
    GROUP BY 
        table_schema, table_name
) c ON t.table_schema = c.table_schema AND t.table_name = c.table_name
WHERE 
    t.table_schema NOT IN ('pg_catalog', 'information_schema')
    AND t.table_type = 'BASE TABLE'
ORDER BY 
    t.table_schema, t.table_name;