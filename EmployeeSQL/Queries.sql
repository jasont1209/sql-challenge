--List the employee number, last name, first name, sex, and salary of each employee.
-- e,e,e,e,s
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employees as e
inner join salaries as s on s.emp_no = e.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
--e,e,e
Select e.first_name, e.last_name, e.hire_date
from employees as e
where extract(year from hire_date) = 1986

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
--dm,d,dm,e,e
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d on dm.dept_no = d.dept_no
inner join employees as e on dm.emp_no = e.emp_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--d,e,e,e,d
Select d.dept_no, dm.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d
inner join dept_manager as dm on d.dept_no = dm.dept_no
inner join employees as e on dm.emp_no = e.emp_no


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--e,e,e,
Select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name = 'B%'


--List each employee in the Sales department, including their employee number, last name, and first name.
--d,dm,e,e
Select d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as dm on d.dept_no = dm.dept_no
inner join employees as e on dm.emp_no = e.emp_no
where d.dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as dm on d.dept_no = dm.dept_no
inner join employees as e on dm.emp_no = e.emp_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc




