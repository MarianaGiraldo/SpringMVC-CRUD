DROP DATABASE IF EXISTS adopt_pets_db2;
CREATE DATABASE `adopt_pets_db2`;

CREATE TABLE `adopt_pets_db2`.`users` ( 
	`id` INT NOT NULL AUTO_INCREMENT,  
        `Document` VARCHAR(11) NOT NULL ,
	`Name` VARCHAR(50) NOT NULL ,  
	`PhoneNumber` VARCHAR(15) NOT NULL ,  
	`Email` VARCHAR(100) NOT NULL,
	PRIMARY KEY  (`id`)
);

CREATE TABLE `adopt_pets_db2`.`pets` ( 
	`id` INT NOT NULL AUTO_INCREMENT ,
        `Pet_type` VARCHAR(50) NOT NULL , 
	`Name` VARCHAR(50) NOT NULL ,  
	`Born_year` int NOT NULL ,  
	`Color` VARCHAR(20) NOT NULL,
        `Breed` VARCHAR(50) NOT NULL,
        `is_adopted` Boolean NOT NULL,
	PRIMARY KEY  (`id`)
) ENGINE = InnoDB;

CREATE TABLE `adopt_pets_db2`.`adoptings` ( 
	`id` INT NOT NULL AUTO_INCREMENT ,
        `user_id` INT NOT NULL , 
	`pet_id` INT NOT NULL ,  
	`date` TIMESTAMP NOT NULL ,  
	PRIMARY KEY  (`id`),
        FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
        FOREIGN KEY (`pet_id`) REFERENCES `pets`(`id`)
) ENGINE = InnoDB;
