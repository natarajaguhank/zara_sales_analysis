WITH raw AS (
    SELECT * FROM {{ source('zara_sales', 'ZARA_SALES_RAW') }}
)
SELECT
    product_id,
    product_position,
    promotion,
    product_category,
    seasonal,
    sales_volume,
    brand,
    url,
    sku,
    name,
    description,
    -- Convert price to numeric
    CAST(price AS NUMERIC) AS price_standardized,
    currency,
    scraped_at,
    terms,
    section
FROM raw;
