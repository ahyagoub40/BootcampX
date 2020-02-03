SELECT students.cohort_id, count(*) AS cohort_size
FROM students
WHERE students.cohort_id IS NOT NULL
GROUP BY students.cohort_id
HAVING count(*) >= 18
;