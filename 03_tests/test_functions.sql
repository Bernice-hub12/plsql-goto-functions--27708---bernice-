SELECT fn_annual_salary(450000)            AS annual_450k   FROM dual;
SELECT fn_annual_salary(-5)                AS negative_in   FROM dual;
SELECT fn_years_of_service(DATE '2018-03-15') AS years_2018 FROM dual;
SELECT fn_calculate_tax(600000)            AS tax_low       FROM dual;
SELECT fn_calculate_tax(1000000)           AS tax_mid       FROM dual;
SELECT fn_calculate_tax(1500000)           AS tax_high      FROM dual;
SELECT fn_dept_name(20) AS known_dept, fn_dept_name(99) AS unknown_dept FROM dual;