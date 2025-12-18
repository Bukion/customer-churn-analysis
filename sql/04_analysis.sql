SELECT
    usage_segment,
    AVG(total_day_charge + total_eve_charge + total_night_charge + total_intl_charge) AS avg_monthly_charge,
    AVG(churn_flag) AS churn_rate,
    COUNT(*) AS customers
FROM telecom_features
GROUP BY usage_segment
ORDER BY avg_monthly_charge DESC;
