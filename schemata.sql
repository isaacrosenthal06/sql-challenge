create table departements (
	dept_no varchar Primary Key,
	dept_name varchar Not Null
);

create table employees (
	emp_no int Primary Key,
	emp_title_id varchar not null,
	foreign key (emp_title_id) references titles(title_id),
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date
);

create table department_employees (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar not null,
	foreign key (dept_no) references departements(dept_no)
);

create table departement_manager (
	dept_no varchar not null,
	foreign key (dept_no) references departements(dept_no),
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no)
);

create table salary (
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	salary int not null
);

create table titles (
	title_id varchar Primary Key,
	title varchar not null
);

select * from titles;

select * from employees limit 100;
select * from departements limit 100;
select * from department_employees limit 100;
select * from departement_manager limit 100;
select * from salary limit 100;




