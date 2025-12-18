CREATE OR REPLACE TABLE telecom_bi AS
SELECT
    *,
    total_day_charge + total_eve_charge + total_night_charge + total_intl_charge
        AS total_monthly_charge
FROM telecom_features;
