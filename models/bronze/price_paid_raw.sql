SELECT
    raw_line
FROM {{ source('bronze', 'price_paid_raw') }}
