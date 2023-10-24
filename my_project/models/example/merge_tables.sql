-- models/merge_tables.sql

WITH Candidates Online AS (
    SELECT * FROM {{ ref('Candidates Online') }}
),
Candidates Event AS (
    SELECT * FROM {{ ref('Candidates Event') }}
)

SELECT * FROM Candidates Online
UNION ALL
SELECT * FROM Candidates Event
