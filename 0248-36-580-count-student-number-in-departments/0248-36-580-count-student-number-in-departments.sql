# Write your MySQL query statement below
SELECT d.dept_name, COUNT(s.student_id) as student_number
FROM Student s
RIGHT JOIN Department d
ON s.dept_id=d.dept_id
GROUP BY d.dept_name
ORDER BY student_number DESC, dept_name ASC