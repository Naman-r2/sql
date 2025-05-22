-- Demonstrating different types of joins

-- INNER JOIN: fetch students with their enrolled courses
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- LEFT JOIN: fetch all students and their courses (if enrolled)
SELECT s.name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

-- RIGHT JOIN: fetch all courses and students enrolled in them
SELECT c.course_name, s.name
FROM courses c
RIGHT JOIN enrollments e ON c.course_id = e.course_id
RIGHT JOIN students s ON e.student_id = s.student_id;

-- FULL OUTER JOIN: combine both LEFT and RIGHT joins
SELECT s.name, c.course_name
FROM students s
FULL OUTER JOIN enrollments e ON s.student_id = e.student_id
FULL OUTER JOIN courses c ON e.course_id = c.course_id;