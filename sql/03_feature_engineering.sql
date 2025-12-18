DROP TABLE IF EXISTS telecom_features;

CREATE TABLE telecom_features AS
SELECT
    *,
    
    -- 1. Churn flag (model-friendly)
    CASE 
        WHEN churn = TRUE THEN 1 
        ELSE 0 
    END AS churn_flag,

    -- 2. Tenure buckets (BT-style)
    CASE
        WHEN account_length < 180 THEN '0–6 months'
        WHEN account_length < 365 THEN '6–12 months'
        WHEN account_length < 730 THEN '1–2 years'
        ELSE '2+ years'
    END AS tenure_bucket,

    -- 3. Total usage (broadband behaviour proxy)
    (total_day_minutes + total_eve_minutes + total_night_minutes) 
        AS total_usage_minutes,

    CASE
        WHEN (total_day_minutes + total_eve_minutes + total_night_minutes) < 300 THEN 'Low usage'
        WHEN (total_day_minutes + total_eve_minutes + total_night_minutes) < 600 THEN 'Medium usage'
        ELSE 'High usage'
    END AS usage_segment,

    -- 4. Service risk indicator
    CASE
        WHEN customer_service_calls >= 4 THEN 1
        ELSE 0
    END AS high_service_risk

FROM telecom_clean;
