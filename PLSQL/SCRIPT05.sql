clear screen


SET SERVEROUTPUT ON

DECLARE
  n NUMBER;
  sumd NUMBER;
BEGIN
  n := &number;

  sumd := MOD(n,10)
        + MOD(TRUNC(n/10),10)
        + MOD(TRUNC(n/100),10)
        + MOD(TRUNC(n/1000),10);

  DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || sumd);
END;
/
