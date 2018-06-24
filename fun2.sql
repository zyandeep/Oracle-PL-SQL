create or replace function print_name(nm varchar2)
    return varchar2
as
name varchar2(30);

begin
    name := 'Hello ' || nm;
    return name; 
end;
/
