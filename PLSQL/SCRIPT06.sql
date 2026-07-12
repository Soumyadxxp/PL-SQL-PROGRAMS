
clear screen


SET SERVEROUTPUT ON

BEGIN
  INSERT INTO Emp VALUES(&eno, '&ename', &sal);
  COMMIT;
END;
/
