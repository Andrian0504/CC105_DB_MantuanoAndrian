
# CC105 Final Project – Student Information System

## 📌 Project Overview
This project is a **Student Information System (SIS)** developed as a requirement for **CC 105 – Information Management**.
The system demonstrates the design and implementation of a **relational database using MySQL**, including proper normalization,
table relationships, and SQL operations.

---

## 🎯 Objectives
- Design a normalized relational database (up to 3NF)
- Implement primary and foreign key relationships
- Perform SQL operations: CREATE, INSERT, SELECT, UPDATE, DELETE, and JOIN
- Demonstrate data integrity using constraints

---

## 🗂️ Database Structure

### Tables Included
1. **Departments**
2. **Instructors**
3. **Students**
4. **Courses**
5. **Enrollments**

---

## 🔗 Entity Relationships
- One Department → Many Students, Instructors, Courses
- One Instructor → Many Courses
- Many Students ↔ Many Courses (via Enrollments)

---

## 🧪 SQL Operations Included
- CREATE TABLE
- INSERT INTO
- SELECT with WHERE, ORDER BY, GROUP BY
- UPDATE
- DELETE
- JOIN

---

## 🧰 Tools Used
- MySQL
- MySQL Workbench / phpMyAdmin
- GitHub

---

## 📁 Files Included
- `CC105_Student_Information_System.sql`
- `ERD_Student_Information_System.jpg`
- `README.md`

---

## ▶️ How to Run
1. Open MySQL Workbench or phpMyAdmin
2. Import and run:
   ```
   CC105_Student_Information_System.sql
   ```
3. View generated tables and sample queries

---

## 👨‍🎓 Author
**Andrian Mantuano**  
BS Information Technology  
CC105 – Information Management
