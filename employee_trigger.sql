create or replace trigger employee_income_trigger
before insert on employee_income

for each row

declare
    var_gender employee.gender %type;
    var_pan employee.pan %type;
    var_count number(3);

begin

    select gender, pan into var_gender, var_pan from employee
    where e_id = :new.e_id;
    
    select count(*) into var_count from employee_income 
    where e_id = :new.e_id and to_char(entry_date) = to_char(:new.entry_date);
    
    
    if var_gender = 'Male' and :new.INCOME_AMOUNT <= 50000 then
        :new.tax := 0;
        
        if var_count > 0 then
            :new.remark := 'for audit';
        else
            :new.remark := null;
        end if;
        
    
    elsif var_gender = 'Male' and :new.INCOME_AMOUNT > 50000 then
        :new.tax := (:new.INCOME_AMOUNT - 50000) * (10/100);
        
        if var_count > 0 then
            :new.remark := 'for audit';
        else
            :new.remark := var_pan;
        end if;
        
        
    elsif var_gender = 'Female' and :new.INCOME_AMOUNT <= 60000 then
        :new.tax := 0;
        
        if var_count > 0 then
            :new.remark := 'for audit';
        else
            :new.remark := null;
        end if; 
             
    elsif var_gender = 'Female' and :new.INCOME_AMOUNT > 60000 then
        :new.tax := (:new.INCOME_AMOUNT - 60000) * (8/100);
        
        if var_count > 0 then
            :new.remark := 'for audit';
        else
            :new.remark := var_pan;
        end if; 
        
    end if;
    
end;
/
