-- Authors data
INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'J.K. Rowling'),
(2, 'George R.R. Martin'),
(3, 'J.R.R. Tolkien'),
(4, 'Agatha Christie'),
(5, 'Stephen King');

-- Auth_book data
INSERT INTO `auth_book` (`ISBN`, `author_id`, `edition`, `year`) VALUES
('978-0-7475-3274-3', 1, '1st', 1997),
('978-0-5531-0354-0', 2, '1st', 1996),
('978-0-5440-0341-5', 3, '1st', 1954),
('978-0-0620-7348-8', 4, '1st', 1920),
('978-1-5011-4297-0', 5, '1st', 1977);

-- Books data
INSERT INTO `books` (`title`, `ISBN`, `type`) VALUES
('Harry Potter and the Philosopher\'s Stone', '978-0-7475-3274-3', 'Fantasy'),
('A Game of Thrones', '978-0-5531-0354-0', 'Fantasy'),
('The Lord of the Rings', '978-0-5440-0341-5', 'Fantasy'),
('The Mysterious Affair at Styles', '978-0-0620-7348-8', 'Mystery'),
('The Shining', '978-1-5011-4297-0', 'Horror');

-- Book_price data
INSERT INTO `book_price` (`ISBN`, `price`) VALUES
('978-0-7475-3274-3', 20),
('978-0-5531-0354-0', 25),
('978-0-5440-0341-5', 30),
('978-0-0620-7348-8', 15),
('978-1-5011-4297-0', 18);

-- Course data
INSERT INTO `course` (`course_id`, `course_name`, `field_of_study`) VALUES
('CSC101', 'Introduction to Computer Science', 'Computer Science'),
('ENG201', 'English Literature', 'Literature'),
('HIS301', 'World History', 'History'),
('BIO101', 'Biology Basics', 'Biology'),
('PSY201', 'Psychology 101', 'Psychology'),
('MATH101', 'Calculus I', 'Mathematics'),
('PHYS201', 'Physics I', 'Physics');

-- Required_text data
INSERT INTO `required_text` (`ISBN`, `course_id`) VALUES
('978-0-7475-3274-3', 'ENG201'),
('978-0-5531-0354-0', 'ENG201'),
('978-0-5440-0341-5', 'ENG201'),
('978-0-0620-7348-8', 'ENG201'),
('978-1-5011-4297-0', 'PSY201'),
('978-1-5011-4297-0', 'MATH101');

-- User_account data
INSERT INTO `user_account` (`v_number`, `name`, `email`, `balance`) VALUES
('V00000123', 'Alice Smith', 'alice.smith@example.com', 100),
('V00000456', 'Bob Johnson', 'bob.johnson@example.com', 150),
('V00000789', 'Charlie Brown', 'charlie.brown@example.com', 200),
('V01000123', 'Diana Prince', 'diana.prince@example.com', 250),
('V01000456', 'Eve Adams', 'eve.adams@example.com', 300);

-- Transactions data
INSERT INTO `transactions` (`record_id`, `date_sold`, `ISBN`, `v_number`, `price_sold`) VALUES
(1, '2023-01-01', '978-0-7475-3274-3', 'V00000123', 20),
(2, '2023-02-01', '978-0-5531-0354-0', 'V00000456', 25),
(3, '2023-03-01', '978-0-5440-0341-5', 'V00000789', 30),
(4, '2023-04-01', '978-0-0620-7348-8', 'V01000123', 15),
(5, '2023-05-01', '978-1-5011-4297-0', 'V01000456', 18);

-- Price_record data
INSERT INTO `price_record` (`price_sold`, `seller_split`) VALUES
(20, 10),
(25, 12),
(30, 15),
(15, 7),
(18, 9);

-- Book_sale data
INSERT INTO `book_sale` (`ISBN`, `quantity`) VALUES
('978-0-7475-3274-3', 100),
('978-0-5531-0354-0', 80),
('978-0-5440-0341-5', 70),
('978-0-0620-7348-8', 50),
('978-1-5011-4297-0', 60);