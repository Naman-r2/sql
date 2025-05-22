-- Sample Data Insertion for Students, Courses, and Enrollments

INSERT INTO students (name, email, enrolled_date) VALUES
    ('Alice Johnson',  'alice@example.com',   '2023-09-01'),
    ('Bob Smith',      'bob@example.com',     '2023-09-02'),
    ('Charlie Brown',  'charlie@example.com', '2023-09-03');

INSERT INTO courses (course_name, credits) VALUES
    ('Mathematics', 4),
    ('Physics',     3),
    ('Literature',  2);

-- Assumes student_id and course_id start at 1 and are sequential
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
    (1, 1, '2023-09-10'),  -- Alice Johnson enrolled in Mathematics
    (1, 2, '2023-09-11'),  -- Alice Johnson enrolled in Physics
    (2, 2, '2023-09-12'),  -- Bob Smith enrolled in Physics
    (3, 3, '2023-09-13');  -- Charlie Brown enrolled in Literature

-- End of file