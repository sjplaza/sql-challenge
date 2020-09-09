-- create a table schema for each of the six CSV files
CREATE TABLE departments
(
    dept_no VARCHAR(30),
    dept_name VARCHAR(50),
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp
(
    emp_no INT,
    dept_no VARCHAR(30)
);

CREATE TABLE dept_manager
(
    dept_no VARCHAR(30),
    emp_no INT
);

CREATE TABLE employees
(
    emp_no INT,
    emp_title_id VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(5),
    hire_date DATE,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

CREATE TABLE salaries
(
    emp_no INT,
    salary INT
);

CREATE TABLE titles
(
    title_id VARCHAR(30),
    title VARCHAR(30)
);

CREATE TABLE departments
(
    dept_no VARCHAR(30),
    dept_name VARCHAR(50),
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp
(
    emp_no INT,
    dept_no VARCHAR(30)
);

CREATE TABLE dept_manager
(
    dept_no VARCHAR(30),
    emp_no INT
);

CREATE TABLE employees
(
    emp_no INT,
    emp_title_id VARCHAR(30),
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(5),
    hire_date DATE,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);

CREATE TABLE salaries
(
    emp_no INT,
    salary INT
);

CREATE TABLE titles
(
    title_id VARCHAR(30),
    title VARCHAR(30)
);

-- specify primary keys, foreign keys, and other constraints
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments(dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments(dept_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees(emp_no);

-- verify csv imports
SELECT *
FROM departments;
SELECT *
FROM dept_emp;
SELECT *
FROM dept_manager;
SELECT *
FROM employees;
SELECT *
FROM salaries;
SELECT *
FROM titles;



