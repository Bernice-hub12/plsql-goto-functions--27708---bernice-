SET SERVEROUTPUT ON

-- ILLEGAL: jumping INTO an IF block. Expected error: PLS-00375
BEGIN
    GOTO inside_if;
    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('inside');
    END IF;
END;
/

-- FIX: the label is at the same block level as the GOTO
BEGIN
    GOTO target;
    <<target>>
    DBMS_OUTPUT.PUT_LINE('Fixed: label is in the same block level');
END;
/