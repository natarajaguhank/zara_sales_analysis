SELECT DISTINCT
    transfer_date AS date_key,
    YEAR(transfer_date) AS year,
    MONTH(transfer_date) AS month,
    DAY(transfer_date) AS day,
    QUARTER(transfer_date) AS quarter
FROM {{ ref('price_paid_clean') }}
WHERE transfer_date IS NOT NULL;
