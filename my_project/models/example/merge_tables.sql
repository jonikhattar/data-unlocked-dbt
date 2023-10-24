
-- This is your dbt SQL file (merge_tables.sql)

-- Create a new view by merging "Candidates Event" and "Candidates Online" tables
WITH merged_candidates AS (
    SELECT * FROM JONI_SNOWFLAKE.DBT_DEMO_DPC."Candidates Online" -- Reference to "Candidates Online" table
    UNION ALL
    SELECT * FROM JONI_SNOWFLAKE.DBT_DEMO_DPC."Candidates Event" -- Reference to "Candidates Event" table
)

-- Create a view in your Snowflake database
CREATE OR REPLACE VIEW JONI_SNOWFLAKE.DBT_DEMO_DPC.PUBLIC.merged_candidates AS
SELECT * FROM merged_candidates;


