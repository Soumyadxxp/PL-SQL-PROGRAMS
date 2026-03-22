clear screen
set serveroutput on
DECLARE
  f NUMBER;
  c NUMBER;
BEGIN
  f := &fahrenheit;
  c := (5/9) * (f - 32);
  DBMS_OUTPUT.PUT_LINE('Celsius = ' || c);
END;
/
