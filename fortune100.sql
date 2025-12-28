use fortune_db;
select * from fortune100;

-- Q1. What are the Top 10 Companies by Revenue?

SELECT company, revenue_usd_mn FROM fortune100
ORDER BY revenue_usd_mn DESC
LIMIT 10;

-- Q2. What is the Total Revenue of All Fortune 100 Companies?

SELECT SUM(revenue_usd_mn) AS total_revenue
FROM fortune100;

-- Q3. Which Industries Generate the Highest Total Revenue?

SELECT industry, SUM(revenue_usd_mn) AS industry_revenue FROM fortune100
GROUP BY industry
ORDER BY industry_revenue DESC;

-- Q4. Which Industries Have the Highest Average Revenue Growth?

SELECT industry, 
		ROUND(AVG(revenue_growth_pct),2) AS avg_growth_pct
FROM fortune100
GROUP BY industry
ORDER BY avg_growth_pct DESC;

-- Q4. Which Companies Have Negative Revenue Growth?

SELECT company, revenue_growth_pct
FROM fortune100
WHERE revenue_growth_pct < 0
ORDER BY revenue_growth_pct;

-- Q6. What Are the Top 10 Employers?

SELECT company, employees
FROM fortune100
ORDER BY employees DESC
LIMIT 10;

-- Q7. Which Industries Employ the Most People?

SELECT industry, SUM(employees) AS total_employees
FROM fortune100
GROUP BY industry
ORDER BY total_employees DESC;

-- Q8. Which Companies Are Most Efficient (Revenue per Employee)?

SELECT company, ROUND(revenue_usd_mn / employees, 2) AS revenue_per_employee
FROM fortune100
WHERE employees > 0
ORDER BY revenue_per_employee DESC
LIMIT 10;

-- Q9. Which States Have the Most Fortune 100 Headquarters?

SELECT hq_state, COUNT(*) AS company_count
FROM fortune100
GROUP BY hq_state
ORDER BY company_count DESC;

-- Q10. What Are the Overall Executive KPIs?

SELECT
    COUNT(*) AS total_companies,
    SUM(revenue_usd_mn) AS total_revenue_usd_mn,
    ROUND(AVG(revenue_growth_pct), 2) AS avg_growth_pct,
    SUM(employees) AS total_employees
FROM fortune100;

-- Q11. Top 3 Companies by Revenue Within Each Industry

SELECT *
FROM (
    SELECT company, industry, revenue_usd_mn,
        RANK() OVER (PARTITION BY industry ORDER BY revenue_usd_mn DESC) AS revenue_rank
    FROM fortune100
) ranked
WHERE revenue_rank <= 3;

-- Q12. Are Large Companies Growing Faster?

SELECT
    CASE
        WHEN revenue_usd_mn >= 100000 THEN 'Very Large'
        WHEN revenue_usd_mn >= 50000 THEN 'Large'
        ELSE 'Medium'
    END AS company_size,
    ROUND(AVG(revenue_growth_pct), 2) AS avg_growth
FROM fortune100
GROUP BY company_size
ORDER BY avg_growth DESC;

-- Q13. Revenue Contribution Percentage by Company

SELECT
    company,
    revenue_usd_mn,
    ROUND(
        revenue_usd_mn / SUM(revenue_usd_mn) OVER () * 100, 2
    ) AS revenue_contribution_pct
FROM fortune100
ORDER BY revenue_contribution_pct DESC;