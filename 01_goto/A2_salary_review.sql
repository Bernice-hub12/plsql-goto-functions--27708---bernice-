SET SERVEROUTPUT ON
DECLARE
    v_salary NUMBER;
BEGIN
    SELECT monthly_salary INTO v_salary FROM employees WHERE emp_id = 4;

    IF v_salary < 300000 THEN
        GOTO needs_review;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary OK: ' || v_salary);
    GOTO finish;

    <<needs_review>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ' is below threshold: review needed');

    <<finish>>
    NULL;
END;
/