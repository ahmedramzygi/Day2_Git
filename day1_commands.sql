Step 1: Setting Up the Database
Create a Database:

CREATE DATABASE my_database;


Use the Database:

USE my_database;


View All Databases:

SHOW DATABASES;


Drop a Database (if needed):

DROP DATABASE my_database;


Create Students Table:


CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    DepartmentID INT
);
Create Courses Table:

sql
Copy code
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    DurationWeeks INT
);
Create Enrollments Table:

sql
Copy code
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
View All Tables:


SHOW TABLES;
Describe Table Structure:

DESCRIBE Students;
Step 3: Inserting Data
Insert Data into Students Table:

sql
Copy code
INSERT INTO Students (FirstName, LastName, Age, DepartmentID)
VALUES ('John', 'Doe', 20, 1), ('Jane', 'Smith', 22, 2), ('Alice', 'Brown', 19, 3);
Insert Data into Courses Table:

sql
Copy code
INSERT INTO Courses (CourseName, DurationWeeks)
VALUES ('Mathematics', 12), ('Physics', 10), ('Chemistry', 8);
Insert Data into Enrollments Table:

sql
Copy code
INSERT INTO Enrollments (StudentID, CourseID, Grade)
VALUES (1, 1, 'A'), (2, 2, 'B'), (1, 3, 'C');


Step 4: Querying Data
Retrieve All Data from a Table:
sql
Copy code
SELECT * FROM Students;


Retrieve Specific Columns:


SELECT FirstName, LastName FROM Students;


Filter Rows with Conditions:

SELECT * FROM Students WHERE Age > 20;


Retrieve Data with Joins:

SELECT s.FirstName, s.LastName, e.Grade
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID;



Step 5: Updating and Deleting Data
Update Data:

UPDATE Students SET Age = 21 WHERE StudentID = 1;
Delete Data:

DELETE FROM Students WHERE StudentID = 1;
Step 6: Indexing
Create an Index:

CREATE INDEX idx_students_firstname ON Students (FirstName);


View Indexes:
sql
Copy code
SHOW INDEX FROM Students;
Drop an Index:
sql
Copy code


DROP INDEX idx_students_firstname ON Students;



Step 7: Advanced Queries
Count Rows in a Table:

sql
Copy code

SELECT COUNT(*) AS TotalStudents FROM Students;
Group Data:

sql
Copy code
SELECT Age, COUNT(*) AS StudentCount
FROM Students
GROUP BY Age;

Sort Data:

sql
Copy code
SELECT * FROM Students ORDER BY LastName ASC;
Retrieve Data from Multiple Tables with a Join:

sql
Copy code
SELECT s.FirstName, c.CourseName, e.Grade
FROM Enrollments e
JOIN Students s ON e.StudentID = s.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;
Find Students Enrolled in a Specific Course:

sql
Copy code
SELECT s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.CourseID = 1;


Step 8: Dropping Tables
Drop a Single Table:

sql
Copy code
DROP TABLE Students;
Drop All Tables in the Database (manual):

sql
Copy code
DROP TABLE Enrollments;
DROP TABLE Courses;
DROP TABLE Students;
