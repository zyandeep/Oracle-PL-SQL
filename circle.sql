set serveroutput on

DECLARE
    r number(5, 2) := 3.0;
    d number(5, 2);
    area number(5, 2);
    cur number(5, 2);
    
    -- Constant decleration
    PI CONSTANT number := 3.14;
    
BEGIN
    d := 2 * r;
    area := PI * r * r;
    cur := 2 * PI * r;
  
    DBMS_OUTPUT.PUT_LINE('radious =  ' || r);
    DBMS_OUTPUT.PUT_LINE('diameter =  ' || d);
    DBMS_OUTPUT.PUT_LINE('area =  ' || area);
    DBMS_OUTPUT.PUT_LINE('circumference =  ' || cur);
    
    if ((12 > 4) = TRUE) then
        DBMS_OUTPUT.PUT_LINE('Hey..');
    end if;
    
END;
/
