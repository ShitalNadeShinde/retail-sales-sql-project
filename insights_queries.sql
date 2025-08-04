 
--Total Revenue by Region
SELECT s.region, SUM(sa.revenue) AS total_revenue
FROM sales sa
JOIN stores s ON sa.store_id = s.store_id
GROUP BY s.region
ORDER BY total_revenue DESC;

--Top 5 Products by Revenue
SELECT p.product_name, SUM(sa.revenue) AS total_revenue
FROM sales sa
JOIN products p ON sa.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Monthly Sales Trend
SELECT DATEFROMPARTS(YEAR(sale_date), MONTH(sale_date), 1) AS month, SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY DATEFROMPARTS(YEAR(sale_date), MONTH(sale_date), 1)
ORDER BY month;
