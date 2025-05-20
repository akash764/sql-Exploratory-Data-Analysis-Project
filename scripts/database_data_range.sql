/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and last order date and the total duration in months
select min(order_date) as fisrt_order_date,
max(order_date) as last_order,
datediff(year,min(order_date),max(order_date)) as order_range_years
from gold.fact_sales;

select min(birthdate) as oldest_birthdate,
datediff(year, min(birthdate),getdate()) as age_of_oldest,
max(birthdate) as youngest_birthdate,
datediff(year, max(birthdate),getdate()) as age_of_youngest
from gold.dim_customers;
