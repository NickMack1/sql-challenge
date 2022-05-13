
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select E.emp_no, 
E.last_name, 
E.first_name, 
E.sex,
S.salary
from employees as E
Join salaries as S
on E.emp_no = S.emp_no

-- 2. List employees who were hired in 1986.

select first_name,
last_name,
hire_date
from employees
where hire_date like '%1986'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select D.dept_no, D.dept_name, DM.emp_no, E.last_name, E.first_name
FROM departments as D
JOIN dept_manager as DM
ON D.dept_no = DM.dept_no
JOIN employees as E
ON DM.emp_no = E.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM dept_emp as DE
JOIN employees as E
ON DE.emp_no = E.emp_no
JOIN departments as D
ON DE.dept_no = D.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM dept_emp as DE
JOIN employees as E
ON DE.emp_no = E.emp_no
JOIN departments as D
ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT DE.emp_no, E.last_name, E.first_name, D.dept_name
FROM dept_emp  as DE
JOIN employees as E
ON DE.emp_no = E.emp_no
JOIN departments as D
ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales' 
OR D.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;


