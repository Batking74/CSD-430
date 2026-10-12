-- Name: Nazir Knuckles
-- Date: October 12, 2026
-- Assignment: CSD430 Modules 5 & 6 - Populate Table
-- Purpose: Insert ten sample movie records into nazmoviesdata.

USE CSD430;

INSERT INTO nazmoviesdata (title, director, release_year, genre, rating) VALUES
('The Shawshank Redemption', 'Frank Darabont', 1994, 'Drama', 9.3),
('The Dark Knight', 'Christopher Nolan', 2008, 'Action', 9.0),
('Inception', 'Christopher Nolan', 2010, 'Sci-Fi', 8.8),
('Spider-Man: Into the Spider-Verse', 'Bob Persichetti', 2018, 'Animation', 8.4),
('Black Panther', 'Ryan Coogler', 2018, 'Action', 7.3),
('The Princess Bride', 'Rob Reiner', 1987, 'Adventure', 8.0),
('Everything Everywhere All at Once', 'Daniel Kwan and Daniel Scheinert', 2022, 'Sci-Fi', 7.8),
('Get Out', 'Jordan Peele', 2017, 'Horror', 7.8),
('The Grand Budapest Hotel', 'Wes Anderson', 2014, 'Comedy', 8.1),
('Interstellar', 'Christopher Nolan', 2014, 'Sci-Fi', 8.7);

-- Verify that all ten records were inserted.
SELECT * FROM nazmoviesdata ORDER BY movie_id;
