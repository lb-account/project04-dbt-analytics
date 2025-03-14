WITH silver_data AS (
    SELECT 
        fullVisitorId,
        h.eCommerceAction.action_type,
        p.productSKU
    FROM 
        {{ref ('src_analytics')}},
        UNNEST(hits) AS h,
        UNNEST(h.product) AS p  
    WHERE
        h.eCommerceAction.action_type IN ('1', '2', '5', '6')  -- Filter out irrelevant actions

)

SELECT * FROM silver_data 
