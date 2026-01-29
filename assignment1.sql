
SQL> CREATE TABLE studentsm (
  2  RollNo INT,
  3      Name VARCHAR(50),
  4      Dept VARCHAR(20),
  5      Age INT,
  6      Phone VARCHAR(15)
  7  );

Table created.

SQL> CREATE TABLE Course (
  2      CourseID INT,
  3      CourseName VARCHAR(50),
  4      Credits INT
  5  );

Table created.

SQL> ALTER TABLE studentsm
  2  ADD city VARCHAR(30);

Table altered.

SQL> ALTER TABLE studentsm
  2  ADD semester INT;

Table altered.

SQL> ALTER TABLE studentsm
  2  RENAME COLUMN phone TO MoblieNo;

Table altered.

SQL> ALTER TABLE studentsm
  2  CHANGE phone MobliNo VARCHAR(15);
CHANGE phone MobliNo VARCHAR(15)
*
ERROR at line 2:
ORA-01735: invalid ALTER TABLE option


SQL> DROP TABLE course;

Table dropped

SQL> INSERT INTO Studentsm VALUES(101, 'Smita', 'CSE', 20, '9876543210', 'Delhi', 3);

1 row created.

SQL>  INSERT INTO Studentsm VALUES(102, 'Asha', 'ECE', 22, '9123456780', 'Mumbai', 5);

1 row created.

SQL>  INSERT INTO Studentsm VALUES(103, 'Aditya', 'CSE', 21, '9988776655', 'Pune', 4);

1 row created.

SQL> INSERT INTO Studentsm VALUES(104, 'Priya', 'ME', 19, '9090909090', 'Delhi', 2);

1 row created.

SQL> INSERT INTO Studentsm VALUES(105, 'Rohit', 'CE', 23, '8899776655', 'Kolkata', 6);

1 row created.

SQL> SELECT * FROM Studentsm;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Smita
CSE                          20 9876543210      Delhi
         3

       102 Asha
ECE                          22 9123456780      Mumbai
         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       103 Aditya
CSE                          21 9988776655      Pune
         4

       104 Priya
ME                           19 9090909090      Delhi

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
         2

       105 Rohit
CE                           23 8899776655      Kolkata
         6


SQL> SELECT RollNo, Name FROM Studentsm;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Smita
       102 Asha
       103 Aditya
       104 Priya
       105 Rohit

SQL> SELECT * FROM Student
  2  WHERE Dept = 'CSE';
WHERE Dept = 'CSE'
      *
ERROR at line 2:
ORA-00904: "DEPT": invalid identifier


SQL> SELECT * FROM Studentsm
  2  WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       101 Smita
CSE                          20 9876543210      Delhi
         3

       103 Aditya
CSE                          21 9988776655      Pune
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------


SQL> SELECT * FROM Studentsm
  2  WHERE Age > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------
       102 Asha
ECE                          22 9123456780      Mumbai
         5

       103 Aditya
CSE                          21 9988776655      Pune
         4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBLIENO        CITY
-------------------- ---------- --------------- ------------------------------
  SEMESTER
----------

       105 Rohit
CE                           23 8899776655      Kolkata
         6


SQL> UPDATE Studentsm
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> UPDATE Studentsm
  2  SET City = 'Patna'
  3  WHERE Name = 'Smita';

1 row updated.

SQL> UPDATE Studentsm
  2  SET Age = Age + 1;

5 rows updated.

SQL> DELETE FROM Studentsm
  2  WHERE RollNo = 105;

1 row deleted.

SQL> DELETE FROM Studentsm;

4 rows deleted.



