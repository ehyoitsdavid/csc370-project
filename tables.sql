-- Drop in reverse order of creating the tables
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS user_account;
DROP TABLE IF EXISTS required_text;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS auth_book;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

-- Order of creation is important so that we have the appropriate foreign key references
CREATE TABLE `authors` (
    `author_id` INT NOT NULL PRIMARY KEY,
    `author_name` VARCHAR(20) DEFAULT NULL
);

CREATE TABLE `books` (
    `book_id` INT NOT NULL PRIMARY KEY, 
    `title` VARCHAR(50) DEFAULT NULL,
    `type` VARCHAR(15) NOT NULL
);

CREATE TABLE `auth_book` (
    `ISBN` VARCHAR(20) NOT NULL PRIMARY KEY,
    `author_id` INT NOT NULL,
    `book_id` INT NOT NULL,
    `edition` VARCHAR(15) NOT NULL,
    `year` INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

CREATE TABLE `course` (
    `course_id` VARCHAR(10) NOT NULL PRIMARY KEY,
    `course_name` VARCHAR(40) NOT NULL,
    `field_of_study` VARCHAR(30) DEFAULT NULL
);

CREATE TABLE `required_text` (
    `ISBN` VARCHAR(20) NOT NULL,
    `course_id` VARCHAR(10) NOT NULL,
    PRIMARY KEY (ISBN, course_id),
    FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE `user_account` (
    `v_number` VARCHAR(10) NOT NULL PRIMARY KEY,
    `name` VARCHAR(40) DEFAULT NULL,
    `email` varchar(40) DEFAULT NULL,
    `balance` INT DEFAULT NULL
);

CREATE TABLE `orders` (
    `order_id` INT NOT NULL PRIMARY KEY,
    `v_number` VARCHAR(10) NOT NULL,
    `date_sold` DATE NOT NULL,
    `total_order_price` INT NOT NULL, 
    FOREIGN KEY (v_number) REFERENCES user_account(v_number)
);

CREATE TABLE `transactions` (
    `transaction_id` INT NOT NULL PRIMARY KEY,
    `order_id` INT NOT NULL,
    `ISBN` VARCHAR(20) NOT NULL,
    `v_number` VARCHAR(10) NOT NULL,
    `quantity` INT NOT NULL,
    `price_per_copy` INT NOT NULL,
    `total_price` INT NOT NULL, 
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN),
    FOREIGN KEY (v_number) REFERENCES user_account(v_number)
);

CREATE TABLE `inventory`(
    `inventory_id` INT NOT NULL PRIMARY KEY,
    `ISBN` VARCHAR(20) NOT NULL,
    `transaction_id` INT NOT NULL,
    `v_number` VARCHAR(10) NOT NULL,
    `date_entered` DATE NOT NULL,
    `quantity` INT NOT NULL,
    `sell_price_per_copy` INT NOT NULL, 
    FOREIGN KEY (ISBN) REFERENCES auth_book(ISBN),
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id),
    FOREIGN KEY (v_number) REFERENCES user_account(v_number)
)




