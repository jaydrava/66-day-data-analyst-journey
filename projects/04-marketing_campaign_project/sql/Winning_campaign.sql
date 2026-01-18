WITH monthly AS(
	SELECT campaign_type,
			DATE_TRUNC('month',send_date)::date AS month_start,
			ROUND(SUM(revenue) / NULLIF(SUM(emails_sent),0),2) AS revenue_per_email
	FROM campaign_daily_metrics
	GROUP BY campaign_type, DATE_TRUNC('month',send_date)::date
),
monthly_with_prev AS (
	SELECT
		campaign_type,
		month_start,
		revenue_per_email AS current_month_pre,
		LAG(revenue_per_email) OVER (
		PARTITION BY campaign_type
		ORDER BY month_start
		) AS previous_month_pre
	FROM monthly
)
SELECT campaign_type,
		month_start,
		current_month_pre,
		previous_month_pre,
		ROUND((current_month_pre - previous_month_pre) / NULLIF(previous_month_pre,0),4) AS mom_change_pct
FROM monthly_with_prev
ORDER BY campaign_type, month_start