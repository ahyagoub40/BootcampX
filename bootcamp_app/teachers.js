const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests
ON assistance_requests.teacher_id = teachers.id
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teachers.name;
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.name}`);
    });
  })
  .catch(err => console.log('query error', err.stack));