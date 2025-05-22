-- Demonstrating transactions with COMMIT and ROLLBACK
BEGIN;

-- Update student email
UPDATE students SET email = 'rollback@example.com' WHERE name = 'Bob Smith';

-- Rollback instead of commit to undo the change
ROLLBACK;

-- Begin another transaction
BEGIN;

-- Update and commit
UPDATE students SET email = 'bob.smith@example.com' WHERE name = 'Bob Smith';
COMMIT;