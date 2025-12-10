SELECT DISTINCT
    postcode,
    town,
    district,
    county
FROM {{ ref('price_paid_clean') }};
