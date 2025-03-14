WITH silver_data AS (
    SELECT
        p.V2ProductCategory AS category,
        totals.transactions AS transactions,
        totals.totalTransactionRevenue AS totalTransactionRevenue
    FROM 
        {{ref ('src_analytics')}},
        UNNEST(hits) AS h,
        UNNEST(h.product) AS p
)

SELECT * FROM silver_data 