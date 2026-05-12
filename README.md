# support-ticket-analysis
Customer Support Ticket Analysis using SQL and Power BI



# SQL Analysis

# 1. Tickets by Category
```sql
SELECT category, COUNT(*) AS total_tickets
FROM tickets
GROUP BY category;

DB Fiddle Result
<img width="1609" height="312" alt="image" src="https://github.com/user-attachments/assets/1322c925-f0fd-455e-8de3-a5bc0830c320" />

# 2. Average Resolution time
SELECT AVG(DATEDIFF(resolved_date, created_date)) AS avg_resolution_time
FROM tickets;

DB Fiddle Result
<img width="1609" height="164" alt="image" src="https://github.com/user-attachments/assets/f30cc6c0-3a93-46ae-b69f-6536dcbd67ee" />

#3. Tickets by priority

SELECT priority, COUNT(*) AS total_tickets
FROM tickets
GROUP BY priority;

DB Fiddle Result
<img width="1643" height="298" alt="image" src="https://github.com/user-attachments/assets/74033a18-8924-489c-83a1-8cef6e84af94" />



# Power BI Dashboard

## Dashboard Overview
This dashboard was built in Power BI to analyze customer support ticket trends and performance.

### Dashboard Features
- Total Ticket Count KPI
- Tickets by Issue Category
- Tickets by Priority Level
- Ticket Subject Analysis

## Tools Used
- SQL
- Power BI
- DAX
- Data Visualization

## Power BI File


## Dashboard Screenshot
<img width="1344" height="755" alt="image" src="https://github.com/user-attachments/assets/53de2471-f5ad-4307-9d47-d9248dfdd51d" />





