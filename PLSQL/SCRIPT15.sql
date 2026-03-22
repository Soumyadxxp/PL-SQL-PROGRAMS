CLEAR SCREEN
SET SERVEROUTPUT ON

DECLARE
    M NUMBER;
    Y NUMBER;
    DAYS NUMBER;
    MNAME VARCHAR2(15);
BEGIN
    M := &MONTH;
    Y := &YEAR;

    
    MNAME := TO_CHAR(TO_DATE(M, 'MM'), 'MONTH');

    
    DAYS := TO_NUMBER(
                TO_CHAR(
                    LAST_DAY(TO_DATE('01-' || M || '-' || Y, 'DD-MM-YYYY')),
                    'DD'
                )
            );

    DBMS_OUTPUT.PUT_LINE(TRIM(MNAME) || ' ' || Y || ' HAS ' || DAYS || ' DAYS' );
END;
/
