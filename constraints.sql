-- NOT NULL constraint: ensures a column cannot have NULL values
CREATE TABLE test_not_null (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- UNIQUE constraint: ensures all values in a column are unique
CREATE TABLE test_unique (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- PRIMARY KEY constraint: uniquely identifies each record in a table
CREATE TABLE test_primary_key (
    id SERIAL PRIMARY KEY,
    description TEXT
);

-- FOREIGN KEY constraint: ensures referential integrity between tables
CREATE TABLE test_foreign_key (
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id)
);

-- CHECK constraint: ensures values meet a specific condition
CREATE TABLE test_check (
    id SERIAL PRIMARY KEY,
    age INT CHECK (age >= 18)
);

-- DEFAULT constraint: sets a default value for a column
CREATE TABLE test_default (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add a constraint to an existing table (example: add NOT NULL)
ALTER TABLE students
ALTER COLUMN name SET NOT NULL;

-- Drop a constraint from an existing table (example: drop UNIQUE)
ALTER TABLE students
DROP CONSTRAINT IF EXISTS students_email_key;