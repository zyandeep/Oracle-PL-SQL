/*
  if user-input qunatity > avaiable_stock then
  item_master.avaiable_stock = 0  AND
  the sale must be on the avaiable_stock 
*/

/*
  :new.xxx  --> used to access the data given in the command line  ( the data is for that table 
                the trigger is created for) 
                
  :old.xxx  --> used to access the data already present in the table (the trigger is created for) 
*/

create or replace trigger sale_trigger
before insert on item_sale
for each row            -- for each and every 'insert event' of item_sale table, the trigger'll be Fired

DECLARE
    var_unit_price item_master.unit_price %type;
    var_available_stock item_master.available_stock %type;

BEGIN

    SELECT unit_price, available_stock INTO var_unit_price, var_available_stock
    FROM item_master WHERE im_id = :new.im_id;
    
    if :new.quantity > var_available_stock then
        :new.quantity := var_available_stock;
    end if;
    
    :new.amount := var_unit_price * :new.quantity;

    update item_master set AVAILABLE_STOCK = AVAILABLE_STOCK - :new.QUANTITY 
    where im_id = :new.im_id;

END;
/ 
