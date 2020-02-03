SELECT students.name, students.id, students.cohort_id
FROM students
WHERE students.end_date IS NULL
ORDER BY cohort_id
;