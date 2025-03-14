WITH gold_data AS (
    SELECT 
        category,
        SUM(transactions) AS transactions,
        SUM(totalTransactionRevenue)/1000000 AS total_revenue
    FROM 
        {{ref ('products')}}
    GROUP BY
        category
)

SELECT * FROM gold_data
ORDER BY
    total_revenue DESC
LIMIT 10