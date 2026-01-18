SELECT campaign_name,
	   campaign_type,
	   SUM(emails_sent) AS total_email_sent,
	   SUM(purchases) AS total_purchase,
	   SUM(revenue)	AS total_revenue,
	   ROUND(SUM(purchases) / SUM(emails_sent)::numeric,4) AS conversion_rate,
	   ROUND(SUM(revenue) / SUM(emails_sent),2) AS revenue_pre_email,
	   ROUND(SUM(revenue) / SUM(purchases),2) AS revenue_per_purchase
FROM campaign_daily_metrics
GROUP BY campaign_type, campaign_name