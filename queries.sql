/* =====================================================
   PROJECT: Customer Support Ticket Analysis
   AUTHOR: [Your Name]
   DESCRIPTION:
   SQL queries used to analyze support ticket data,
   including trends, resolution time, and performance.
===================================================== */


/* ================================
   1. VIEW ALL DATA
================================ */
SELECT *
FROM tickets;


/* ================================
   2. TOTAL NUMBER OF TICKETS
================================ */
SELECT COUNT(*) AS total_tickets
FROM tickets;


/* ================================
   3. TICKETS BY CATEGORY
   (Most common customer issues)
================================ */
SELECT 
    category,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY category
ORDER BY total_tickets DESC;


/* ================================
   4. TICKETS BY PRIORITY
================================ */
SELECT 
    priority,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY priority
ORDER BY total_tickets DESC;


/* ================================
   5. AVERAGE RESOLUTION TIME (DAYS)
================================ */
SELECT 
    AVG(DATEDIFF(resolved_date, created_date)) AS avg_resolution_days
FROM tickets
WHERE resolved_date IS NOT NULL;


/* ================================
   6. RESOLUTION TIME BY PRIORITY
================================ */
SELECT 
    priority,
    AVG(DATEDIFF(resolved_date, created_date)) AS avg_resolution_days
FROM tickets
WHERE resolved_date IS NOT NULL
GROUP BY priority
ORDER BY avg_resolution_days DESC;


/* ================================
   7. DAILY TICKET VOLUME
================================ */
SELECT 
    DATE(created_date) AS ticket_date,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY ticket_date
ORDER BY ticket_date;


/* ================================
   8. RESOLVED VS UNRESOLVED TICKETS
================================ */
SELECT 
    status,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY status;


/* ================================
   9. SLA RISK (LONG RESOLUTION TIME)
   Example: Tickets taking more than 3 days
================================ */
SELECT 
    ticket_id,
    category,
    priority,
    DATEDIFF(resolved_date, created_date) AS resolution_days
FROM tickets
WHERE resolved_date IS NOT NULL
AND DATEDIFF(resolved_date, created_date) > 3
ORDER BY resolution_days DESC;


/* ================================
   10. TOP AGENTS BY TICKETS HANDLED
================================ */
SELECT 
    agent,
    COUNT(*) AS tickets_handled
FROM tickets
GROUP BY agent
ORDER BY tickets_handled DESC;


/* ================================
   END OF ANALYSIS
================================ */
