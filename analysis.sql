-- List details of each employee

select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salary as s on
e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select e.emp_no, e.last_name, e.first_name, dm.dept_no, d.dept_name 
from departement_manager as dm
	inner join employees as e
	on dm.emp_no = e.emp_no
	inner join departements as d
	on d.dept_no = dm.dept_no;
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employees as de
	inner join employees as e
	on e.emp_no = de.emp_no
	inner join departements as d
	on d.dept_no = de.dept_no;
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employees as de
	inner join employees as e
	on e.emp_no = de.emp_no
	inner join departements as d
	on d.dept_no = de.dept_no
	where d.dept_name = 'Sales';
	
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employees as de
	inner join employees as e
	on e.emp_no = de.emp_no
	inner join departements as d
	on d.dept_no = de.dept_no
	where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as "Last Name Frequency"
from employees
group by last_name
order by "Last Name Frequency" DESC;




