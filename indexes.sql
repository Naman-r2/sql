-- Indexes are special lookup tables that the database search engine can use to speed up data retrieval.
-- They are especially useful for columns that are frequently searched, filtered, or joined on.
-- Indexes can improve SELECT query performance but may slightly slow down INSERT, UPDATE, and DELETE operations.

-- Single-column index to optimize email lookups in students table
CREATE INDEX idx_students_email ON students(email);

-- Composite index to speed up queries filtering by both student_id and course_id in enrollments
CREATE INDEX idx_enrollments_student_course ON enrollments(student_id, course_id);

-- Index on course_name to speed up searches and sorts on courses
CREATE INDEX idx_courses_name ON courses(course_name);

-- Unique index to enforce unique emails (redundant if already set as UNIQUE constraint)
CREATE UNIQUE INDEX idx_students_email_unique ON students(email);

-- Partial index: only index enrollments after a certain date
CREATE INDEX idx_enrollments_recent ON enrollments(enrollment_date)
WHERE enrollment_date > '2023-09-10';

-- Index on enrollment_date to speed up queries filtering or sorting by date
CREATE INDEX idx_enrollments_date ON enrollments(enrollment_date);

-- Drop an index (example)
 DROP INDEX IF EXISTS idx_students_email;