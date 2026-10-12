-- Name: Naz
-- Date: October 12, 2026
-- Assignment: CSD430 Modules 5 & 6 - Create Table
-- Purpose: Create the CSD430 database, configure the student1 account, and create a movies table.
-- AI assistance disclosure: Drafted with assistance from OpenAI ChatGPT; review and adapt before submission.

CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

-- Create the assignment database account when permitted by the MySQL server.
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS nazmoviesdata (
    movie_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    director VARCHAR(100) NOT NULL,
    release_year YEAR NOT NULL,
    genre VARCHAR(50) NOT NULL,
    rating DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (movie_id)
);
