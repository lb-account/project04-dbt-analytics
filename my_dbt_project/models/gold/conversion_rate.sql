WITH gold_data AS (
    SELECT 
        CASE WHEN action_type = '1' THEN 'Click through of product lists'
                 WHEN action_type = '2' THEN 'Product detail views'
                 WHEN action_type = '5' THEN 'Check out'
                 WHEN action_type = '6' THEN 'Completed purchase'
            END AS action,
            COUNT(fullVisitorID) AS users
    FROM 
        {{ref ('actions')}}
    GROUP BY
        action
)

SELECT * FROM gold_data 
ORDER BY 
        users DESC