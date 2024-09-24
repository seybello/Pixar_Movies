---creating a table
CREATE TABLE MOVIES_TABLE(
ID INT NOT NULL,
TITLE VARCHAR(30) NOT NULL,
DIRECTOR VARCHAR(30) NOT NULL,
YEAR INT NOT NULL,
LENGTH_MINUTES INT NOT NULL);

SELECT * FROM MOVIES_TABLE;
---putting values into the table
INSERT INTO MOVIES_TABLE(ID, TITLE, DIRECTOR, YEAR, LENGTH_MINUTES)
VALUES
(1, 'Toy Story', 'John Lasseter', 1995, 81), 
(2, 'A Bug"s Life', 'John Lasseter', 1998, 95), 
(3, 'Toy Story 2', 'John Lasseter', 1999, 93),
(4, 'Monsters, Inc.', 'Pete Docter', 2001, 92), 
(5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
(6, 'The Incredibles', 'Brad Bird', 2004, 116),
(7, 'Cars', 'John Lasseter', 2006, 117),
(8, 'Ratatouille', 'Brad Bird', 2007, 115),
(9, 'WALL-E', 'Andrew Stanton', 2008, 104),
(10, 'Up', 'Pete Docter', 2009, 101),
(11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
(12, 'Cars 2', 'John Lasseter', 2011, 120), 
(13, 'Brave', 'Brenda Chapman', 2012, 102), 
(14, 'Monsters University', 'Dan Scanlon', 2013, 110);
---find the title of each film
SELECT TITLE FROM MOVIES_TABLE;
---find the director of each film
SELECT DIRECTOR FROM MOVIES_TABLE;
---find the title and director of each film
SELECT TITLE, DIRECTOR FROM MOVIES_TABLE;
---find the title and year of each film
SELECT TITLE, YEAR FROM MOVIES_TABLE;
---find all the information about each film
SELECT * FROM MOVIES_TABLE;
---find the movie with a row id of 6
SELECT TITLE FROM MOVIES_TABLE
WHERE ID = 6;
---find the movies released in the years between 2000 and 2010
SELECT TITLE FROM MOVIES_TABLE
WHERE YEAR BETWEEN 2000 AND 2010;
---find the movies not released in the years between 2000 and 2010
SELECT TITLE FROM MOVIES_TABLE
WHERE YEAR NOT BETWEEN 2000 AND 2010;
---find the first 5 pixar movies and their release year
SELECT TOP 5 TITLE, YEAR FROM MOVIES_TABLE;
---find all the toy story movies
---using a wildcard '%'
SELECT TITLE FROM MOVIES_TABLE
WHERE TITLE LIKE 'TOY STORY%';
---find all the movies directed by john lasseter
SELECT TITLE FROM MOVIES_TABLE
WHERE DIRECTOR = 'JOHN LASSETER';
---find all the movies(and director) not directed by john lasseter
SELECT TITLE, DIRECTOR FROM MOVIES_TABLE
WHERE NOT DIRECTOR = 'JOHN LASSETER';
---find all the 'wall-*' movies
SELECT TITLE FROM MOVIES_TABLE
WHERE ID = 9;
---list all the directors of pixar movies(alphabetically),without duplicates
---using distinct
SELECT DISTINCT DIRECTOR FROM MOVIES_TABLE
ORDER BY DIRECTOR;
SELECT * FROM MOVIES_TABLE
---list last four pixar movies released(order from recent to least)
SELECT TITLE FROM MOVIES_TABLE
ORDER BY YEAR
OFFSET 10 ROWS FETCH NEXT 4 ROWS ONLY;
---list the first five pixar movies sorted alphabetically
SELECT TOP 5 TITLE FROM MOVIES_TABLE
ORDER BY TITLE;
---list the next five pixar movies sorted alphabetically
SELECT TITLE FROM MOVIES_TABLE
ORDER BY TITLE
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;