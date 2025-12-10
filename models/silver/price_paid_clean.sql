SELECT
    REPLACE(SPLIT(raw_line, ',')[0], '"', '') AS transaction_id,
    TRY_TO_NUMBER(REPLACE(SPLIT(raw_line, ',')[1], '"', '')) AS price,
    TRY_TO_TIMESTAMP(REPLACE(SPLIT(raw_line, ',')[2], '"', ''))::DATE AS transfer_date,
    REPLACE(SPLIT(raw_line, ',')[3], '"', '') AS postcode,
    REPLACE(SPLIT(raw_line, ',')[4], '"', '') AS property_type,
    REPLACE(SPLIT(raw_line, ',')[5], '"', '') AS old_new,
    REPLACE(SPLIT(raw_line, ',')[6], '"', '') AS duration,
    REPLACE(SPLIT(raw_line, ',')[7], '"', '') AS paon,
    REPLACE(SPLIT(raw_line, ',')[8], '"', '') AS saon,
    REPLACE(SPLIT(raw_line, ',')[9], '"', '') AS street,
    REPLACE(SPLIT(raw_line, ',')[10], '"', '') AS locality,
    REPLACE(SPLIT(raw_line, ',')[11], '"', '') AS town,
    REPLACE(SPLIT(raw_line, ',')[12], '"', '') AS district,
    REPLACE(SPLIT(raw_line, ',')[13], '"', '') AS county,
    REPLACE(SPLIT(raw_line, ',')[14], '"', '') AS category,
    REPLACE(SPLIT(raw_line, ',')[15], '"', '') AS status
FROM {{ ref('price_paid_raw') }};
