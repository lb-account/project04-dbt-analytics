WITH silver_data AS (
    SELECT
        FORMAT_DATE('%d-%m-%Y', DATE(PARSE_DATE('%Y%m%d', CAST(date AS STRING)))) AS formatted_date,
        SUM(totals.transactions) AS transactions
    FROM 
        {{ref ('src_analytics')}},
        UNNEST(hits) AS h,
        UNNEST(h.product) AS p  
    WHERE
        p.v2ProductCategory = "Home/Apparel/Men's/Men's-T-Shirts/"
    GROUP BY
        formatted_date 
    ORDER BY
        formatted_date
)

SELECT * FROM silver_data 