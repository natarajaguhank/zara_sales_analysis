SELECT DISTINCT
    transaction_id,
    property_type,
    old_new,
    duration,
    paon,
    saon,
    street,
    locality
FROM {{ ref('price_paid_clean') }};
