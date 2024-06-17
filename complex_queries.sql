

-- -- Show average price of all authors who have published a book after 1990 and has an average book cost greater than $20

-- SELECT 
--     a.author_name, 
--     AVG(bp.price) AS avg_price, 
--     COUNT(ab.ISBN) AS total_books
-- FROM 
--     authors a
-- JOIN 
--     auth_book ab ON a.author_id = ab.author_id
-- JOIN 
--     book_price bp ON ab.ISBN = bp.ISBN
-- WHERE 
--     ab.year > 1990
-- GROUP BY 
--     a.author_name
-- HAVING 
--     AVG(bp.price) > 20
-- ORDER BY 
--     avg_price DESC;


-- Show all books that are required for more than one course
SELECT
    b.title AS book_title,
    b.ISBN,
    GROUP_CONCAT(c.course_name ORDER BY c.course_name SEPARATOR ', ') AS courses
FROM
    required_text rt
JOIN
    books b ON rt.ISBN = b.ISBN
JOIN
    course c ON rt.course_id = c.course_id
GROUP BY
    b.ISBN
HAVING
    COUNT(c.course_id) > 1
ORDER BY
    b.title;

-- Shows all textbooks with prices above the average price of all books
SELECT 
    c.course_id,
    c.course_name,
    AVG(bp.price) AS avg_book_price,
    COUNT(rt.ISBN) AS num_textbooks
FROM 
    course c
JOIN 
    required_text rt ON c.course_id = rt.course_id
JOIN 
    book_price bp ON rt.ISBN = bp.ISBN
WHERE 
    bp.price < (
        SELECT AVG(price)
        FROM book_price
    )
GROUP BY 
    c.course_id, c.course_name
ORDER BY 
    avg_book_price DESC;






-- Updates all books prices by +10% published after the year 1990

UPDATE book_price bp
SET bp.price = bp.price * 1.1 
WHERE EXISTS (
    SELECT 1
    FROM auth_book ab
    JOIN books b ON ab.ISBN = b.ISBN
    WHERE ab.year > 1990
    AND ab.ISBN = bp.ISBN
);
-- Display's avg price of books after 1990
SELECT AVG(bp.price) AS average_book_price
FROM auth_book ab
JOIN book_price bp ON ab.ISBN = bp.ISBN
WHERE ab.year > 1990;
