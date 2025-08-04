

CREATE OR ALTER VIEW daily_sales_summary AS
SELECT
    sale_date,
    s.store_name,
    SUM(quantity_sold) AS total_items_sold,
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS avg_sale_value
FROM sales as sa
JOIN stores s ON sa.store_id = s.store_id
GROUP BY sale_date, s.store_name;

SELECT * FROM daily_sales_summary WHERE sale_date = CAST(GETDATE() AS DATE);