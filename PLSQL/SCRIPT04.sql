clear screen
SET SERVEROUTPUT ON

DECLARE
  subtotal NUMBER;
  rate NUMBER;
  gratuity NUMBER;
  total NUMBER;
BEGIN
  subtotal := &subtotal;
  rate := &rate;

  gratuity := subtotal * rate / 100;
  total := subtotal + gratuity;

  DBMS_OUTPUT.PUT_LINE('Gratuity = ' || gratuity);
  DBMS_OUTPUT.PUT_LINE('Total = ' || total);
END;
/
