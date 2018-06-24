create or replace FUNCTION big_num(x number, y number)
    return number
AS

begin
    if x > y then
        return x;
    else
        return y;
    end if;
end;
/
