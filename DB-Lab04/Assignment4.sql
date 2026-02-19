SELECT
  2   Student_ID AS Roll_No,
  3   Name AS Student_Name,
  4  Gender AS Sex,
  5   Contact_Number AS Contact,
  6   Department_ID
  7   FROM Student;




 SELECT
  2   Student_ID AS Roll_No,
  3   Name AS Student_Name,
  4 
  5  FROM Student; Department_ID


SELECT
  2  Faculty_ID AS Faculty_ID,
  3  Name AS Faculty_Name,
  4  Designation AS Faculty_Designation,
  5      Email AS Faculty_Email
  6  FROM Faculty;


 SELECT
  2   Enrollment_ID AS Enroll_ID,
  3   Semester AS Sem,
  4   Grade AS Marks,
  5   Student_ID AS Std_ID,
  6  Course_ID AS Course_ID
  7  FROM ENROLLMENT;

 SELECT *
  2  FROM STUDENT
  3  WHERE Department_ID = 101;


SELECT *
  2  FROM STUDENT
  3  WHERE GENDER = 'F';


 SELECT *
  2  FROM STUDENT
  3  WHERE GENDER = 'F';


SELECT *
  2  FROM FACULTY
  3  WHERE Department_ID = 102;



 SELECT *
  2  FROM COURSE
  3  WHERE CREDITS >= 4;

SELECT *
  2  FROM STUDENT
  3  WHERE DATE_OF_BIRTH > DATE '2003-01-01';


SELECT *
  2  FROM ENROLLMENT
  3  WHERE SEMESTER = '4th';


SELECT *
  2  FROM STUDENT
  3  ORDER BY NAME ASC;


 SELECT *
  2  FROM STUDENT
  3  ORDER BY DATE_OF_BIRTH DESC;



 SELECT *
  2  FROM STUDENT
  3  ORDER BY DATE_OF_BIRTH DESC;



 SELECT *
  2  FROM COURSE
  3  ORDER BY CREDITS DESC;
 SELECT *
  2  FROM STUDENT
  3  FETCH FIRST 3 ROWS ONLY;


 SELECT *
  2  FROM COURSE
  3  FETCH FIRST 5 ROWS ONLY;


SELECT
  2  Name,
  3   FLOOR(MONTHS_BETWEEN(SYSDATE, Date_of_Birth)/12) AS Age
  4  FROM STUDENT;

 SELECT
  2  COURSE_NAME,
  3  CREDITS + 1 AS UPDATED_CREDITS
  4  FROM COURSE;


 SELECT
  2   ENROLLMENT_ID,
  3   SEMESTER,
  4  GRADE AS FINAL_GRADE,
  5  STUDENT_ID,
  6  COURSE_ID
  7  FROM ENROLLMENT;



SELECT
  2  NAME,
  3   EXTRACT(YEAR FROM DATE_OF_BIRTH) AS YEAR_OF_BIRTH
  4  FROM STUDENT;



 SELECT
  2   NAME,
  3  SUBSTR(EMAIL, INSTR(EMAIL, '@') + 1) AS EMAIL_DOMAIN
  4  FROM FACULTY;





 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    105501 Artificial Intelligence                                     4
          105        518

    105502 Database Management Systems                                 4
          105        519

    105503 Formal Language and Automata                                4
          105        523


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    105504 Software Engineering                                        4
          105        522

    119501 Machine Learning                                            4
          119        525

    119502 Hydraulic Engineering                                       4
          119        509


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    119506 Environmental Engineering I                                 4
          119        509

    119504 Geotechnical Engineering I                                  4
          119        506

    119507 Transportation Engineering                                  4
          119        507


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    119505 Hydrology and Water Resources                               4
          119        508

       621 Machine Learning                                            4
          157        523

       623 Artificial Intelligence                                     4
          157        523


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
       622 Computer Networks                                           4
          157        523

    118501 3D Modelling                                                4
          118        526

    118502 3D Character Design                                         4
          118        526


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    118503 3D Texturing                                                4
          118        526

    100506 Power Electronics                                           4
          110        516

    110501 Analog n Digital                                            4
          110        513


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    100502 Control Systems                                             4
          110        514

    100507 Power Systems I                                             4
          110        515

    102501 Fluid Machinery                                             4
          102        501


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    102502 Heat Transfer                                               4
          102        505

    102503 Manufacturing Processes                                     4
          102        502

    102504 Kinematics of Machinery                                     4
          102        503


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    101503 Geotechnical Engineering I                                  4
          101        506

    101502 Environmental Engineering I                                 4
          101        509

    101504 Hydrology and Water Resources                               4
          101        508


 COURSE_ID COURSE_NAME                                           CREDITS
---------- -------------------------------------------------- ----------
DEPARTMENT_ID FACULTY_ID
------------- ----------
    101506 Mechanics of Materials                                      4
          101        508

    101505 Hydraulic Engineering                                       4
          101        509

    101507 Transportation Engineering                                  4
          101        507
