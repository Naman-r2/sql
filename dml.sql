-- Updating a student's email
UPDATE students 
SET email = 'alice.johnson@example.com' 
WHERE name = 'Alice Johnson';

-- Deleting a specific student
DELETE FROM students 
WHERE name = 'Charlie Brown';

-- Insert a new student
INSERT INTO students (name, email, enrolled_date)
VALUES ('David Lee', 'david.lee@example.com', '2023-09-04');

-- Insert a new course
INSERT INTO courses (course_name, credits)
VALUES ('Chemistry', 3);

-- Insert a new enrollment
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES (2, 1, '2023-09-14');

-- Update course credits
UPDATE courses
SET credits = 5
WHERE course_name = 'Mathematics';

-- Delete all enrollments for a student
DELETE FROM enrollments
WHERE student_id = 2;

-- Update multiple students' enrollment date
UPDATE students
SET enrolled_date = '2023-09-05'
WHERE enrolled_date < '2023-09-03';

-- Delete courses with no enrollments
DELETE FROM courses
WHERE course_id NOT IN (SELECT course_id FROM enrollments);