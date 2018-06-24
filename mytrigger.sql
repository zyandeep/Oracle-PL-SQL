create or replace trigger display_changes
before INSERT OR DELETE OR UPDATE on customers

for each row
when :new

begin
    
    if :new.age = 18 and :new.salary < 5000 then
        :new.salary := 5000;
    end if;

end;
/2
