-- Bronze Layer: Loading raw sessions data from Google Analytics

WITH raw_ga_sessions AS (
    SELECT
        *
    FROM
        {{ source('google_analytics_sample', 'ga_sessions') }}
)

SELECT * FROM raw_ga_sessions
