DROP TABLE IF EXISTS `records`; 
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `books`;


CREATE TABLE `books` (
  `title` VARCHAR(50) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL PRIMARY KEY,
  `author` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `price` INT DEFAULT NULL,
  status VARCHAR(10) DEFAULT 'for sale'
);


CREATE TABLE `users` (
  `name` VARCHAR(40) DEFAULT NULL,
  `vnum` VARCHAR(40) NOT NULL PRIMARY KEY,
  `email` varchar(40) DEFAULT NULL,
  `balance` INT DEFAULT NULL
);


CREATE TABLE `records` (
  `date_sold` VARCHAR(40) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL,
  `seller_vnum` varchar(40) NOT NULL,
  `buyer_vnum` varchar(40) NOT NULL,
  `price_sold` INT DEFAULT NULL,
  FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (seller_vnum) REFERENCES users(vnum),
    FOREIGN KEY (buyer_vnum) REFERENCES users(vnum)
);


