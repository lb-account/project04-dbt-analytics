-- Gold Layer: Aggregated sessions data for reporting

WITH aggregated_sessions AS (
    SELECT
        user_id,
        session_date,
        COUNT(DISTINCT session_id) AS total_sessions,
        SUM(pageviews) AS total_pageviews,
        COUNT(DISTINCT CASE WHEN cleaned_traffic_source = 'Direct' THEN session_id END) AS direct_sessions,
        COUNT(DISTINCT CASE WHEN cleaned_traffic_source = 'Organic Search' THEN session_id END) AS organic_sessions
    FROM {{ ref('cleaned_ga_sessions') }}
    GROUP BY user_id, session_date
)

SELECT * FROM aggregated_sessions
