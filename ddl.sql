-- Create table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Alter table: add a new column
ALTER TABLE students
ADD COLUMN phone VARCHAR(20);

-- Alter table: modify a column type
ALTER TABLE courses
ALTER COLUMN credits TYPE SMALLINT;

-- Rename a table
ALTER TABLE departments
RENAME TO dept;

-- Drop a column
ALTER TABLE students
DROP COLUMN phone;

-- Drop a table
DROP TABLE IF EXISTS dept;

-- Truncate a table (remove all rows, keep structure)
TRUNCATE TABLE enrollments;

-- Create a new schema
CREATE SCHEMA university;

-- Drop a schema
DROP SCHEMA IF EXISTS university CASCADE;