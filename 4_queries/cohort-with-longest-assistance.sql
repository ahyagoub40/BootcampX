SELECT MAX(average_assistance_request_duration) FROM (SELECT cohorts.name, AVG(completed_at - started_at) AS average_assistance_request_duration
FROM students 
JOIN assistance_requests 
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration) AS foo