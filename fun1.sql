create or replace function add_num(no1 number, no2 number)
    return number
as

begin
    return no1 * no2;
end;
/