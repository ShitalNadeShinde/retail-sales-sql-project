
-- Create the report table if it doesn't exist
IF OBJECT_ID('monthly_sales_report', 'U') IS NULL
BEGIN
    CREATE TABLE monthly_sales_report (
        report_month DATE,
        total_revenue DECIMAL(10,2),
        total_quantity INT,
        avg_sale_value DECIMAL(10,2)
    );
END

-- Create the stored procedure
CREATE OR ALTER PROCEDURE generate_monthly_sales_report
AS
BEGIN
    DELETE FROM monthly_sales_report;

    INSERT INTO monthly_sales_report (report_month, total_revenue, total_quantity, avg_sale_value)
    SELECT
        DATEFROMPARTS(YEAR(sale_date), MONTH(sale_date), 1) AS report_month,
        SUM(revenue),
        SUM(quantity_sold),
        AVG(revenue)
    FROM sales
    GROUP BY DATEFROMPARTS(YEAR(sale_date), MONTH(sale_date), 1);
END;

EXEC generate_monthly_sales_report;

