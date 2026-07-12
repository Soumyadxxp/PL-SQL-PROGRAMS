CLEAR SCREEN
SET SERVEROUTPUT ON

DECLARE
    REC SALGRADE%ROWTYPE;
BEGIN
    FOR GRD IN REVERSE 1..5 LOOP
     
            SELECT *
            INTO REC
            FROM SALGRADE
            WHERE GRADE = GRD;

            DBMS_OUTPUT.PUT_LINE(
                'GRADE: ' || REC.GRADE ||
                '  MIN SAL: ' || REC.LOSAL ||
                '  MAX SAL: ' || REC.HISAL );
       
    END LOOP;
END;
/
