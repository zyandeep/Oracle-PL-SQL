create or replace trigger insert_customer
before INSERT on customers

for each row

begin
    
    if :new.age = 18 and :new.salary < 5000 then
        :new.salary := 5000;
    end if;

end;
/
