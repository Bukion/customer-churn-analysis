DROP TABLE IF EXISTS telecom_clean;

CREATE TABLE telecom_clean AS
SELECT
    state,
    account_length,
    area_code,
    international_plan,
    voice_mail_plan,
    vmail_messages,

    total_day_minutes,
    total_day_calls,
    total_day_charge,

    total_eve_minutes,
    total_eve_calls,
    total_eve_charge,

    total_night_minutes,
    total_night_calls,
    total_night_charge,

    total_intl_minutes,
    total_intl_calls,
    total_intl_charge,

    customer_service_calls,
    churn
FROM (
    SELECT
        "State"                  AS state,
        "Account length"         AS account_length,
        "Area code"              AS area_code,
        "International plan"     AS international_plan,
        "Voice mail plan"        AS voice_mail_plan,
        "Number vmail messages"  AS vmail_messages,

        "Total day minutes"      AS total_day_minutes,
        "Total day calls"        AS total_day_calls,
        "Total day charge"       AS total_day_charge,

        "Total eve minutes"      AS total_eve_minutes,
        "Total eve calls"        AS total_eve_calls,
        "Total eve charge"       AS total_eve_charge,

        "Total night minutes"    AS total_night_minutes,
        "Total night calls"      AS total_night_calls,
        "Total night charge"     AS total_night_charge,

        "Total intl minutes"     AS total_intl_minutes,
        "Total intl calls"       AS total_intl_calls,
        "Total intl charge"      AS total_intl_charge,

        "Customer service calls" AS customer_service_calls,
        "Churn"                  AS churn
    FROM telecom_raw
);
