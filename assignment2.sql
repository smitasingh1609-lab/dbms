 CREATE TABLE Department(
  2  dept_id INT PRIMARY KEY,
  3  dept_name VARCHAR(50),
  4  office_location VARCHAR(50)
  5  );

Table created.

SQL> CREATE TABLE Faculty (
  2      faculty_id INT PRIMARY KEY,
  3      name VARCHAR(50),
  4      designation VARCHAR(50),
  5      email VARCHAR(50),
  6      dept_id INT,
  7      FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
  8  );

Table created.

SQL> CREATE TABLE Course (
  2      course_id INT PRIMARY KEY,
  3      course_name VARCHAR(50),
  4      credits INT,
  5      dept_id INT,
  6      faculty_id INT,
  7      FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
  8      FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
  9  );

Table created.



SQL> CREATE TABLE student5(
  2  student5_id INT PRIMARY KEY,
  3   name VARCHAR(50),
  4      dob DATE,
  5      gender VARCHAR(10),
  6      contact_no VARCHAR(15),
  7      dept_id INT,
  8      FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
  9  );

Table created.


SQL> CREATE TABLE Enrollment (
  2   EnrollmentID INT PRIMARY KEY,
  3  student5_id INT,
  4  course_id INT,
  5   EnrollmentDate DATE,
  6   Semester VARCHAR(10),
  7  Grade CHAR(2),
  8  CONSTRAINT fk_student5 FOREIGN KEY(student5_id)
  9   REFERENCES student5(student5_id),
 10  CONSTRAINT fk_course FOREIGN KEY(course_id)
 11  REFERENCES Course(course_id)
 12  );

Table created.

SQL>
