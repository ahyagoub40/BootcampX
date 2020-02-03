SELECT students.name,
       AVG(assignment_submissions.duration) AS student_average,
       AVG(assignments.duration) AS suggested_average
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
JOIN assignments
ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY student_average
;