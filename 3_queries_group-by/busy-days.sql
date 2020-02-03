SELECT count(assignments.id) AS total_assignments
FROM assignments
GROUP BY assignments.day
HAVING count(assignments.id) > 10
ORDER BY assignments.day
;