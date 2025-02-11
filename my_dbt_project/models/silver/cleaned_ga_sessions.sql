-- Silver Layer: Cleaned sessions data

WITH cleaned_ga_sessions AS (
    SELECT
        session_id,
        user_id,
        DATE(timestamp) AS session_date,
        pageviews,
        traffic_source,
        CASE
            WHEN traffic_source = 'direct' THEN 'Direct'
            WHEN traffic_source = 'organic' THEN 'Organic Search'
            ELSE 'Other'
        END AS cleaned_traffic_source
    FROM {{ ref('src_analytics') }}
    WHERE user_id IS NOT NULL
)

SELECT * FROM cleaned_ga_sessions
