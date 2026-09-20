-- ===================================================
-- DROP TABLES IF THEY EXIST (To prevent conflicts)
-- ===================================================
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE student_logs CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE students CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE salary_logs CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/


-- ===================================================
-- TABLE CREATION (Without IDENTITY clauses)
-- ===================================================

-- 1. DEPARTMENTS TABLE
CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL CONSTRAINT uq_dept_name UNIQUE
);

-- 2. EMPLOYEES TABLE
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50) NOT NULL,
    salary NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
    dept_id NUMBER NULL,
    manager_id NUMBER NULL,
    CONSTRAINT fk_employee_department 
        FOREIGN KEY (dept_id) REFERENCES departments(dept_id) 
        ON DELETE SET NULL,
    CONSTRAINT fk_employee_manager 
        FOREIGN KEY (manager_id) REFERENCES employees(emp_id) 
        ON DELETE SET NULL
);

-- 3. SALARY_LOGS (Audit / Trigger Table)
CREATE TABLE salary_logs (
    log_id NUMBER PRIMARY KEY,
    emp_id NUMBER NOT NULL,
    old_salary NUMBER(10, 2) NULL,
    new_salary NUMBER(10, 2) NULL,
    action_type VARCHAR2(10) NULL,
    change_date DATE DEFAULT SYSDATE,
    CONSTRAINT chk_salary_action CHECK (action_type IN ('INSERT', 'UPDATE', 'DELETE'))
);

-- 4. STUDENTS TABLE
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    age NUMBER CHECK (age >= 0)
);

-- 5. STUDENT_LOGS (Audit / Trigger Table)
CREATE TABLE student_logs (
    log_id NUMBER PRIMARY KEY,
    student_id NUMBER NOT NULL,
    name VARCHAR2(50) NOT NULL,
    log_date DATE DEFAULT SYSDATE
);


-- ===================================================
-- 1. SEED DATA: DEPARTMENTS
-- ===================================================
INSERT INTO departments (dept_id, dept_name) VALUES (10, 'Administration');
INSERT INTO departments (dept_id, dept_name) VALUES (20, 'IT & Software Engineering');
INSERT INTO departments (dept_id, dept_name) VALUES (30, 'Finance & Accounting');
INSERT INTO departments (dept_id, dept_name) VALUES (40, 'Human Resources');
INSERT INTO departments (dept_id, dept_name) VALUES (50, 'Marketing');


-- ===================================================
-- 2. SEED DATA: EMPLOYEES
-- ===================================================
-- CEO (No manager)
INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (101, 'Rahim Chowdhury', 120000.00, 10, NULL);

-- IT Team (Manager: 101 & 102)
INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (102, 'Karim Hasan', 85000.00, 20, 101);

INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (103, 'Tanvir Ahmed', 50000.00, 20, 102);

INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (104, 'Rahim Islam', 50000.00, 20, 102);

-- HR Team (Manager: 101)
INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (105, 'Nusrat Jahan', 45000.00, 40, 101);

INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (106, 'Tanvir Hossain', 40000.00, 40, 101);

-- Finance Team (Manager: 101)
INSERT INTO employees (emp_id, emp_name, salary, dept_id, manager_id) 
VALUES (107, 'Ayesha Siddiqua', 60000.00, 30, 101);


-- ===================================================
-- 3. SEED DATA: STUDENTS
-- ===================================================
INSERT INTO students (student_id, name, age) VALUES (1, 'Rahim', 21);
INSERT INTO students (student_id, name, age) VALUES (2, 'Karim', 22);
INSERT INTO students (student_id, name, age) VALUES (3, 'Nusrat', 20);

-- Save changes permanently in Oracle
COMMIT;