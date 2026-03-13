SELECT COUNT(*)  Total_Students
FROM Student;

SELECT COUNT(*) AS Total_Faculty
FROM Faculty;


SELECT MAX(Credits) AS Max_Credits
FROM Course;

SELECT MIN(Credits) AS Min_Credits
FROM Course;

SELECT department_id , COUNT(*) AS Number_of_Students
FROM Student
GROUP BY department_id ;

SELECT department_id , COUNT(*) AS Number_of_Faculty
FROM Faculty
GROUP BY department_id ;

SELECT department_id , COUNT(*) AS Number_of_Courses
FROM Course
GROUP BY department_id ;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester;

SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade;

SELECT department_id , COUNT(*) AS Total_Students
FROM Student
GROUP BY department_id 
HAVING COUNT(*) > 3;

SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

SELECT Grade, COUNT(*) AS Total
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

SELECT department_id , COUNT(*) AS Total_Courses
FROM Course
GROUP BY department_id 
HAVING COUNT(*) > 1;

SELECT course_id, COUNT(student_id ) AS Enrolled_Students
FROM Enrollment
GROUP BY course_id;

SELECT Course.course_name , COUNT(Enrollment.student_id) AS Enrolled_Students
FROM Course
INNER JOIN Enrollment
ON Course.course_id = Enrollment.course_id
GROUP BY Course.course_name ;

SELECT department_id, COUNT(*) AS Total_Students
FROM Student
GROUP BY department_id;

SELECT Faculty.Name, COUNT(Course.course_id) AS Courses_Taught
FROM Faculty
INNER JOIN Course
ON Faculty.faculty_id = Course.faculty_id
GROUP BY Faculty.Name;

SELECT Course.Course_Name, MAX(Enrollment.Grade) AS Max_Grade
FROM Course
INNER JOIN Enrollment
ON Course.course_id = Enrollment.course_id
GROUP BY Course.Course_Name;

SELECT department_id, COUNT(*) AS Total_Courses
FROM Course
GROUP BY department_id;

SELECT Semester, COUNT(student_id) AS Total_Students
FROM Enrollment
GROUP BY Semester;

SELECT course_id, COUNT(student_id) AS Total_Students
FROM Enrollment
GROUP BY course_id
HAVING COUNT(student_id) > 2;
