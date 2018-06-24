create or replace trigger item_supply_trigger
before insert on  item_supply

for each row

BEGIN
    update item_master set available_stock = available_stock + :new.supply_quantity
    where im_id = :new.im_id;
    
    :new.total_purchase_price := :new.supply_quantity * :new.purchase_unit_price;
    
END;
/
