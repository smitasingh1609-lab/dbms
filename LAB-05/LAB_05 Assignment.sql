SELECT S.Student_id, S.Name, E.Course_id
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id=E.Student_id;

SELECT * FROM STUDENT;

SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id=E.Student_id;

SELECT S.Name, E.Grade
FROM Student  S
INNER JOIN Enrollment  E 
ON S.Student_id=E.Student_id;


SELECT C.Course_name, C.Credits, F.Name AS facultyName
FROM Course C
INNER JOIN faculty F
ON C.faculty_id = F.faculty_id;

SELECT C.Course_name
FROM Course C
INNER JOIN faculty F
ON C.faculty_id = F.faculty_id
WHERE F.faculty_id = '501';

SELECT F.Name, F.Designation, C.Course_name
FROM faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id;

SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

SELECT S.Name, C.Course_name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

SELECT S.Name, C.Course_name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE E.Semester = 4;

SELECT C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE S.Student_id = '23105128001';

SELECT S.Name, S.Department_id, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id= C.Course_id;

SELECT D.Department_id, D.Department_name, C.Course_name
FROM Department D
INNER JOIN Course C
ON D.Department_id = C.Department_id;

SELECT F.Name, D.Department_name
FROM faculty F
INNER JOIN Department D
ON F.Department_id = D.Department_id;

SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE S.Department_id = '101';

SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
ORDER BY S.Name ASC;

SELECT F.Name, C.Course_name
FROM faculty F
INNER JOIN Course C
ON F.faculty_id= C.faculty_id
ORDER BY C.Credits DESC;

SELECT C.Course_name, COUNT(E.Student_id) AS TotalStudents
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_name;

SELECT F.Name, COUNT(C.Course_id) AS TotalCourses
FROM faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.Name;

SELECT D.Department_name,
 COUNT(S.Student_id)  TotalStudents
FROM Department D
INNER JOIN Student S
ON D.Department_id = S.Department_id
GROUP BY D.Department_name;

SELECT C.Course_name, MAX(E.Grade) AS MaxGrade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_name;