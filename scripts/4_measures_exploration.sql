/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Find the Total Sales
 --find the total sales
 select sum(sales_amount) as total_sales from gold.fact_sales;

 --find how many items are sold
 select sum(quantity) as total_quantity from gold.fact_sales;

 --find the avg selling price
 select avg(price) as avg_price from gold.fact_sales;

 --find the total orders
 select count(order_number) as total_number_of_orders from gold.fact_sales;
 select count(distinct order_number) as total_orders from gold.fact_sales;

 --find the total number of products
 select count(product_key) as total_number_of_products from gold.dim_products;
 select count(distinct product_key) as total_products from gold.dim_products;

 --find the total number of customers
 select count(customer_key) as total_customers from gold.dim_customers;
 
 --find the total number of customers that has placed an order
 select count(distinct customer_key) as total_customers from gold.fact_sales;

 --generate a report that showa all metrics of the business
 select 'Total Sales' as measure_name,sum(sales_amount) as measure_value from gold.fact_sales
 union all
 select 'Total Quantity' as measure_name,sum(quantity) as measure_value from gold.fact_sales
 union all
 select 'Average Price',avg(price) from gold.fact_sales
 union all
 select 'Total number of Orders',count(distinct order_number) from gold.fact_sales
 union all
 select 'Total number of products',count(product_key) from gold.dim_products
 union all
 select 'Total number off customers',count(customer_key) from gold.dim_customers;




