-- ========================================================
-- Table Definitions: students, courses, enrollments
-- ============================================================

-- ------------------------------------------------------------
-- Table: students
-- Stores student information
-- ------------------------------------------------------------
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    enrolled_date DATE DEFAULT CURRENT_DATE
);

-- ------------------------------------------------------------
-- Table: courses
-- Stores course information
-- ------------------------------------------------------------
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0)
);

-- ------------------------------------------------------------
-- Table: enrollments
-- Associates students with courses
-- ------------------------------------------------------------
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE DEFAULT CURRENT_DATE
);

-- End of file