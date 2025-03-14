WITH gold_data AS (
    SELECT 
        formatted_date,
        AVG(transactions)
        OVER (
            ORDER BY formatted_date
            ROWS BETWEEN 3 PRECEDING AND 3 FOLLOWING
        ) AS avg_transactions
    FROM 
        {{ref ('men_tshirts')}}
)

SELECT * FROM gold_data