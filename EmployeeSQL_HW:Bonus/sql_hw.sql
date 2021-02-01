--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select employee.first_name, employee.last_name,employee.employee_id, employee.sex, salary.salary
from employee
inner join salary on
employee.employee_id=salary.employee_id;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employee
where hire_date between '01/01/1986' and '12/31/1986';

--3. List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select employee.first_name, employee.last_name, department_manager.employee_id,department.department_id, department.department_name
from employee inner join department_manager on employee.employee_id=department_manager.employee_id
inner join department on department.department_id=department_manager.department_id

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select employee.first_name, employee.last_name,employee.employee_id,department.department_name
from employee inner join department_employee on employee.employee_id=department_employee.employee_id
inner join department on department.department_id=department_employee.department_id

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select employee.first_name, employee.last_name, employee.sex from employee
where first_name = 'Hercules' and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employee.first_name, employee.last_name,employee.employee_id,department.department_name
from employee inner join department_employee on employee.employee_id=department_employee.employee_id
inner join department on department.department_id=department_employee.department_id
where department.department_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employee.first_name, employee.last_name,employee.employee_id,department.department_name
from employee inner join department_employee on employee.employee_id=department_employee.employee_id
inner join department on department.department_id=department_employee.department_id
where department.department_name = 'Sales' or department.department_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count (employee_id) as "Shared_Names"
from employee
group by last_name
order by last_name desc




