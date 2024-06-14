DROP TABLE IF EXISTS `records`; 
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `books`;


CREATE TABLE `books` (
  `title` VARCHAR(50) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL PRIMARY KEY,
  `author` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `price` INT DEFAULT NULL,
  `status` VARCHAR(10) DEFAULT 'for sale' -- Added `` to status. Is this correct? - alex
    -- `subtextID` ?
);


CREATE TABLE `users` (
  `name` VARCHAR(40) DEFAULT NULL,
  `vnum` VARCHAR(40) NOT NULL PRIMARY KEY,
  `email` varchar(40) DEFAULT NULL,
  `balance` INT DEFAULT NULL
  -- `isAdmin` ?
);

-- Change to transactions
CREATE TABLE `records` (
  `date_sold` VARCHAR(40) DEFAULT NULL,
  `ISBN` VARCHAR(15) NOT NULL, -- potentially remove?
  `seller_vnum` varchar(40) NOT NULL,
  `buyer_vnum` varchar(40) NOT NULL,
  `price_sold` INT DEFAULT NULL,
  -- `recordID` ?
    -- `subtextID` ?
  FOREIGN KEY (ISBN) REFERENCES books(ISBN),
    FOREIGN KEY (seller_vnum) REFERENCES users(vnum),
    FOREIGN KEY (buyer_vnum) REFERENCES users(vnum)
);

-- CREATE TABLE `records` (
  -- `ISBN` VARCHAR(40) DEFAULT NULL,
  -- `subtextID` varchar(40) NOT NULL,


