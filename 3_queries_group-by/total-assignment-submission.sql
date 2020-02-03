SELECT cohorts.name AS cohort, count(assignment_submissions. *) AS total_assignment_submission
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_assignment_submission DESC
;
