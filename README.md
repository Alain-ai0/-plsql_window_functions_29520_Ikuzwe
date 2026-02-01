# -plsql_window_functions_29520_Ikuzwe

_**1. Problem Definition**_

 **. Business Context:** I am analyzing the logistics department of Rwandair, specifically focusing on flight performance and passenger booking trends at Kigali International Airport (KGL).

**. Data challenge:** The airline is struggling to identify which routes (like Kigali to Dubai or Nairobi) are most profitable and whether flight delays are becoming a trend. We need to see if passenger numbers are growing month-over-month.

**. Expected Outcome:** This analysis will help Rwandair decide which routes need more flights and identify underperforming schedules that require operational changes.

_**2. Success Criteria**_

**1. Top Destinations:** Identify the Top 3 destinations by total passenger revenue using _RANK()_.

**2. Monthly Revenue Trend:** Calculate the running total of revenue for the year using _SUM() OVER()_.

**3. Growth Analytics:** Compare this month's passenger count to last month's using _LAG()_.

**4. Flight performance Tiers:** Divide flights into 4 "Efficiency Quartiles" based on delay times using _NTILE(4)_.

**5. Average Load Factor:** Calculate a 3-flight movind average of passenger counts using _AVG() OVER_
