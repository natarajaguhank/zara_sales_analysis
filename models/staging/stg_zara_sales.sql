{{ config(
    materialized='table'
) }}

select
    cast(product_id as int) as product_id,
    product_position,
    
    -- Standardize promotion flag
    case 
        when lower(promotion) in ('yes', 'y', 'true', '1') then 'Yes'
        else 'No'
    end as promotion_flag,
    
    product_category,
    seasonal,
    cast(sales_volume as int) as sales_volume,
    brand,
    url,
    sku,
    name,
    description,
    
    -- Ensure price is numeric
    cast(price as number(10,2)) as price,
    
    currency,
    cast(scraped_at as timestamp) as scraped_at,
    terms,
    section

from {{ source('zara_sales', 'zara_sales_raw') }}
where product_id is not null
