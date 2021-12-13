CREATE DATABASE homework1;
SHOW DATABASES;

CREATE TABLE Students
(
Snum INTEGER,
Ssn INTEGER,
Name VARCHAR(10),
Gender VARCHAR(1),
DOB DATETIME,
C_addr VARCHAR(20),
C_phone VARCHAR(10),
P_addr VARCHAR (20),
P_phone VARCHAR(10),
PRIMARY KEY (Ssn)
);

CREATE TABLE Departments
(
Code INTEGER,
Name VARCHAR(50),
Phone VARCHAR(10),
College VARCHAR(20),
PRIMARY KEY (code)
);

CREATE TABLE Degrees
(
Name VARCHAR(50),
Level VARCHAR(5),
Department_code INTEGER,
PRIMARY KEY (Name, Level),
FOREIGN KEY (Department_code) REFERENCES Departments (Code)
);

CREATE TABLE Courses
(
Number INTEGER,
Name VARCHAR(50),
Description VARCHAR(50),
Credithours INTEGER,
Level VARCHAR(20),
Department_code INTEGER,
PRIMARY KEY (Number),
FOREIGN KEY (Department_code) REFERENCES Departments (Code)
);

CREATE TABLE Register
(
Snum INTEGER,
Course_number INTEGER,
Regtime VARCHAR(20),
Grade INTEGER,
PRIMARY KEY (Snum, Course_number),
FOREIGN KEY (Snum) REFERENCES Students (Snum),
FOREIGN KEY (Course_number) REFERENCES Courses (Number)
);

CREATE TABLE Major
(
Snum INTEGER,
Name VARCHAR(50),
Level VARCHAR(5),
PRIMARY KEY (Snum, Name, Level),
FOREIGN KEY (Snum) REFERENCES Students (Snum),
FOREIGN KEY (Name, Level) REFERENCES Degrees (Name, Level)
);

CREATE TABLE Minor
(
Snum INTEGER,
Name VARCHAR(50),
Level VARCHAR(5),
PRIMARY KEY (Snum, Name, Level),
FOREIGN KEY (Snum) REFERENCES Students (Snum),
FOREIGN KEY (Name, Level) REFERENCES Degrees (Name, Level)
);

