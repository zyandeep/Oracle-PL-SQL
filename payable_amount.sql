create or replace function cal_payable(a number, sale_quantity number)
return number
is

var_unit_price number;
var_payable_amount number;


begin
    select UNIT_PRICE into var_unit_price from item_master where item_master.I_ID = a;
    
    var_payable_amount := sale_quantity * var_unit_price;
    
    return var_payable_amount;
end;
/
