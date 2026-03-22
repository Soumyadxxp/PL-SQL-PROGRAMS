CLEAR SCREEN
SET SERVEROUTPUT ON

DECLARE
    A NUMBER := &AMOUNT;
    R NUMBER := &SAVING;
    I NUMBER := &INTEREST;
    BAL NUMBER := 0;
    M NUMBER := 0;
BEGIN
    WHILE BAL < A LOOP
        BAL := BAL + R + (BAL * I / 1200);
        M := M + 1;
        DBMS_OUTPUT.PUT_LINE('MONTH '||M||' BALANCE : '||BAL);
    END LOOP;
END;
/
