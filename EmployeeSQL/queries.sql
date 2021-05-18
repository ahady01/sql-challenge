--Data Analysis
--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employees
JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name,
  employees.last_name,
  employees.hire_date
FROM employees
WHERE hire_date Between '1-1-1986' and '12-31-1986';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT	departements.dept_no,
	departements.dept_name,
	dept_manager.dept_no,
  	dept_manager.emp_no,
	employees.emp_no,
	employees.last_name,
	employees.first_name
  
FROM departements
JOIN dept_manager ON departements.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT	
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departements.dept_name
FROM dept_emp
JOIN departements ON departements.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name,
  employees.last_name,
  employees.sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT	
	employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departements.dept_name	
FROM dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no
JOIN departements ON dept_emp.dept_no = departements.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT	
	employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departements.dept_name	
FROM dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no
JOIN departements ON dept_emp.dept_no = departements.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development' ;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name, COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "last_name" DESC;



