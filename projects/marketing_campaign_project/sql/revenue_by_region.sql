WITH campaign_dim AS (
  SELECT DISTINCT
    campaign_id,
    campaign_type,
    campaign_name
  FROM campaign_daily_metrics
)
SELECT
  cd.campaign_type,
  ca.region,
  COUNT(*) AS total_rows,
  ROUND(AVG(ca.purchased), 4) AS conversion_rate,
  ROUND(SUM(ca.revenue) / NULLIF(COUNT(*), 0), 4) AS revenue_per_email
FROM customer_campaign_activity ca
JOIN campaign_dim cd
  ON ca.campaign_id = cd.campaign_id
GROUP BY
  cd.campaign_type,
  ca.region
ORDER BY
  cd.campaign_type,
  ca.region;