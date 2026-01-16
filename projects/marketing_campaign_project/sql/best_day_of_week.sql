SELECT campaign_type,
	   SUM(emails_sent) AS total_email,
	   EXTRACT(DOW FROM send_date) AS day_of_week,
	   ROUND(SUM(purchases)::numeric/NULLIF(SUM(emails_sent),0),4) AS conversion_rate,
	   ROUND(SUM(revenue)/SUM(emails_sent),2) AS revenue_per_email
FROM campaign_daily_metrics
GROUP BY campaign_type,EXTRACT(DOW FROM send_date)
ORDER BY day_of_week
