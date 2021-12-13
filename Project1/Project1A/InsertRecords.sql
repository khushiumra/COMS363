CREATE DATABASE homework1;
SHOW DATABASES;

INSERT INTO Students (Snum, Ssn, Name, Gender, DOB, C_addr, C_phone, P_addr, P_phone)
VALUES (1001,654651234,"Randy","M",2000-12-01,"301 E Hall",5152700988,"121 Main",7083066321),
(1002,123097834,"Victor","M",2000-05-06,"270 W Hall",5151234578,"702 Walnut",7080366333),
(1003,978012431,"John","M",1999-07-08,"201 W Hall",5154132805,"888 University",5152012011),
(1004,746897816,"Seth","M",1998-12-30,"199 N Hall",5158891504,"21 Green",5154132907),
(1005,186032894,"Nicole","F",2001-04-01,"178 S Hall",5158891155,"13 Gray",5157162071),
(1006,534218752,"Becky","F",2001-05-16,"12 N Hall",5157083698,"189 Clark",2034367632),
(1007,432609519,"Kevin","M",2000-08-12,"75 E Hall",5157082497, "89 National",7182340772);

INSERT INTO Departments (Code, Name, Phone, College)
VALUES (401,"Computer Science",5152982801,"LAS"),
(402,"Mathematics",5152982802,"LAS"),
(403,"Chemical Engineering",5152982803,"Engineering"),
(404,"Landscape Architect",5152982804,"Design");

INSERT INTO DEGREES (Name, Level, Department_code)
VALUES ("Computer Science","BS",401),
("Software Engineering","BS",401),
("Computer Science","MS",401),
("Computer Science","PhD",401),
("Applied Mathematics","MS",402),
("Chemical Engineering","BS",403),
("Landscape Architect","BS",404);

INSERT INTO Courses (Number, Name, Description, Credithours, Level, Department_code)
VALUES (113,"Spreadsheet","Microsoft Excel and Access",3,"Undergraduate",401),
(311,"Algorithm","Design and Analysis",	3,"Undergraduate",401),
(531,"Theory of Computation","Theorem and Probability", 3,"Graduate",401),
(363,"Database","Design Principle",	3,"Undergraduate",401),
(412,"Water Management","Water Management",	3,"Undergraduate",404),
(228,"Special Topics","Interesting Topics about CE",3,	"Undergraduate",403),
(101,"Calculus","Limit and Derivative",	4,"Undergraduate",402);


INSERT INTO Register (Snum, Course_number, Regtime, Grade)
VALUES (1001,363,"Fall2020",3),
(1002,311, "Fall2020", 4),
(1003,228,"Fall2020",4),
(1004,363,"Spring2021",3),
(1005,531,"Spring2021",4),
(1006,363,"Fall2020",3),
(1007,531,"Spring2021",4);

INSERT INTO Major (Snum, Name, Level)
VALUES (1001,"Computer Science","BS"),
(1002,"Software Engineering","BS"),
(1003,"Chemical Engineering","BS"),
(1004,"Landscape Architect","BS"),
(1005,"Computer Science","MS"),
(1006,"Applied Mathematics","MS"),
(1007,"Computer Science","PhD");

INSERT INTO Minor (Snum, Name, Level)
VALUES (1007,"Applied Mathematics","MS"),
(1005,"Applied Mathematics","MS"),
(1001,"Software Engineering","BS");











