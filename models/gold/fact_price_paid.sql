SELECT
    c.transaction_id,
    c.price,
    c.transfer_date AS date_key,
    c.postcode,
    c.transaction_id AS property_key
FROM {{ ref('price_paid_clean') }} c;
