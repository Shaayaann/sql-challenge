--Data Analysis

-------------------------
--1.

SELECT e.emp_no, 
  e.first_name, 
  e.last_name, 
  e.sex, 
  s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

-----------------------------------
--2.

SELECT e.first_name, 
  e.last_name, 
  e.hire_date
from employees AS e
WHERE hire_date LIKE '%1986';
-------------------------------------
--3.
SELECT e.emp_no,
e.first_name, 
  e.last_name,
  m.dept_no,
  d.dept_name
FROM employees as e
INNER JOIN dept_manager as m ON
e.emp_no = m.emp_no
INNER JOIN departments as d ON
m.dept_no = d.dept_no;

--------------------------------------
--4.

SELECT e.emp_no,
e.first_name, 
  e.last_name,
  m.dept_no,
  d.dept_name
FROM employees as e
INNER JOIN dept_emp as m ON
e.emp_no = m.emp_no
INNER JOIN departments as d ON
m.dept_no = d.dept_no;
-------------------------------------
--5.

SELECT e.first_name, 
  e.last_name, 
  e.sex
from employees AS e
WHERE e.last_name LIKE 'B%' AND e.first_name = 'Hercules';
---------------------------------------------
--6.
CREATE VIEW SALARY_DEP AS
SELECT e.emp_no,
e.first_name, 
  e.last_name,
  m.dept_no,
 d.dept_name
FROM employees as e
INNER JOIN dept_emp as m ON
e.emp_no = m.emp_no
INNER JOIN departments as d ON
m.dept_no = d.dept_no;

SELECT s.first_name, 
 s.last_name, 
  s.emp_no
from SALARY_DEP AS S
WHERE s.dept_name = 'Sales';
----------------------------------------
--7.

SELECT s.first_name, 
 s.last_name, 
  s.emp_no,
  s.dept_name
from SALARY_DEP AS S
WHERE s.dept_name = 'Sales' OR s.dept_name = 'Development';
--------------------------------------------


