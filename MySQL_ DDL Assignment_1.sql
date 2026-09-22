CREATE DATABASE Employee_database;
USE Employee_database;
SHOW DATABASES;
CREATE TABLE  Departments
	(Department_id INT PRIMARY KEY , Department_name VARCHAR(100) NOT NULL UNIQUE);
CREATE TABLE Location	
	(Location_id INT PRIMARY KEY AUTO_INCREMENT, Location VARCHAR(30) NOT NULL UNIQUE);
CREATE TABLE  Employees
	(Employee_id INT PRIMARY KEY, Employee_name VARCHAR(50) NOT NULL, Gender ENUM('M','F'), 
	Age INT CHECK(Age >=18), Hire_date DATE DEFAULT (CURRENT_DATE), Designation VARCHAR(100), Department_id INT, Location_id INT, Salary DECIMAL(10,2),
	FOREIGN KEY (Department_id) REFERENCES Departments(Department_id),
    FOREIGN KEY (Location_id) REFERENCES Location(Location_id));
SHOW TABLES;
DESC Employees;
DESC Departments;
DESC Location;
INSERT INTO Departments (Department_id, Department_name) 
	VALUES(1, 'Data & Analytics'),
	(2, 'Engineering'),
	(3, 'Human Resources'),
	(4, 'IT & Infrastructure'),
	(5, 'Marketing');
INSERT INTO Location (Location_id, Location) 
	VALUES(10, 'Kochi'),
	(11, 'Bangalore'),
	(12, 'Chennai'),
	(13, 'Mumbai'),
	(14, 'Delhi');
INSERT INTO Employees(Employee_id, Employee_name, Gender, Age, Hire_date, Designation, Department_id, Location_id, Salary)
VALUES(101, 'Arjun Nair', 'M', 25, '2024-03-15', 'Data Analyst', 1, 10, 55000.00),
(102, 'Sneha George', 'F', 26, '2023-08-22', 'Software Engineer', 2, 10, 68000.00),
(103, 'Rahul Pillai', 'M', 23, '2025-01-10', 'Data Analyst Freshers', 1, 12, 35000.00),
(104, 'Riya Mathew', 'F', 27, '2022-11-05', 'Senior HR Specialist', 3, 11, 62000.00),
(105, 'Devan Silva', 'M', 26, '2024-06-01', 'DevOps Engineer', 2, 10, 75000.00),
(106, 'Anjali Menon', 'F', 24, '2025-05-18', 'Business Analyst', 1, 10, 48000.00),
(107, 'Gautham Krishna', 'M', 28, '2023-02-28', 'QA Automation Engineer', 2, 12, 58000.00),
(108, 'Meera Joseph', 'F', 29, '2024-09-12', 'Data Scientist', 1, 11, 90000.00),
(109, 'Midhun Das', 'M', 25, '2026-02-14', 'System Administrator', 4, 10, 52000.00),
(110, 'Aswathy Raj', 'F', 24, '2025-07-20', 'UI/UX Designer', 2, 11, 60000.00);
SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Location;
ALTER TABLE Employees ADD Email VARCHAR(50);
ALTER TABLE Employees
MODIFY COLUMN Designation VARCHAR(255);
ALTER TABLE Employees
CHANGE COLUMN Hire_date Date_of_Joining DATE;
ALTER TABLE Employees
DROP COLUMN Age;
SELECT * FROM Employees;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;
TRUNCATE TABLE Employees;
SELECT * FROM Employees;
DROP TABLE Employees;
SHOW TABLES;
DROP DATABASE Employee_database;
