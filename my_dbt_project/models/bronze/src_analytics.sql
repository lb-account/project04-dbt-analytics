WITH bronze_data AS (
    SELECT 
        fullVisitorId,
        h.eCommerceAction.action_type,
        p.productSKU
    FROM 
       /* `bigquery-public-data.google_analytics_sample.ga_sessions_*`,*/
        {{source ('google_analytics_sample','ga_sessions')}},
        UNNEST(hits) AS h,
        UNNEST(h.product) AS p
    WHERE
        _TABLE_SUFFIX BETWEEN '20170729' AND '20170801'
    
    AND
        h.eCommerceAction.action_type IN ('1', '2', '5', '6')  -- Filter out irrelevant actions

)

SELECT * FROM bronze_data 
LIMIT 3000
