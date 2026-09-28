-- ============================================================
-- Practice Exercise: Building and Optimising Queries
-- Database: city_library
-- ============================================================

-- Query 1: All Book Titles and Authors
SELECT 
    title AS `Book Title`, 
    author AS `Author`
FROM books;

-- Query 2: Distinct Genres Available
SELECT DISTINCT
	genre AS 'Genre'
FROM books;

-- ------------------------------------------------------------
-- Task 2: Filtering with Comparison Operators
-- ------------------------------------------------------------

-- Query 2.1: Books Published After 2000
SELECT
	*
FROM
	books
WHERE
	year_published > 2000;

-- Query 2.2: Books Where Copies On Loan Exceed or Equal Total Copies
SELECT
	*
FROM
	books
WHERE
	copies_on_loan > copies_total;

-- Query 5: Books Currently Unavailable
SELECT
	*
FROM
	books
WHERE 
	available = 0;

-- ------------------------------------------------------------
-- Task 3: Filtering with Logical Operators (AND, OR, IN)
-- ------------------------------------------------------------

-- Query 3.1: Available Fiction Books Published Before 1990
SELECT
	*
FROM
	books
WHERE
	genre = 'fiction'
    AND year_published < 1990
    AND available = 1;

-- Query 3.2: Science Books OR Books with More Than 3 Copies Total
SELECT
	*
FROM
	books
WHERE
	genre = 'science'
    OR copies_total > 3;
-- Optional: Rewriting the genre condition with IN
SELECT 
	*
FROM 
	books
WHERE 
	genre IN ('Science')
   OR copies_total > 3;

-- ------------------------------------------------------------
-- Task 4: Pattern Matching with the LIKE Operator
-- ------------------------------------------------------------

-- Query 4.1: Book Titles Containing the Word 'war'
SELECT
	*
FROM
	books
WHERE
	title LIKE '%war%';

-- Query 4.2: Authors Whose Surname Starts with 'M'
SELECT
	*
FROM
	books
WHERE
	author LIKE '% M%';