/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products Generating the Highest Revenue?
-- Simple Ranking
select top 5 p.product_name,sum(f.sales_amount) total_revenue from gold.fact_sales f left join gold.dim_products p on p.product_key = f.product_key group by p.product_name order by total_revenue desc;

--what are the 5 worst-performing products in terms of sales
select top 5 p.product_name,sum(f.sales_amount) total_revenue from gold.fact_sales f left join gold.dim_products p on p.product_key = f.product_key group by p.product_name order by total_revenue
