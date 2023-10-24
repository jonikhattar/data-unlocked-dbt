-- models/merge_tables.sql

WITH table_1_data AS (
    SELECT * FROM {{ ref('my_schema.table_1') }}
),
table_2_data AS (
    SELECT * FROM {{ ref('my_schema.table_2') }}
)

SELECT * FROM table_1_data
UNION ALL
SELECT * FROM table_2_data
