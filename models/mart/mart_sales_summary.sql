SELECT
    product_category,
    brand,
    SUM(sales_volume) AS total_units_sold,
    SUM(price_standardized * sales_volume) AS total_sales
FROM {{ ref('stg_zara_sales') }}
GROUP BY product_category, brand;
 