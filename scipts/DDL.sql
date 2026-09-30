CREATE DATABASE IF NOT EXISTS macaci_utulok;
USE macaci_utulok;

DROP TABLE IF EXISTS adopters;

CREATE TABLE adopters (
    adopterID INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    catID INT NOT NULL,
    adoption_date DATE NOT NULL,
    phone_num VARCHAR(20),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS cats;

CREATE TABLE cats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender ENUM('male', 'female') NOT NULL,
    age INT NOT NULL,
    breed VARCHAR(100),
    health TEXT NOT NULL,
    cat_character TEXT NOT NULL,
    recommendations TEXT,
    date_arrival DATE NOT NULL
);

DROP TABLE IF EXISTS inventory;

CREATE TABLE inventory (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    quantity DECIMAL(10,2) NOT NULL,
    unit VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS veterinarians;

CREATE TABLE veterinarians (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    work_duration VARCHAR(50) NOT NULL,
    cats TEXT NOT NULL
);