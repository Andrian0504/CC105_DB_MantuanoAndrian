
-- ==========================================
-- CC 105 FINAL PROJECT
-- Student Information System
-- Database: student_information_system
-- ==========================================

CREATE DATABASE student_information_system;
USE student_information_system;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    department_id INT,
    instructor_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO departments (department_name) VALUES
('Computer Science'),
('Mathematics'),
('English');

INSERT INTO instructors (first_name, last_name, email, department_id) VALUES
('Arlyn', 'De Villa', 'arlyn.devilla@school.edu', 1),
('John', 'Reyes', 'john.reyes@school.edu', 2),
('Maria', 'Santos', 'maria.santos@school.edu', 3);

INSERT INTO students (first_name, last_name, email, date_of_birth, department_id) VALUES
('Andrian', 'Mantuano', 'andrian@student.edu', '2003-05-12', 1),
('Mark', 'Agbay', 'mark@student.edu', '2002-08-15', 2),
('Brent', 'Robles', 'brent@student.edu', '2003-02-20', 1),
('Benedict', 'Sarmiento', 'benedict@student.edu', '2003-06-30', 3),
('Adrian', 'Fernandez', 'adrian@student.edu', '2003-09-10', 1);

INSERT INTO courses (course_name, credits, department_id, instructor_id) VALUES
('Database Systems', 3, 1, 1),
('Calculus I', 4, 2, 2),
('English Literature', 3, 3, 3);

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 1, 'A'),
(4, 3, 'B'),
(5, 1, 'A');

SELECT first_name, last_name, email
FROM students
WHERE department_id = 1;

SELECT course_name, credits
FROM courses
ORDER BY credits DESC;

SELECT department_id, COUNT(*) AS total_students
FROM students
GROUP BY department_id;

UPDATE enrollments
SET grade = 'A+'
WHERE enrollment_id = 2;

DELETE FROM enrollments
WHERE enrollment_id = 5;

SELECT 
    s.first_name,
    s.last_name,
    c.course_name,
    e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;
