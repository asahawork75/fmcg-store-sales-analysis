USE fmcg;
SELECT * FROM market;

-- What is the total revenue
SELECT SUM(revenue_USD_Million) AS total_revenue FROM market;

-- Top 5 best selling Product
SELECT sub_category AS product,category,
SUM(revenue_USD_Million) AS revenue FROM market GROUP BY 1,2 ORDER BY revenue LIMIT 5;

-- Which Region Has Most Orders
SELECT region, COUNT(*) AS total_order FROM market GROUP BY 1 ORDER BY total_order DESC LIMIT 1;

-- Average Order Value per Company
SELECT company, AVG(revenue_USD_Million) AS avg_order_value FROM market
GROUP BY company ORDER BY avg_order_value DESC;

-- Most Profitable Category
SELECT category, 
SUM(revenue_USD_Million) AS total_revenue FROM market
GROUP BY category ORDER BY total_revenue DESC LIMIT 1;
