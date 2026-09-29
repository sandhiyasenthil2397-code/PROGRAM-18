CREATE OR REPLACE FUNCTION count_students(
    p_department IN VARCHAR2
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE department = p_department;

    RETURN v_count;
END;
/
