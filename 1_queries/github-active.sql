SELECT students.name, students.email, students.phone
FROM students
WHERE students.github IS NULL
AND end_date IS NOT NULL
;