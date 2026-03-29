-- 1. Top 10 Customers by Revenue
-- Concept: Aggregation & Sorting
SELECT 
    customer_name, 
    SUM(sales) AS total_revenue
FROM superstore_sample_raw
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 2. Category with Highest Profit Margin
-- Concept: Calculated Fields & Math
SELECT 
    category, 
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM superstore_sample_raw
GROUP BY category
ORDER BY profit_margin_pct DESC;

-- 3. Month with Highest Revenue
-- Concept: Date Functions
SELECT 
    MONTHNAME(order_date) AS order_month, 
    SUM(sales) AS total_revenue
FROM superstore_sample_raw
GROUP BY order_month
ORDER BY total_revenue DESC;

-- 4. Region with Declining Sales (Year-over-Year)
-- Concept: Subqueries & Joins (Self-Join to compare years)
SELECT 
    curr.region, 
    curr.year_sales AS current_year, 
    prev.year_sales AS previous_year,
    ROUND(((curr.year_sales - prev.year_sales) / prev.year_sales) * 100, 2) AS growth_rate
FROM 
    (SELECT region, YEAR(order_date) as yr, SUM(sales) as year_sales FROM superstore_sample_raw GROUP BY region, yr) curr
JOIN 
    (SELECT region, YEAR(order_date) as yr, SUM(sales) as year_sales FROM superstore_sample_raw GROUP BY region, yr) prev
ON curr.region = prev.region AND curr.yr = prev.yr + 1
ORDER BY growth_rate ASC;

-- 5. Average Order Value (AOV)
-- Concept: Distinct Counting
SELECT 
    segment,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore_sample_raw
GROUP BY segment;