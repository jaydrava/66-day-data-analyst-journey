SELECT campaign_type,
		SUM(emails_sent) AS total_email,
		ROUND(SUM(opens)::numeric /NULLIF(SUM(emails_sent),0),2) AS open_email,
		ROUND(SUM(clicks)::numeric/NULLIF(SUM(emails_sent),0),2) AS click_email,
		ROUND(SUM(clicks)::numeric / NULLIF(SUM(opens),0),2) AS click_to_open_email,
		ROUND(SUM(purchases)::numeric / NULLIF(SUM(emails_sent),0),2) AS conversion_rate,
		ROUND(SUM(revenue)/ SUM(emails_sent),2) AS revenue_per_email
FROM campaign_daily_metrics
GROUP BY campaign_type
		