SELECT emp_id,
       first_name || ' ' || last_name                        AS full_name,
       fn_dept_name(dept_id)                                 AS department,
       fn_annual_salary(monthly_salary)                      AS annual_salary,
       fn_years_of_service(hire_date)                        AS years_service,
       fn_calculate_tax(fn_annual_salary(monthly_salary))    AS annual_tax
FROM employees
ORDER BY emp_id;