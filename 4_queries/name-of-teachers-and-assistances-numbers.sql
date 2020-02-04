SELECT DISTINCT teachers.name, cohorts.name, COUNT(assistance_requests.*)
FROM teachers
JOIN assistance_requests
ON assistance_requests.teacher_id = teachers.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY cohorts.name, teachers.name
ORDER BY teachers.name;