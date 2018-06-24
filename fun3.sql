create or replace function mul_num(no1 number, no2 number)
    return number
as
result number;

begin
    result := no1 * no2;
    return result; 
end;
/
