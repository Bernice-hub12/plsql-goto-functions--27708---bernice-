SELECT emp_id, first_name, fn_validate_payroll(emp_id) AS status
FROM employees
ORDER BY emp_id;

SELECT fn_validate_payroll(99) AS missing_employee FROM dual;