SELECT day, COUNT(*) AS assignments_number, SUM(duration) AS total_duration
FROM assignments
GROUP BY day
ORDER BY day