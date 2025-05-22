-- Subquery to find students enrolled in more than one course
SELECT name 
FROM students 
WHERE student_id IN (
    SELECT student_id FROM enrollments GROUP BY student_id HAVING COUNT(course_id) > 1
);

-- Common Table Expression (CTE) to simplify complex queries
WITH course_counts AS (
    SELECT course_id, COUNT(student_id) AS num_students
    FROM enrollments
    GROUP BY course_id
)
SELECT c.course_name, cc.num_students
FROM courses c
JOIN course_counts cc ON c.course_id = cc.course_id;

-- Subquery: Find courses with no enrollments
SELECT course_name
FROM courses
WHERE course_id NOT IN (
    SELECT course_id FROM enrollments
);

-- CTE: List students and the number of courses they are enrolled in
WITH student_enrollments AS (
    SELECT student_id, COUNT(course_id) AS course_count
    FROM enrollments
    GROUP BY student_id
)
SELECT s.name, se.course_count
FROM students s
JOIN student_enrollments se ON s.student_id = se.student_id;

-- CTE with subquery: Find students who enrolled in their first course after a certain date
WITH first_enrollments AS (
    SELECT student_id, MIN(enrollment_date) AS first_date
    FROM enrollments
    GROUP BY student_id
)
SELECT s.name, f.first_date
FROM students s
JOIN first_enrollments f ON s.student_id = f.student_id
WHERE f.first_date > '2023-09-10';