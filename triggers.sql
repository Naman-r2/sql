-- Create audit_log table
CREATE TABLE audit_log (
    log_id SERIAL PRIMARY KEY,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action TEXT
);

-- Function to log updates on students table
CREATE OR REPLACE FUNCTION log_student_update()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_log (action) 
    VALUES (CONCAT('Updated student: ', OLD.name, ' to ', NEW.name));
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to call the logging function after update
CREATE TRIGGER trg_student_update
AFTER UPDATE ON students
FOR EACH ROW
EXECUTE FUNCTION log_student_update();