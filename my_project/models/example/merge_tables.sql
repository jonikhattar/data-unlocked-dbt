-- This is your dbt SQL file (merge_tables.sql)

-- Create a new table by merging "Candidates Event" and "Candidates Online" tables
CREATE OR REPLACE TABLE JONI_SNOWFLAKE.DBT_DEMO_DPC.merged_candidates AS
WITH merged_candidates AS (
    SELECT * FROM JONI_SNOWFLAKE.DBT_DEMO_DPC."Candidates Online" -- Reference to "Candidates Online" table
    UNION ALL
    SELECT * FROM JONI_SNOWFLAKE.DBT_DEMO_DPC."Candidates Event" -- Reference to "Candidates Event" table
)
SELECT * FROM merged_candidates;


