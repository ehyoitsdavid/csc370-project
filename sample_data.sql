-- USE "Database Name"

SET FOREIGN_KEY_CHECKS = 0;

-- Removes all rows from the specified table
TRUNCATE TABLE inventory;
TRUNCATE TABLE transactions;
TRUNCATE TABLE orders;
TRUNCATE TABLE user_account;
TRUNCATE TABLE required_text;
TRUNCATE TABLE course;
TRUNCATE TABLE auth_book;
TRUNCATE TABLE books;
TRUNCATE TABLE authors;

SET FOREIGN_KEY_CHECKS = 1;

-- Authors data -- 30 entries 
INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'J.R.R. Tolkien'),
(4, 'Agatha Christie'),
(5, 'Stephen King'),
(6, 'Jane Austen'),
(7, 'Ernest Hemingway'),
(8, 'Leo Tolstoy'),
(9, 'F. Scott Fitzgerald'),
(10, 'Emily Brontë'),
(11, 'Mark Twain'),
(12, 'Charles Dickens'),
(13, 'Harper Lee'),
(14, 'Virginia Woolf'),
(15, 'Oscar Wilde'),
(16, 'Gabriel García Márquez'),
(17, 'Margaret Atwood'),
(18, 'Herman Melville'),
(19, 'Franz Kafka'),
(20, 'John Steinbeck'),
(21, 'Toni Morrison'),
(22, 'Mary Shelley'),
(23, 'Arthur Conan Doyle'),
(24, 'H.G. Wells'),
(25, 'Victor Hugo'),
(26, 'Albert Camus'),
(27, 'Chinua Achebe'),
(28, 'Dante Alighieri'),
(29, 'Yukio Mishima'),
(30, 'H.P. Lovecraft'); 

-- Books data -- 50 entries 
INSERT INTO `books` (`book_id`, `title`, `type`) VALUES
(1, 'Introduction to Algorithms', 'Hardcover'),
(2, 'Database System Concepts', 'Paperback'),
(3, 'Operating System Concepts', 'Hardcover'),
(4, 'Artificial Intelligence: A Modern Approach', 'Paperback'),
(5, 'Computer Networking: A Top-Down Approach', 'Hardcover'),
(6, 'Discrete Mathematics and Its Applications', 'Paperback'),
(7, 'Software Engineering', 'Hardcover'),
(8, 'Computer Organization and Design', 'Paperback'),
(9, 'Data Structures and Algorithms in Java', 'Hardcover'),
(10, 'Principles of Compiler Design', 'Paperback'),
(11, 'Linear Algebra and Its Applications', 'Hardcover'),
(12, 'Probability and Statistics for Engineering and the Sciences', 'Paperback'),
(13, 'Introduction to the Theory of Computation', 'Hardcover'),
(14, 'Fundamentals of Digital Logic with Verilog Design', 'Paperback'),
(15, 'Artificial Intelligence: A Guide for Thinking Humans', 'Hardcover'),
(16, 'Computer Security: Principles and Practice', 'Paperback'),
(17, 'Introduction to Cryptography with Coding Theory', 'Hardcover'),
(18, 'Machine Learning', 'Paperback'),
(19, 'Modern Operating Systems', 'Hardcover'),
(20, 'Database Management Systems', 'Paperback'),
(21, 'Fundamentals of Algorithmics', 'Hardcover'),
(22, 'Computer Graphics: Principles and Practice', 'Paperback'),
(23, 'Introduction to Automata Theory, Languages, and Computation', 'Hardcover'),
(24, 'Compilers: Principles, Techniques, and Tools', 'Paperback'),
(25, 'Software Engineering: A Practitioner''s Approach', 'Hardcover'),
(26, 'Computer Networks', 'Paperback'),
(27, 'Numerical Methods for Engineers', 'Hardcover'),
(28, 'Data Mining: Concepts and Techniques', 'Paperback'),
(29, 'Pattern Recognition and Machine Learning', 'Hardcover'),
(30, 'Information Retrieval: Algorithms and Heuristics', 'Paperback'),
(31, 'Operating Systems: Internals and Design Principles', 'Hardcover'),
(32, 'Digital Design: Principles and Practices', 'Paperback'),
(33, 'Artificial Intelligence and Machine Learning for Business', 'Hardcover'),
(34, 'Introduction to Embedded Systems', 'Paperback'),
(35, 'Computer Architecture: A Quantitative Approach', 'Hardcover'),
(36, 'Introduction to Information Retrieval', 'Paperback'),
(37, 'Advanced Data Structures', 'Hardcover'),
(38, 'Theory of Computation', 'Paperback'),
(39, 'Programming Languages: Principles and Paradigms', 'Hardcover'),
(40, 'Robotics: Modelling, Planning and Control', 'Paperback'),
(41, 'Computer Systems: A Programmer''s Perspective', 'Hardcover'),
(42, 'Software Engineering: Theory and Practice', 'Paperback'),
(43, 'Principles of Concurrent and Distributed Programming', 'Hardcover'),
(44, 'Fundamentals of Parallel Processing', 'Paperback'),
(45, 'Introduction to Database Systems', 'Hardcover'),
(46, 'Computer Vision: Algorithms and Applications', 'Paperback'),
(47, 'Algorithm Design', 'Hardcover'),
(48, 'Digital Signal Processing', 'Paperback'),
(49, 'Information Security: Principles and Practice', 'Hardcover'),
(50, 'Introduction to Machine Learning', 'Paperback');

-- Auth_book data -- 50 entries 
-- Made sure to match FKs in authors (author_id) and books (book_id)
INSERT INTO `auth_book` (`ISBN`, `author_id`, `book_id`, `edition`, `year`) VALUES
('978-0-2620-3384-8', 1, 1, '4th', 2009),
('978-0-1334-0737-2', 2, 2, '6th', 2010),
('978-0-1360-0663-3', 3, 3, '8th', 2014),
('978-0-1343-9073-4', 4, 4, '50th', 2015),
('978-0-1335-9414-0', 5, 5, '7th', 2017),
('978-0-3211-2521-7', 6, 6, '7th', 2006),
('978-0-1382-0666-4', 7, 7, '10th', 2014),
('978-0-1237-4750-9', 8, 8, '5th', 2013),
('978-0-4703-8327-9', 9, 9, '6th', 2018),
('978-0-1360-8620-4', 10, 10, '2nd', 2006),
('978-0-3217-5104-1', 11, 11, '5th', 2016),
('978-0-5349-5097-2', 12, 12, '9th', 2016),
('978-1-1333-5941-4', 13, 13, '3rd', 2012),
('978-0-1319-8751-3', 14, 14, '2nd', 2009),
('978-0-5218-6571-6', 15, 15, '1st', 2019),
('978-0-1327-7565-4', 16, 16, '3rd', 2014),
('978-0-1318-6900-7', 17, 17, '2nd', 2006),
('978-0-3217-9698-1', 18, 18, '1st', 2009),
('978-0-1335-9349-5', 19, 19, '4th', 2014),
('978-0-0733-5233-2', 20, 20, '3rd', 2011),
('978-3-5407-7628-9', 21, 21, '3rd', 2005),
('978-1-1331-8823-5', 22, 22, '3rd', 2013),
('978-1-1333-1347-7', 23, 23, '3rd', 2006),
('978-0-1359-0109-7', 24, 24, '2nd', 2006),
('978-0-3219-0294-5', 25, 25, '9th', 2010),
('978-0-0733-5263-2', 26, 26, '6th', 2013),
('978-0-0734-0439-2', 27, 27, '7th', 2009),
('978-1-5586-0702-3', 28, 28, '3rd', 2011),
('978-0-1351-7161-8', 29, 29, '1st', 2018),
('978-1-1333-6295-1', 30, 30, '2nd', 2009),
('978-0-2215-6295-1', 1, 31, '2nd', 2009),
('978-0-4123-8371-1', 2, 32, '6th', 2010),
('978-0-6323-8064-1', 3, 33, '8th', 2014),
('978-0-8234-5793-4', 4, 34, '3rd', 2015),
('978-0-3653-8383-3', 5, 35, '6th', 2017),
('978-0-4895-8337-1', 6, 36, '8th', 2018),
('978-1-3242-1234-7', 7, 37, '2nd', 2016),
('978-0-1267-3652-1', 8, 38, '4th', 2015),
('978-0-6781-3672-3', 9, 39, '5th', 2019),
('978-0-2543-2833-8', 10, 40, '9th', 2010),
('978-1-3211-3271-1', 11, 41, '1st', 2021),
('978-0-5321-9271-5', 12, 42, '7th', 2017),
('978-0-8324-9273-9', 13, 43, '3rd', 2018),
('978-1-3423-4747-3', 14, 44, '5th', 2014),
('978-0-1235-9373-8', 15, 45, '4th', 2016),
('978-0-2423-2943-3', 16, 46, '1st', 2020),
('978-0-7343-8273-3', 17, 47, '7th', 2018),
('978-0-1123-2971-3', 18, 48, '8th', 2019),
('978-1-2321-2372-9', 19, 49, '9th', 2011),
('978-0-7342-8392-1', 20, 50, '2nd', 2020);

-- Course data -- 15 entries 
INSERT INTO `course` (`course_id`, `course_name`, `field_of_study`) VALUES
('CSC102', 'Data Structures and Algorithms', 'Computer Science'),
('CSC203', 'Database Management Systems', 'Computer Science'),
('ENG202', 'American Literature', 'Literature'),
('ENG203', 'Shakespearean Studies', 'Literature'),
('HIS302', 'European History', 'History'),
('HIS303', 'Ancient Civilizations', 'History'),
('BIO102', 'Genetics', 'Biology'),
('BIO201', 'Anatomy and Physiology', 'Biology'),
('PSY202', 'Abnormal Psychology', 'Psychology'),
('PSY203', 'Cognitive Psychology', 'Psychology'),
('MATH102', 'Linear Algebra', 'Mathematics'),
('MATH201', 'Statistics', 'Mathematics'),
('PHYS202', 'Physics II', 'Physics'),
('PHYS203', 'Quantum Mechanics', 'Physics'),
('CHEM101', 'General Chemistry', 'Chemistry');

-- Required_text data -- 30 entries 
-- Made sure to match FKs in auth_book (ISBN) and course (course_id)
INSERT INTO required_text (ISBN, course_id) VALUES 
('978-0-2620-3384-8', 'CSC102'),
('978-0-1334-0737-2', 'CSC102'),
('978-0-1360-0663-3', 'CSC203'),
('978-0-1343-9073-4', 'CSC203'),
('978-0-1335-9414-0', 'ENG202'),
('978-0-3211-2521-7', 'ENG202'),
('978-0-1382-0666-4', 'ENG203'),
('978-0-1237-4750-9', 'ENG203'),
('978-0-4703-8327-9', 'HIS302'),
('978-0-1360-8620-4', 'HIS302'),
('978-0-3217-5104-1', 'HIS303'),
('978-0-5349-5097-2', 'HIS303'),
('978-1-1333-5941-4', 'BIO102'),
('978-0-1319-8751-3', 'BIO102'),
('978-0-5218-6571-6', 'BIO201'),
('978-0-1327-7565-4', 'BIO201'),
('978-0-1318-6900-7', 'PSY202'),
('978-0-3217-9698-1', 'PSY202'),
('978-0-1335-9349-5', 'PSY203'),
('978-0-0733-5233-2', 'PSY203'),
('978-3-5407-7628-9', 'MATH102'),
('978-1-1331-8823-5', 'MATH102'),
('978-1-1333-1347-7', 'MATH201'),
('978-0-1359-0109-7', 'MATH201'),
('978-0-3219-0294-5', 'PHYS202'),
('978-0-0733-5263-2', 'PHYS202'),
('978-0-0734-0439-2', 'PHYS203'),
('978-1-5586-0702-3', 'PHYS203'),
('978-0-1351-7161-8', 'CHEM101'),
('978-1-1333-6295-1', 'CHEM101');

-- User_account data -- 33 entries 
INSERT INTO `user_account` (`v_number`, `name`, `email`, `balance`) VALUES
('V00000123', 'Alice Smith', 'alice.smith@example.com', 10),
('V00000456', 'Bob Johnson', 'bob.johnson@example.com', 20),
('V00000789', 'Charlie Brown', 'charlie.brown@example.com', 30),
('V01000123', 'Diana Prince', 'diana.prince@example.com', 40),
('V01000456', 'Eve Adams', 'eve.adams@example.com', 50),
('V01000789', 'Frank Miller', 'frank.miller@example.com', 60),
('V02000123', 'Grace Taylor', 'grace.taylor@example.com', 70),
('V02000456', 'Henry Young', 'henry.young@example.com', 80),
('V02000789', 'Ivy Lee', 'ivy.lee@example.com', 90),
('V03000123', 'Jack Davis', 'jack.davis@example.com', 100),
('V03000456', 'Kelly Green', 'kelly.green@example.com', 10),
('V03000789', 'Leo Martinez', 'leo.martinez@example.com', 20),
('V04000123', 'Mia Campbell', 'mia.campbell@example.com', 30),
('V04000456', 'Noah Hill', 'noah.hill@example.com', 40),
('V04000789', 'Olivia Wright', 'olivia.wright@example.com', 50),
('V05000123', 'Peter Allen', 'peter.allen@example.com', 60),
('V05000456', 'Quinn Scott', 'quinn.scott@example.com', 70),
('V05000789', 'Rose Baker', 'rose.baker@example.com', 80),
('V06000123', 'Samuel Reed', 'samuel.reed@example.com', 90),
('V06000456', 'Tina King', 'tina.king@example.com', 100),
('V06000789', 'Uma Hill', 'uma.hill@example.com', 10),
('V07000123', 'Victor White', 'victor.white@example.com', 20),
('V07000456', 'Wendy Moore', 'wendy.moore@example.com', 30),
('V07000789', 'Xavier Brown', 'xavier.brown@example.com', 40),
('V08000123', 'Yvonne Lopez', 'yvonne.lopez@example.com', 50),
('V08000456', 'Zack Clark', 'zack.clark@example.com', 60),
('V08000789', 'Amy Turner', 'amy.turner@example.com', 70),
('V09000123', 'Benjamin Hall', 'benjamin.hall@example.com', 80),
('V09000456', 'Chloe Parker', 'chloe.parker@example.com', 90),
('V09000789', 'David Scott', 'david.scott@example.com', 100),
('V10000123', 'Emma Hill', 'emma.hill@example.com', 10),
('V10000456', 'Fiona Harris', 'fiona.harris@example.com', 20),
('V10000789', 'George Adams', 'george.adams@example.com', 30);

-- Orders data -- 50 entries 
-- Made sure to match FKs in user_account (v_number)
INSERT INTO `orders` (`order_id`, `v_number`, `date_sold`, `total_order_price`) VALUES
(1, 'V00000123', '2024-06-01', 150),
(2, 'V00000456', '2024-06-02', 200),
(3, 'V00000789', '2024-06-03', 100),
(4, 'V01000123', '2024-06-04', 140),
(5, 'V01000456', '2024-06-05', 180),
(6, 'V01000789', '2024-06-06', 160),
(7, 'V02000123', '2024-06-07', 170),
(8, 'V02000456', '2024-06-08', 190),
(9, 'V02000789', '2024-06-09', 150),
(10, 'V03000123', '2024-06-10', 100),
(11, 'V03000456', '2024-06-11', 120),
(12, 'V03000789', '2024-06-12', 130),
(13, 'V04000123', '2024-06-13', 180),
(14, 'V04000456', '2024-06-14', 140),
(15, 'V04000789', '2024-06-15', 170),
(16, 'V05000123', '2024-06-16', 110),
(17, 'V05000456', '2024-06-17', 200),
(18, 'V05000789', '2024-06-18', 190),
(19, 'V06000123', '2024-06-19', 120),
(20, 'V06000456', '2024-06-20', 130),
(21, 'V07000123', '2024-06-21', 100),
(22, 'V07000456', '2024-06-22', 150),
(23, 'V07000789', '2024-06-23', 120),
(24, 'V08000123', '2024-06-24', 140),
(25, 'V08000456', '2024-06-25', 170),
(26, 'V08000789', '2024-06-26', 160),
(27, 'V09000123', '2024-06-27', 110),
(28, 'V09000456', '2024-06-28', 190),
(29, 'V09000789', '2024-06-29', 130),
(30, 'V10000123', '2024-06-30', 150),
(31, 'V10000456', '2024-07-01', 180),
(32, 'V10000789', '2024-07-02', 100),
(33, 'V00000123', '2024-07-03', 120),
(34, 'V00000456', '2024-07-04', 130),
(35, 'V00000789', '2024-07-05', 110),
(36, 'V01000123', '2024-07-06', 190),
(37, 'V01000456', '2024-07-07', 140),
(38, 'V01000789', '2024-07-08', 170),
(39, 'V02000123', '2024-07-09', 150),
(40, 'V02000456', '2024-07-10', 100),
(41, 'V02000789', '2024-07-11', 130),
(42, 'V03000123', '2024-07-12', 120),
(43, 'V03000456', '2024-07-13', 160),
(44, 'V03000789', '2024-07-14', 140),
(45, 'V04000123', '2024-07-15', 180),
(46, 'V04000456', '2024-07-16', 110),
(47, 'V04000789', '2024-07-17', 190),
(48, 'V05000123', '2024-07-18', 150),
(49, 'V05000456', '2024-07-19', 130),
(50, 'V05000789', '2024-07-20', 160);

-- Transactions data -- 50 entries 
-- Made sure to match FKs in orders (order_id), auth_book (ISBN), and user_account (v_number)
INSERT INTO `transactions` (`transaction_id`, `order_id`, `ISBN`, `v_number`, `quantity`, `price_per_copy`, `total_price`)
VALUES
(1, 1, '978-0-2620-3384-8', 'V00000123', 2, 50, 100),
(2, 2, '978-0-1334-0737-2', 'V00000456', 1, 100, 100),
(3, 3, '978-0-1360-0663-3', 'V00000789', 3, 30, 90),
(4, 4, '978-0-1343-9073-4', 'V01000123', 1, 40, 40),
(5, 5, '978-0-1335-9414-0', 'V01000456', 2, 60, 120),
(6, 6, '978-0-3211-2521-7', 'V01000789', 1, 70, 70),
(7, 7, '978-0-1382-0666-4', 'V02000123', 4, 20, 80),
(8, 8, '978-0-1237-4750-9', 'V02000456', 1, 80, 80),
(9, 9, '978-0-4703-8327-9', 'V02000789', 3, 30, 90),
(10, 10, '978-0-1360-8620-4', 'V03000123', 2, 50, 100),
(11, 11, '978-0-3217-5104-1', 'V03000456', 1, 60, 60),
(12, 12, '978-0-5349-5097-2', 'V03000789', 3, 30, 90),
(13, 13, '978-1-1333-5941-4', 'V04000123', 1, 70, 70),
(14, 14, '978-0-1319-8751-3', 'V04000456', 2, 40, 80),
(15, 15, '978-0-5218-6571-6', 'V04000789', 3, 30, 90),
(16, 16, '978-0-1327-7565-4', 'V05000123', 1, 50, 50),
(17, 17, '978-0-1318-6900-7', 'V05000456', 2, 60, 120),
(18, 18, '978-0-3217-9698-1', 'V05000789', 3, 30, 90),
(19, 19, '978-0-1335-9349-5', 'V06000123', 1, 70, 70),
(20, 20, '978-0-0733-5233-2', 'V06000456', 2, 80, 160),
(21, 21, '978-3-5407-7628-9', 'V06000789', 3, 30, 90),
(22, 22, '978-1-1331-8823-5', 'V07000123', 1, 50, 50),
(23, 23, '978-1-1333-1347-7', 'V07000456', 2, 60, 120),
(24, 24, '978-0-1359-0109-7', 'V07000789', 3, 30, 90),
(25, 25, '978-0-3219-0294-5', 'V08000123', 1, 70, 70),
(26, 26, '978-0-0733-5233-2', 'V08000456', 2, 80, 160),
(27, 27, '978-0-0734-0439-2', 'V08000789', 3, 30, 90),
(28, 28, '978-1-5586-0702-3', 'V09000123', 1, 50, 50),
(29, 29, '978-0-1351-7161-8', 'V09000456', 2, 60, 120),
(30, 30, '978-1-1333-6295-1', 'V09000789', 3, 30, 90),
(31, 31, '978-0-2215-6295-1', 'V10000123', 1, 70, 70),
(32, 32, '978-0-4123-8371-1', 'V10000456', 2, 80, 160),
(33, 33, '978-0-6323-8064-1', 'V10000789', 3, 30, 90),
(34, 1, '978-0-8234-5793-4', 'V00000123', 2, 50, 100),
(35, 2, '978-0-3653-8383-3', 'V00000456', 1, 100, 100),
(36, 3, '978-0-4895-8337-1', 'V00000789', 3, 30, 90),
(37, 4, '978-1-3242-1234-7', 'V01000123', 1, 40, 40),
(38, 5, '978-0-1267-3652-1', 'V01000456', 2, 60, 120),
(39, 6, '978-0-6781-3672-3', 'V01000789', 1, 70, 70),
(40, 7, '978-0-2543-2833-8', 'V02000123', 4, 20, 80),
(41, 8, '978-1-3211-3271-1', 'V02000456', 1, 80, 80),
(42, 9, '978-0-5321-9271-5', 'V02000789', 3, 30, 90),
(43, 10, '978-0-8324-9273-9', 'V03000123', 2, 50, 100),
(44, 11, '978-1-3423-4747-3', 'V03000456', 1, 60, 60),
(45, 12, '978-0-1235-9373-8', 'V03000789', 3, 30, 90),
(46, 13, '978-0-2423-2943-3', 'V04000123', 1, 70, 70),
(47, 14, '978-0-7343-8273-3', 'V04000456', 2, 40, 80),
(48, 15, '978-0-1123-2971-3', 'V04000789', 3, 30, 90),
(49, 16, '978-1-2321-2372-9', 'V05000123', 1, 50, 50),
(50, 17, '978-0-7342-8392-1', 'V05000456', 2, 60, 120);

-- Inventory data -- 50 entries 
-- Made sure to match FKs in transactions auth_book (ISBN), (transaction_id), and user_account (v_number)
INSERT INTO `inventory` (`inventory_id`, `ISBN`, `transaction_id`, `v_number`, `date_entered`, `quantity`, `sell_price_per_copy`)
VALUES
(1, '978-0-2620-3384-8', 1, 'V00000123', '2024-06-01', 2, 50),
(2, '978-0-1334-0737-2', 2, 'V00000456', '2024-06-02', 1, 100),
(3, '978-0-1360-0663-3', 3, 'V00000789', '2024-06-03', 3, 30),
(4, '978-0-1343-9073-4', 4, 'V01000123', '2024-06-04', 1, 40),
(5, '978-0-1335-9414-0', 5, 'V01000456', '2024-06-05', 2, 60),
(6, '978-0-3211-2521-7', 6, 'V01000789', '2024-06-06', 1, 70),
(7, '978-0-1382-0666-4', 7, 'V02000123', '2024-06-07', 4, 20),
(8, '978-0-1237-4750-9', 8, 'V02000456', '2024-06-08', 1, 80),
(9, '978-0-4703-8327-9', 9, 'V02000789', '2024-06-09', 3, 30),
(10, '978-0-1360-8620-4', 10, 'V03000123', '2024-06-10', 2, 50),
(11, '978-0-3217-5104-1', 11, 'V03000456', '2024-06-11', 1, 60),
(12, '978-0-5349-5097-2', 12, 'V03000789', '2024-06-12', 3, 30),
(13, '978-1-1333-5941-4', 13, 'V04000123', '2024-06-13', 1, 70),
(14, '978-0-1319-8751-3', 14, 'V04000456', '2024-06-14', 2, 40),
(15, '978-0-5218-6571-6', 15, 'V04000789', '2024-06-15', 3, 30),
(16, '978-0-1327-7565-4', 16, 'V05000123', '2024-06-16', 1, 50),
(17, '978-0-1318-6900-7', 17, 'V05000456', '2024-06-17', 2, 60),
(18, '978-0-3217-9698-1', 18, 'V05000789', '2024-06-18', 3, 30),
(19, '978-0-1335-9349-5', 19, 'V06000123', '2024-06-19', 1, 70),
(20, '978-0-0733-5233-2', 20, 'V06000456', '2024-06-20', 2, 80),
(21, '978-3-5407-7628-9', 21, 'V06000789', '2024-07-21', 3, 30),
(22, '978-1-1331-8823-5', 22, 'V07000123', '2024-07-22', 4, 270),
(23, '978-1-1333-1347-7', 23, 'V07000456', '2024-07-23', 5, 280),
(24, '978-0-1359-0109-7', 24, 'V07000789', '2024-07-24', 3, 290),
(25, '978-0-3219-0294-5', 25, 'V08000123', '2024-07-25', 7, 300),
(26, '978-0-0733-5233-2', 26, 'V08000456', '2024-07-26', 2, 310),
(27, '978-0-0734-0439-2', 27, 'V08000789', '2024-07-27', 4, 320),
(28, '978-1-5586-0702-3', 28, 'V09000123', '2024-07-28', 5, 330),
(29, '978-0-1351-7161-8', 29, 'V09000456', '2024-07-29', 6, 340),
(30, '978-1-1333-6295-1', 30, 'V09000789', '2024-07-30', 3, 350),
(31, '978-0-2215-6295-1', 31, 'V10000123', '2024-07-31', 8, 360),
(32, '978-0-4123-8371-1', 32, 'V10000456', '2024-08-01', 2, 370),
(33, '978-0-6323-8064-1', 33, 'V10000789', '2024-08-02', 5, 380),
(34, '978-0-8234-5793-4', 34, 'V00000123', '2024-08-03', 6, 390),
(35, '978-0-3653-8383-3', 35, 'V00000456', '2024-08-04', 3, 400),
(36, '978-0-4895-8337-1', 36, 'V00000789', '2024-08-05', 4, 410),
(37, '978-1-3242-1234-7', 37, 'V01000123', '2024-08-06', 7, 420),
(38, '978-0-1267-3652-1', 38, 'V01000456', '2024-08-07', 2, 430),
(39, '978-0-6781-3672-3', 39, 'V01000789', '2024-08-08', 5, 440),
(40, '978-0-2543-2833-8', 40, 'V02000123', '2024-08-09', 6, 450),
(41, '978-1-3211-3271-1', 41, 'V02000456', '2024-08-10', 3, 460),
(42, '978-0-5321-9271-5', 42, 'V02000789', '2024-08-11', 4, 470),
(43, '978-0-8324-9273-9', 43, 'V03000123', '2024-08-12', 7, 480),
(44, '978-1-3423-4747-3', 44, 'V03000456', '2024-08-13', 2, 490),
(45, '978-0-1235-9373-8', 45, 'V03000789', '2024-08-14', 5, 500),
(46, '978-0-2423-2943-3', 46, 'V04000123', '2024-08-15', 6, 510),
(47, '978-0-7343-8273-3', 47, 'V04000456', '2024-08-16', 3, 520),
(48, '978-0-1123-2971-3', 48, 'V04000789', '2024-08-17', 4, 530),
(49, '978-1-2321-2372-9', 49, 'V05000123', '2024-08-18', 7, 540),
(50, '978-0-7342-8392-1', 50, 'V05000456', '2024-08-19', 2, 550);
