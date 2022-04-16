# question 1.
select first_name as 'First Name' , last_name as 'Last Name' from hr.employees;


# question 2.
select distinct department_id from hr.employees;


# question 3.
select * from hr.employees order by first_name desc;


# question 4.
select concat(first_name,' ',last_name) as 'name', salary, salary*0.15 as 'pf' from hr.employees;


# question 5. 
select employee_id, first_name, last_name, salary from hr.employees order by salary;


# question 6. 
select sum(salary) from hr.employees;


# question 7. 
select max(salary), min(salary) from hr.employees;


# question 8. 
select avg(salary), count(employee_id) from hr.employees;


# question 9. 
select count(employee_id) as 'total worker' from hr.employees;


# question 10. 
select count( distinct job_id) from hr.employees;


# question 11. 
select upper(first_name) from hr.employees;


# question 12. 
select left(first_name,3) from hr.employees;


# question 13. 
select trim(first_name) from hr.employees;


# question 14. 
select length(first_name), length(last_name) from hr.employees;


# question 15. 
select first_name from hr.employees where first_name regexp '[0-9]';


# question 16. 
select first_name, last_name, salary from hr.employees where not(salary between 10000 and 15000);


# question 17. 
select first_name, last_name, department_id from hr.employees where department_id = 30 or department_id = 100 order by department_id;


# question 18.
select first_name, last_name, salary from hr.employees where not(salary between 10000 and 15000) and department_id = 30 or department_id = 100;


# question 19. 
select first_name, last_name, hire_date from hr.employees where year(hire_date) = 1987;


# question 20. 
select first_name from hr.employees where first_name like '%b%' or first_name like '%c%';


# question 21. 
select last_name, job_id, salary from hr.employees where (job_id = 'IT_PROG' or job_id = 'SH_CLERK') and salary not in(4500, 10000, 15000);


# question 22. 
select last_name from hr.employees where length(last_name) = 6;


# question 23. 
select last_name from hr.employees where instr(last_name, 'e') = 3;


# question 24. 
select job_id, group_concat(employee_id, ' ') as 'employees_id' from hr.employees group by job_id;


# question 25. 
select replace(phone_number, 124, 999) from hr.employees;


# question 26. 
select * from hr.employees where length(first_name) >= 8;


# question 27. 
select concat(email, '@example.com') from hr.employees;


# question 28. 
select right(phone_number,4) from hr.employees;


# question 29. 
select right(street_address,1) from hr.locations;


# question 30. 
select * from hr.locations where length(street_address) <= (select min(length(street_address)) from hr.locations);


# question 31. 
select substr(job_title, 1, instr(job_title, ' ')-1) from hr.jobs;


# question 32.
select length(first_name) from hr.employees where instr(last_name,'c') > 2;


# question 33. 
select first_name as "name", length(first_name) as "length" from hr.employees where first_name like 'a%' or first_name like 'j%' or first_name like 'm%' order by first_name;


# question 34. 
select first_name, lpad(salary, 10, '$') as 'salary' from hr.employees;


# question 35. 
select left(first_name,8), repeat('$', floor(salary/1000)) as 'salary', salary from hr.employees order by salary desc;


# question 36. 
select employee_id, first_name, last_name, hire_date from hr.employees where hire_date like '%-%-07' or hire_date like '%-07-%';