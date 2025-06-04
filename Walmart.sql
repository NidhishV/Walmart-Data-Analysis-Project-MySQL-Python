SELECT * FROM walmart_db.walmart;
----
USE walmart_db;

SELECT * FROM walmart_db.walmart;
SELECT COUNT(*) FROM walmart;

SELECT 
 payment_method,
 COUNT(*)
 FROM walmart
 GROUP BY payment_method
 ;
 
 SELECT 
	COUNT(DISTINCT branch)
    Branch
FROM walmart;

SELECT MAX(quantity) FROM walmart;
SELECT MIN(quantity) FROM walmart;

-- Q.1 Find different payment methods and number of transactions, and number of quantity sold.

SELECT 
	payment_method,
	COUNT(*),
	SUM(quantity) as no_quantity_sold
FROM walmart
GROUP BY payment_method;


SELECT * FROM walmart;
-- Q2. Which product category generates the highest total sales?

SELECT category, SUM(total) AS total_sales
FROM walmart
GROUP BY category
ORDER BY total_sales DESC;

-- Q3. What are the peak sales hours?
SELECT 
    EXTRACT(HOUR FROM TIME(time)) AS hour,
    SUM(total) AS total_sales
FROM walmart
GROUP BY hour
ORDER BY total_sales DESC;

-- Q4. Which branches are underperforming in total sales?
SELECT Branch, SUM(total) AS total_sales
FROM walmart
GROUP BY Branch
ORDER BY total_sales ASC;

-- Q5. What is the trend of sales over time (monthly)?
SELECT 
    DATE_FORMAT(STR_TO_DATE(date, '%d/%m/%y'), '%Y-%m') AS month,
    SUM(total) AS total_sales
FROM walmart
GROUP BY month
ORDER BY month;

 -- Q6. What is the trend of sales over time (yearly)?
SELECT
  YEAR(STR_TO_DATE(date, '%d/%m/%y')) AS year,
  SUM(total) AS total_sales
FROM walmart
GROUP BY year
ORDER BY year;

-- Q7. Which product category has the highest average rating?
SELECT 
	category, 
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY category
ORDER BY avg_rating DESC;

-- Q8. Is there a correlation between unit price and quantity sold?
SELECT 
	unit_price, 
	AVG(quantity) AS avg_quantity
FROM walmart
GROUP BY unit_price
ORDER BY unit_price;

-- Q9. Top 3 Branches by Average Profit Margin Each Year.
SELECT * FROM (
  SELECT
    Branch,
    YEAR(STR_TO_DATE(date, '%d/%m/%y')) AS year,
    AVG(profit_margin) AS avg_profit_margin,
    ROW_NUMBER() OVER (PARTITION BY YEAR(STR_TO_DATE(date, '%d/%m/%y')) ORDER BY AVG(profit_margin) DESC) AS rn
  FROM walmart
  GROUP BY Branch, year
) ranked
WHERE rn <= 3
ORDER BY year, avg_profit_margin DESC;

-- Q10. Branch and Category Combination with Highest Sales Variance?
 SELECT
  Branch,
  category,
  VAR_SAMP(monthly_sales) AS sales_variance
FROM (
  SELECT
    Branch,
    category,
    DATE_FORMAT(STR_TO_DATE(date, '%d/%m/%y'), '%Y-%m') AS month,
    SUM(total) AS monthly_sales
  FROM walmart
  GROUP BY Branch, category, month
) monthly
GROUP BY Branch, category
ORDER BY sales_variance DESC
LIMIT 5;


	













