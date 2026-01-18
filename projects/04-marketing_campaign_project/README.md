# 📧 Marketing Campaign A/B Test Analysis (6 Months)

## 📌 Project Overview
This project analyzes a 6-month email marketing A/B test to determine which campaign strategy produced higher revenue impact.

- **Campaign A:** Discount-focused (20% off)
- **Campaign B:** Product-focused (New Arrivals)

The goal was to identify the winning campaign using business KPIs + statistical testing and recommend next steps for scaling.

---

## 🎯 Business Problem
Marketing leadership needed to decide which campaign should be scaled based on **revenue performance**, customer response by segment, and whether results were statistically significant.

---

## 🧠 Key Questions Answered
- Which campaign generated higher revenue and revenue per email?
- Do performance results vary by **age group**, **region**, and **customer type**?
- Is the performance difference statistically significant or random?
- What are the best days to send emails?

---

## 📊 Key Metrics Used
- Total Revenue
- Revenue per Email (Primary Winner Metric)
- Conversion Rate
- Revenue per Purchase
- Open Rate
- Click Rate
- Click-to-Open Rate

---

## ✅ Results Summary (Winner Decision)
**Campaign B (New Arrivals) is the winner based on revenue efficiency.**

| Metric | Campaign A | Campaign B |
|------|-----------:|-----------:|
| Total Revenue | **$719,918.92** | **$857,051.24** ✅ |
| Revenue per Email | **$0.35** | **$0.41** ✅ |
| Conversion Rate | **0.61%** ✅ | **0.54%** |
| Revenue per Purchase | **$57.21** | **$76.41** ✅ |

**Decision:** Even though Campaign A converted slightly better, Campaign B produced **higher revenue impact per email and per purchase**, which is more scalable for the business.

---

## 📈 Statistical Significance (A/B Test)
A Welch’s t-test was used to compare **daily revenue per email** across campaigns.

- **t-statistic:** -4.1199  
- **p-value:** 0.0000 ✅ (significant)
- **Absolute uplift:** +0.0597 revenue/email  
- **Relative uplift:** ~**+17.1%** revenue/email

✅ **Conclusion:** Campaign B’s revenue lift is statistically significant and not random.

---

## 👥 Segmentation Insights (What Worked Best)
### Age Group (Revenue per Email)
- **Best segment for Campaign B:** **26–35**
- Campaign B performed strongest overall in younger segments (especially **26–35**)
- Campaign A performed relatively better in older segments but still lower revenue efficiency overall

### Customer Type
- **Returning customers** generate the highest revenue per email for both campaigns
- Campaign B dominates for returning customers and new customers

### Region
Campaign B produced higher revenue per email across most regions, especially:
- **Midwest** (strongest performance)

---

## 🗓 Best Days to Send Emails
Campaign performance by weekday showed:
- **Campaign B performs best on Tuesday + Thursday**
- **Campaign A performs best on Friday**

Recommendation: prioritize **Campaign B on Tue/Thu** for best revenue efficiency.

---

## 💡 Recommendations
1. **Scale Campaign B immediately** (higher revenue/email + statistically significant uplift).
2. Target **age group 26–35** with Campaign B style messaging (high performer).
3. Focus on **returning customers** first for maximum ROI.
4. Improve Campaign A by testing B-style structure (product focus + value framing).
5. Use Tue/Thu as primary send days for B.

---

## 🛠 Tools & Workflow
**SQL (PostgreSQL + pgAdmin)**
- Data validation checks
- KPI aggregations
- Segment performance by age/region/customer type

**Python (Pandas + SciPy)**
- Export SQL results for analysis
- Welch’s t-test for significance testing
- Lift and interpretation

**Tableau**
- Executive dashboard with KPI tiles
- Monthly revenue trend
- Segmentation charts
- Best day analysis

---

## 📂 Files Included
- SQL queries (views + aggregations)
- Python notebook (A/B testing + uplift)
- Tableau workbook/dashboard screenshots

---

## 🔥 Skills Demonstrated
✅ A/B Test Design + Interpretation  
✅ KPI Definition for Marketing  
✅ SQL Aggregation + Data Modeling  
✅ Statistical Testing (Welch t-test)  
✅ Tableau Executive Dashboard Design  
✅ Business Recommendations
