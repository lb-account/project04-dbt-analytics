WITH bronze_data AS (
    SELECT *
    FROM 
        {{source ('google_analytics_sample','ga_sessions')}}
    WHERE
        _TABLE_SUFFIX BETWEEN '20160801' AND '20170801'

)

SELECT * FROM bronze_data
