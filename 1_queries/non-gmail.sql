SELECT students.name, students.id, students.cohort_id
FROM students
WHERE students.phone IS NULL
AND students.email NOT LIKE '% gmail.com'
;