-- Creating a view for easy access to student-course info
CREATE VIEW student_course_info AS
SELECT s.name AS student_name, c.course_name, e.enrollment_date
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Querying the view
SELECT * FROM student_course_info;