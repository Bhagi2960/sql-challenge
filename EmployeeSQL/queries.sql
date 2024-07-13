---1)List the employee number, last name, first name, sex, and salary of each employee------

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees e, salaries s where 
	e.emp_no = s.emp_no;


----2)List the first name, last name, and hire date for the employees who were hired in 1986.------

select first_name, last_name , hire_date from employees where hire_date < '1987-01-01' and hire_date> '1985-12-31';


--3)List the manager of each department along with their department number, department name, employee number, last --name, and first name---

select e.emp_no, e.last_name, e.first_name, dm.dept_no, d.dept_name from employees e,
departments d, dept_manager dm
where e.emp_no = dm.emp_no and 
dm.dept_no = d.dept_no;

---4)List the department number for each employee along with that employee’s employee number, last name, first ---name, and department name

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name from employees e, departments d, 
dept_emp de 
where e.emp_no=de.emp_no and de.dept_no=d.dept_no;

---5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name 
---begins with the letter B.
select first_name, last_name, sex from employees where first_name ='Hercules' and last_name like 'B%';

---6)List each employee in the Sales department, including their employee number, last name, and first name.


SELECT e.emp_no, e.first_name, e.last_name, dpt.dept_name
FROM employees e
  INNER JOIN dept_emp AS de
  ON e.emp_no = de.emp_no
  INNER JOIN departments AS dpt
  ON de.dept_no = dpt.dept_no
	where dpt.dept_name ='Sales';


---7)List each employee in the Sales and Development departments, including their employee number, 
---last name, first name, and department name.

SELECT e.emp_no, e.first_name, e.last_name, dpt.dept_name
FROM employees e
INNER JOIN dept_emp AS de
 ON e.emp_no = de.emp_no
INNER JOIN departments AS dpt
  on de.dept_no = dpt.dept_no
	where dpt.dept_name in('Sales','Development');

--8)List the frequency counts, in descending order, of all the employee last names
---(that is, how many employees share each last name).
select last_name, count(last_name) from employees group by last_name order by last_name desc;


