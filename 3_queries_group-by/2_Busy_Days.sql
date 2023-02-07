SELECT day, COUNT(content) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(content) >= 10
ORDER BY day;