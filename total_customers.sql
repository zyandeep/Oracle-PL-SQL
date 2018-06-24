create or replace FUNCTION total_customers
    return number
AS
total number(2) := 0;

begin
    select count(*) into total from customers;
    return total; 
end;
/
