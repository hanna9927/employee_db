CREATE DATABASE company_db;
USE company_db;
SHOW DATABASES;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT,
    location_name VARCHAR(100)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    gender CHAR(1),
    age INT,
    hire_date DATE,
    department_id INT,
    location_id INT
);
SHOW TABLES;
INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');
INSERT INTO Location
(location_id, location_name)
VALUES
(1, 'Kochi'),
(2, 'Bangalore'),
(3, 'Chennai'),
(4, 'Hyderabad');
INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, department_id, location_id)
VALUES
(101, 'Hanna', 'F', 23, '2026-01-10', 1, 1),
(102, 'Akhil', 'M', 25, '2025-06-15', 2, 2),
(103, 'Sara', 'F', 24, '2025-08-20', 3, 3),
(104, 'Rahul', 'M', 28, '2024-11-05', 4, 4);
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
ADD designation VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(255);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
DESCRIBE Employees;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;
TRUNCATE TABLE Employees;
SELECT * FROM Employees;
DROP TABLE Employees;
SHOW TABLES;
DROP DATABASE company_db;
SHOW DATABASES;
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
INSERT INTO Departments
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');
INSERT INTO Location
(location_name)
VALUES
('Kochi'),
('Bangalore'),
('Chennai'),
('Hyderabad');
INSERT INTO Employees
(employee_id, employee_name, gender, age, department_id, location_id)
VALUES
(101, 'Hanna', 'F', 23, 1, 1),
(102, 'Akhil', 'M', 25, 2, 2),
(103, 'Sara', 'F', 24, 3, 3),
(104, 'Rahul', 'M', 28, 4, 4);
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;