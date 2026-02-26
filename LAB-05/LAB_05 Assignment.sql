PART A:Student-Enrollment Relationship
 
 1. StudentID, Name with CourseID......
SELECT S.Student_id, S.Name, E.Course_id
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id=E.Student_id;

2.Student Name ,Semester.......
SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id=E.Student_id;

3.Student Name ,Grade......
SELECT S.Name, E.Grade
FROM Student  S
INNER JOIN Enrollment  E 
ON S.Student_id=E.Student_id;

PART B:Course-Faculty Relationship

 4.CourseName, Credits with faculty Name..........
SELECT C.Course_name, C.Credits, F.Name AS facultyName
FROM Course C
INNER JOIN faculty F
ON C.faculty_id = F.faculty_id;

5.Course taught by faculty id..........
SELECT C.Course_name
FROM Course C
INNER JOIN faculty F
ON C.faculty_id = F.faculty_id
WHERE F.faculty_id = '501';

6.Display faculty name and designation along with CousreName they teach........
SELECT F.Name, F.Designation, C.Course_name
FROM faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id;

PART C:Student-Course-Enrollment Relationship

7.Display StudentName along with courseName for all Enrollments........
SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

8.Display Student name,CourseName and Semester.......
SELECT S.Name, C.Course_name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id;

9.Semester 4 only.....
SELECT S.Name, C.Course_name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE E.Semester = 4;

10.Display all Course taken by a student whose studentID........
SELECT C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE S.Student_id = '23105128001';

PART D:Deparment-Based JOIN Queries

11.Display StudentName and DepartmentID along with CourseName .........
SELECT S.Name, S.Department_id, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id= C.Course_id;

12.Display department-wise list of Course.........
SELECT D.Department_id, D.Department_name, C.Course_name
FROM Department D
INNER JOIN Course C
ON D.Department_id = C.Department_id;

13.Display FacultyName along with departmentName they belong to..........
SELECT F.Name, D.Department_name
FROM faculty F
INNER JOIN Department D
ON F.Department_id = D.Department_id;

PART E:JOIN with Filtering and sorting

 14.Display StudentName and CourseName for Department..........
SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
WHERE S.Department_id = '101';

15.Display StudentName and CourseName(sorted Ascending).........
SELECT S.Name, C.Course_name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_id = E.Student_id
INNER JOIN Course C
ON E.Course_id = C.Course_id
ORDER BY S.Name ASC;

16.FacultyName and CourseName(sorted by credits Descending).........
SELECT F.Name, C.Course_name
FROM faculty F
INNER JOIN Course C
ON F.faculty_id= C.faculty_id
ORDER BY C.Credits DESC;

PART F:Analytical JOIN Queries

 17.Number of students enrolled in each course..........
SELECT C.Course_name, COUNT(E.Student_id) AS TotalStudents
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_name;

18.Number of Course taught by each faculty..........
SELECT F.Name, COUNT(C.Course_id) AS TotalCourses
FROM faculty F
INNER JOIN Course C
ON F.faculty_id = C.faculty_id
GROUP BY F.Name;

19.Department-wise count of students.........
SELECT D.Department_name,
 COUNT(S.Student_id)  TotalStudents
FROM Department D
INNER JOIN Student S
ON D.Department_id = S.Department_id
GROUP BY D.Department_name;

20. Course name with maximum grade
SELECT C.Course_name, MAX(E.Grade) AS MaxGrade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_id = E.Course_id
GROUP BY C.Course_name;
