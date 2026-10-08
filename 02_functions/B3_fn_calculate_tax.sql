CREATE OR REPLACE FUNCTION fn_calculate_tax(p_annual IN NUMBER)
RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual IS NULL OR p_annual < 0 THEN
        RETURN NULL;
    END IF;
    IF p_annual <= 720000 THEN
        v_tax := 0;
    ELSIF p_annual <= 1200000 THEN
        v_tax := (p_annual - 720000) * 0.20;
    ELSE
        v_tax := (1200000 - 720000) * 0.20 + (p_annual - 1200000) * 0.30;
    END IF;
    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/