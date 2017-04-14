-- creating database for Paperless Tesing System as PaperlesstesTingSystem
create database PaperlesstesTingSystem

-- start using PaperlesstesTingSystem 
use PaperlesstesTingSystem

-- endded PaperlesstesTingSystem



-- start creating users table
CREATE TABLE `users` (                   
          `id` int(11) NOT NULL AUTO_INCREMENT,
          `userid` varchar(50) NOT NULL,
          `email` varchar(50) NOT NULL,
          `fname` varchar(50) NOT NULL, 
          `lname` varchar(50) NOT NULL,
          `pwd` varchar(50) NOT NULL, 
          PRIMARY KEY (`id`)                     
) 
ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- ended creating user table 

 -- start selecting from user table endded
select * from users 
 -- selecting from user table endded
   

-- start inserting into table users

INSERT INTO `paperlesstestingsystem`.`users` (`userid`, `email`, `fname`, `lname`, `pwd`) VALUES ('aewnetu', 'abmahie@gmail.com', 'Abraham', 'Ewnetu', 'Erse098');
INSERT INTO `paperlesstestingsystem`.`users` (`userid`, `email`, `fname`, `lname`, `pwd`) VALUES ('dewnetu', 'abmahie@gmail.com', 'Dawit', 'Ewnetu', 'Erse098');
INSERT INTO `paperlesstestingsystem`.`users` (`userid`, `email`, `fname`, `lname`, `pwd`) VALUES ('mewnetu', 'abmahie@gmail.com', 'Marta', 'Ewnetu', 'Erse098');

-- ended inserting into table users