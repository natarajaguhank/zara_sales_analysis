{{ config(
    materialized='table'
) }}

select
    product_category,
    section,
    promotion_flag,
    currency,
    count(distinct product_id) as total_products,
    sum(sales_volume) as total_sales_volume,
    round(avg(price),2) as avg_price,
    min(price) as min_price,
    max(price) as max_price,
    current_timestamp() as snapshot_time

from {{ ref('stg_zara_sales') }}
group by 1,2,3,4
