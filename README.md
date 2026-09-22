# employee_db
# Employee Database – SQL DDL Project

##  Project Overview

This project demonstrates the use of **SQL DDL (Data Definition Language) commands** to create and manage an Employee Database using **MySQL**.

The database consists of three related tables: **Departments, Location, and Employees**, with appropriate primary keys, foreign keys, and data constraints.

##  Technologies Used

* MySQL
* SQL
* DDL Commands
* MySQL Workbench

##  Database Structure

### 1. Departments

Stores department information.

* Department ID
* Department Name

### 2. Location

Stores employee workplace location information.

* Location ID
* Location Name

### 3. Employees

Stores employee details and connects employees with their departments and locations.

* Employee ID
* Employee Name
* Gender
* Age
* Hire Date
* Department ID
* Location ID

##  Constraints Implemented

The project demonstrates the following SQL constraints:

* **PRIMARY KEY** – Ensures unique identification of records
* **FOREIGN KEY** – Establishes relationships between Employees, Departments, and Location
* **NOT NULL** – Prevents required fields from being empty
* **UNIQUE** – Prevents duplicate department and location values
* **CHECK** – Restricts gender to `M` or `F` and ensures employee age is 18 or above
* **AUTO_INCREMENT** – Automatically generates unique location IDs
* **DEFAULT** – Automatically assigns the current date to the hire date

##  DDL Commands Demonstrated

### CREATE

* Create the `Employee_database` database
* Create the `Departments` table
* Create the `Location` table
* Create the `Employees` table
* Insert sample data
* Display table data using `SELECT`

### ALTER

* Add the `email` column to the Employees table
* Changes the Designation column size to 255 characters.
* Drop the `age` column
* Rename `hire_date` to `date_of_joining`

### RENAME

* Rename `Departments` to `Departments_Info`
* Rename `Location` to `Locations`

### TRUNCATE

* Remove all records from the Employees table while retaining its structure

### DROP

* Drop the Employees table
* Drop the `Employee_database` database

##  Sample Data

The project contains sample data for:

* Departments such as IT, HR, Finance, and Marketing
* Locations such as Kochi, Bangalore, Chennai, and Hyderabad
* Employees with department and location relationships

##  Learning Objectives

Through this project, I practiced:

* Creating relational databases
* Creating and managing tables
* Inserting and retrieving data
* Designing tables with constraints
* Establishing relationships using foreign keys
* Modifying table structures using `ALTER`
* Renaming database objects
* Using `TRUNCATE` and `DROP`
* Applying and testing SQL constraints

## 📁 Files

`MySQL_Assignment_1.sql` – Complete SQL script containing database creation, table definitions, DDL operations, constraints, and sample data.

## 👩‍💻 Author

**Hanna Farook**

B.Tech Computer Science Engineering Graduate
