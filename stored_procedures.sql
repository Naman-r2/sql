-- Function to get a student's email by name
CREATE OR REPLACE FUNCTION get_student_email(p_name VARCHAR)
RETURNS VARCHAR AS $$
DECLARE
    result_email VARCHAR;
BEGIN
    SELECT email INTO result_email FROM students WHERE name = p_name;
    RETURN result_email;
END;
$$ LANGUAGE plpgsql;

-- Calling the function
SELECT get_student_email('Alice Johnson');