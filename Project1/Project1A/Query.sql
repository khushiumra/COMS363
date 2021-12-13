CREATE DATABASE homework1;

SHOW DATABASES;

SELECT Snum, Ssn
FROM Students
Where Name = "Becky";

SELECT Name, Level
FROM Major m
INNER JOIN Students s
ON m.Snum = s.Snum
WHERE s.Ssn = 123097834;

SELECT Name
FROM Courses
WHERE Department_code = 401;

SELECT Name, Level
FROM Degrees
WHERE Department_code = 401;

SELECT Name
FROM Students s
INNER JOIN Minor m
ON s.Snum = m.Snum;

SELECT COUNT(*)
FROM Minor;

SELECT Names, Snum
FROM Students s
INNER JOIN Register r
ON s.Snum = r.Snum
WHERE r.Course_Number = 311;

SELECT NAME, Snum
FROM Students
WHERE DOB = ( SELECT MIN(DOB)
               FROM Students);
               
SELECT NAME, Snum
FROM Students
WHERE DOB = ( SELECT MAX(DOB)
               FROM Students);
               
SELECT Name, Snum, Ssn
FROM Students
WHERE Name LIKE '%n%' AND '%N%';

SELECT Name, Snum, Ssn
FROM Students
WHERE Name NOT LIKE '%n%' AND '%N%';

SELECT Number, Name, COUNT(*)
FROM Courses c
INNER JOIN Register r
ON c.Number = r.Course_number;

SELECT Name
FROM Students s
INNER JOIN Register r
ON s.Snum = r.Snum
WHERE r.Regtime = "Fall2020";

SELECT Number, Name
FROM Courses c
INNER JOIN Departments d
ON c.Department_code = d.Code
WHERE d.Name = "Computer Science";

SELECT Number, Name
FROM Courses c
INNER JOIN Departments d
ON c.Department_code = d.Code
WHERE d.Name = "Computer Science" OR "Landscape Architect";


















