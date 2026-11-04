-- Total procurement spending by item category

SELECT
    "Item Category",
    SUM("Amount ($)") AS total_spend
FROM procurement
GROUP BY "Item Category"
ORDER BY total_spend DESC;

-- Total procurement spending by company

SELECT
    "Company Name",
    SUM("Amount ($)") AS total_spend
FROM procurement
GROUP BY "Company Name"
ORDER BY total_spend DESC;


-- Raw material spending by company

SELECT
    "Company Name",
    SUM("Amount ($)") AS total_spend
FROM procurement
WHERE "Item Category" = 'Raw Material'
GROUP BY "Company Name"
ORDER BY total_spend DESC;


-- Top 10 items by total procurement spend

SELECT
    "Item Name",
    SUM("Amount ($)") AS total_spend
FROM procurement
GROUP BY "Item Name"
ORDER BY total_spend DESC
LIMIT 10;


-- Monthly procurement spending in chronological order

SELECT
    "Month",
    SUM("Amount ($)") AS total_spend
FROM procurement
GROUP BY "Month"
ORDER BY CASE "Month"
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'Augest' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
END;

-- Total spending by company and item category
SELECT
    SUM("Amount ($)") AS total_spend,
    "Company Name",
    "Item Category"
FROM procurement
GROUP BY "Item Category", "Company Name"
ORDER BY total_spend DESC;

--  Average purchase amount by company
SELECT
    "Company Name",
    COUNT(*) AS transaction_count,
    AVG("Amount ($)") AS avg_purchase
FROM procurement
GROUP BY "Company Name"
ORDER BY avg_purchase DESC;

-- Average purchase amount and transaction count by item category

SELECT
    "Item Category",
    AVG("Amount ($)") AS avg_purchase,
    COUNT(*) AS transaction_count
FROM procurement
GROUP BY "Item Category"
ORDER BY avg_purchase DESC;

-- Categories with at least 10 transactions, ranked by average purchase amount

SELECT
    "Item Category",
    AVG("Amount ($)") AS avg_purchase,
    COUNT(*) AS transaction_count
FROM procurement
GROUP BY "Item Category"
HAVING COUNT(*) >= 10
ORDER BY avg_purchase DESC;