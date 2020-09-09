-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees e
    JOIN salaries s
    ON (e.emp_no = s.emp_no);

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
    first_name,
    last_name,
    hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    m.dept_no,
    d.dept_name
FROM employees e
    JOIN dept_manager m
    ON (e.emp_no = m.emp_no)
    JOIN departments d
    ON (d.dept_no = m.dept_no);

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
    JOIN dept_manager m
    ON (e.emp_no = m.emp_no)
    JOIN departments d
    ON (d.dept_no = m.dept_no);

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
    JOIN dept_emp x
    ON (e.emp_no = x.emp_no)
    JOIN departments d
    ON (d.dept_no = x.dept_no)
WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees e
    JOIN dept_emp x
    ON (e.emp_no = x.emp_no)
    JOIN departments d
    ON (d.dept_no = x.dept_no)
WHERE dept_name = 'Development'
    OR dept_name = 'Sales';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
    last_name,
    COUNT(last_name) as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;
