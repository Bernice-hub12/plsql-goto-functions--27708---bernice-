# PL/SQL GOTO Statements and Functions

**Course:** Database Development with PL/SQL (INSY 8311)
**Student:** IGIRANEZA Bernice Gentille | **ID:** 27708
**PDB:** be_pdb_27708 | **UserAcc:** bernice_plsqlauca_27708

## Overview
This assignment covers PL/SQL GOTO statements (Part A), stored functions used
in PL/SQL and SQL (Part B), and a combined payroll validator (Part C).

## Environment
Oracle Database 21c, pluggable database be_pdb_27708, Oracle SQL Developer 26.2.

## Tables
- departments(dept_id, dept_name)
- employees(emp_id, first_name, last_name, monthly_salary, hire_date, dept_id)

## Tasks
- **A1 Number Classifier:** classifies a number as positive, negative or zero using GOTO.
- **A2 Salary Review:** flags a salary below 300,000 for review using GOTO.
- **A3 Illegal GOTO and Fix:** jumping into an IF block raises PLS-00375; fixed by placing the label in scope.
- **A4 Rewrite Without GOTO:** A1 rewritten with IF/ELSIF/ELSE.
- **B1 fn_annual_salary:** monthly salary x 12.
- **B2 fn_years_of_service:** whole years since hire date.
- **B3 fn_calculate_tax:** progressive tax on annual salary.
- **B4 fn_dept_name:** returns the department name, or 'Unknown'.
- **B5 Functions in SQL:** all functions used inside one SELECT.
- **C1 fn_validate_payroll:** validates salary, hire date and department; returns VALID or an error message.

## Assumptions
The task descriptions gave only titles, so I defined the requirements myself.
Tax brackets (assumed): up to 720,000 = 0%; 720,001 to 1,200,000 = 20% of the
amount above 720,000; above 1,200,000 = 20% on the middle band plus 30% above 1,200,000.

## How to Run
1. Run 00_setup/create_tables.sql
2. Run the functions in 02_functions/
3. Run the programs in 01_goto/
4. Run the test files in 03_tests/

## Challenges and Solutions
- ORA-01031 when opening my PDB: I was connected as SYSTEM instead of SYS with the
  SYSDBA role. I changed the connection to SYS as SYSDBA and opened the PDB.
- Didn't know any instruction for the tasks, I had to use some AI tools.

## Notes (AI use)
I used Claude (an AI assistant) to help draft the SQL code and to troubleshoot my
Oracle connection. I ran and tested all the code myself and I can explain it.

## Integrity Statement
This is my own work, completed individually.

## Screenshots
See the screenshots/ folder.

# Reflection

## What I learned about GOTO
GOTO jumps to a label in the same block or an enclosing block. It cannot jump
into an IF, loop or exception handler (PLS-00375). It makes code hard to follow.

## What I learned about functions
functions return one value, can be used in SELECT, avoid repeating logic.

## Challenges
I didn't have much knowledge, especially in codes and the set up of software,
That is why I used some other tools not only to help but to learn.