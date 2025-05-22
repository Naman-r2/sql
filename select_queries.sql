-- This SQL script demonstrates various SELECT queries on a hypothetical 'students' table.

-- Select all students
SELECT * FROM students;

-- Select student names and emails enrolled after a specific date
SELECT name, email
FROM students
WHERE enrolled_date > '2023-09-01';

-- Select all students, sorted by enrollment date (newest first)
SELECT *
FROM students
ORDER BY enrolled_date DESC;

-- Select student names and emails with column aliases
SELECT name AS student_name, email AS student_email
FROM students;

-- End of file