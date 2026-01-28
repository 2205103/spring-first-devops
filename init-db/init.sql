-- Simple database for Spring Boot app
BEGIN;

-- Drop tables if exists
DROP TABLE IF EXISTS locations CASCADE;

-- Create locations table
CREATE TABLE locations (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Insert some test data
INSERT INTO locations (id, name) VALUES 
    (1, 'London'),
    (2, 'Paris'),
    (3, 'Berlin'),
    (4, 'New York'),
    (5, 'Tokyo')
ON CONFLICT (id) DO NOTHING;

COMMIT;