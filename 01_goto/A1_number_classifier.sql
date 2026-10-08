SET SERVEROUTPUT ON
DECLARE
    v_num NUMBER := 7;
BEGIN
    IF v_num > 0 THEN
        GOTO positive;
    ELSIF v_num < 0 THEN
        GOTO negative;
    ELSE
        GOTO zero_case;
    END IF;

    <<positive>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is positive');
    GOTO done;

    <<negative>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is negative');
    GOTO done;

    <<zero_case>>
    DBMS_OUTPUT.PUT_LINE('The number is zero');

    <<done>>
    NULL;
END;
/