SELECT campaign_type,
	   DATE_TRUNC('day',send_date)::date AS date_days,
	   SUM(revenue) / NULLIF(SUM(emails_sent),0) AS daily_revenue_per_email
FROM campaign_daily_metrics
GROUP BY campaign_type, date_days
ORDER BY daily_revenue_per_email DESC