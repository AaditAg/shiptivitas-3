-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change


SELECT  
CASE
    when login_timestamp < 1527883200 THEN 'Before feature release'
    else 'After feature release'
END AS time_category,
COUNT(DISTINCT user_id) 
FROM login_history
GROUP BY time_category
ORDER BY login_timestamp ASC;

-- PART 2: Create a SQL query that indicates the number of status changes by card


SELECT cardId, COUNT(*) 
FROM card_change_history 
GROUP BY cardId;
