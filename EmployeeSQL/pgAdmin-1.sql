
--List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.first_name, employees.last_name,employees.employee_id, employees.sex, salaries.salary
from employees
inner join salaries on
employees.employee_id=salaries.employee_id;

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date between '01/01/1986' and '12/31/1986';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select Departments.department_id, Departments.department_name, Department_Manager.employee_id
from Departments
inner join Department_Manager on
Departments.department_id=Department_Manager.department_id

