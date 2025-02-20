WITH gold_data AS (
    SELECT 
        action,
        users,
        CASE 
            WHEN action = 'Click through of product lists' THEN NULL
            WHEN action = 'Product detail views' THEN 
                users / (SELECT users FROM `your_dataset.silver_data` WHERE action = 'Click through of product lists')
            WHEN action = 'Check out' THEN 
                users / (SELECT users FROM `your_dataset.silver_data` WHERE action = 'Product detail views')
            WHEN action = 'Completed purchase' THEN 
                users / (SELECT users FROM `your_dataset.silver_data` WHERE action = 'Check out')
        END AS conversion_rate
    FROM 
        `your_dataset.silver_data`
)

SELECT 
    action,
    users,
    ROUND(conversion_rate, 4) AS conversion_rate
FROM 
    gold_data
ORDER BY 
    FIELD(action, 'Click through of product lists', 'Product detail views', 'Check out', 'Completed purchase')