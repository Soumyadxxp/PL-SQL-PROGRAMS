CLEAR SCREEN
SET SERVEROUTPUT ON

DECLARE
    ECODE  EMPLOYEES.EMPLOYEE_ID%TYPE;
    MSAL   EMPLOYEES.SALARY%TYPE;      -- Monthly Salary
    SAL    EMPLOYEES.SALARY%TYPE;      -- Annual Salary
    TAX    EMPLOYEES.SALARY%TYPE := 0;
    CESS   EMPLOYEES.SALARY%TYPE := 0;
    TOTAL  EMPLOYEES.SALARY%TYPE := 0;
BEGIN
    ECODE := &EMPLOYEE_ID;

    SELECT SALARY
    INTO MSAL
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = ECODE;

    -- Convert monthly salary to annual salary
    SAL := MSAL * 12;

    -- Income Tax Calculation
    IF SAL <= 160000 THEN
        TAX := 0;

    ELSIF SAL <= 300000 THEN
        TAX := (SAL - 160000) * 0.10;

    ELSIF SAL <= 500000 THEN
        TAX := 14000 + (SAL - 300000) * 0.20;

    ELSE
        TAX := 54000 + (SAL - 500000) * 0.30;
    END IF;

    -- Educational Cess @ 3% if income > 2,00,000
    IF SAL > 200000 THEN
        CESS := TAX * 0.03;
    END IF;

    TOTAL := TAX + CESS;

    DBMS_OUTPUT.PUT_LINE('ANNUAL INCOME       : ' || SAL);
    DBMS_OUTPUT.PUT_LINE('INCOME TAX          : ' || TAX);
    DBMS_OUTPUT.PUT_LINE('EDUCATIONAL CESS    : ' || CESS);
    DBMS_OUTPUT.PUT_LINE('TOTAL TAX PAYABLE   : ' || TOTAL);
END;
/
