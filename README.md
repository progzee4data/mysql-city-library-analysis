<img width="1920" height="1080" alt="2026-09-28_14-12-19" src="https://github.com/user-attachments/assets/632171ed-7d08-4deb-8388-97c2a9e36e31" />
# SQL Querying & Data Filtering Analysis: City Library Database

## Project Overview
This project contains a comprehensive set of SQL queries designed to inspect, filter, and analyze data within the `city_library` database using MySQL Workbench[cite: 1, 2]. The exercises demonstrate foundational to intermediate SQL querying techniques, including column aliasing, comparison operators, multi-condition logical operations, and pattern matching with wildcards[cite: 1, 2].

---

## Database Context
The queries run against the `books` table inside the `city_library` database. 

### Schema Definition
```sql
CREATE TABLE books (
    book_id        INT PRIMARY KEY AUTO_INCREMENT,
    title          VARCHAR(200),
    author         VARCHAR(100),
    genre          VARCHAR(50),
    year_published INT,
    available      TINYINT(1),
    copies_total   INT,
    copies_on_loan INT
);
```

## Task 1: Basic Column Selection & Aliasing
```
-- Query 1: All Book Titles and Authors
SELECT 
    title AS `Book Title`, 
    author AS `Author`
FROM books;

-- Query 2: Distinct Genres Available
SELECT DISTINCT
    genre AS 'Genre'
FROM books;
```

## Task 2: Filtering with Comparison Operators
```
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
    copies_on_loan >= copies_total;

-- Query 2.3: Books Currently Unavailable
SELECT
    *
FROM
    books
WHERE 
    available = 0;
```

## Task 3: Logical Operators (AND, OR, IN)
```
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

-- Query 3.2 (Alternative syntax using IN):
SELECT 
    *
FROM 
    books
WHERE 
    genre IN ('Science')
    OR copies_total > 3;
```

## Task 4: Pattern Matching with the LIKE Operator
```
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
