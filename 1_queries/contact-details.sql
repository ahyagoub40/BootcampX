SELECT students.name, students.id, students.cohort_id
FROM students
WHERE students.email IS NULL
OR students.phone IS NULL
;