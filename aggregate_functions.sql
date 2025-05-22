-- Using aggregate functions to summarize data

-- Count the number of students
SELECT COUNT(*) AS total_students FROM students;

-- Average course credits
SELECT AVG(credits) AS average_credits FROM courses;

-- Maximum and minimum enrollment dates
SELECT MAX(enrollment_date) AS latest_enrollment, MIN(enrollment_date) AS earliest_enrollment FROM enrollments;

-- Group by and having example: number of students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS num_students
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING COUNT(e.student_id) > 1;

-- Sum of all course credits
SELECT SUM(credits) AS total_credits FROM courses;

-- Standard deviation of course credits
SELECT STDDEV(credits) AS stddev_credits FROM courses;

-- Number of enrollments per student
SELECT s.name, COUNT(e.enrollment_id) AS enrollments_count
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.name;

-- List of courses with the earliest enrollment date for each
SELECT c.course_name, MIN(e.enrollment_date) AS first_enrollment
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;