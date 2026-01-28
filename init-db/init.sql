-- Simple database for Spring Boot app
BEGIN;

-- Drop tables if exists
DROP TABLE IF EXISTS locations CASCADE;

-- Create locations table
CREATE TABLE locations (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

COMMIT;