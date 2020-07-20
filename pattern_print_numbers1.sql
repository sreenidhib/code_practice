/*print the pattern below
1
4   6
9   11  13
16  18  20  22
result initialised with value of 1
nested loops implemented. Outer loop 'i' will iterate upto no of lines (4) and inner loop 'j' will iterate upto value of 'i'.
if j=1 the default value of result printed, else result incremented by 2 (r=r+2) and tabbing is done with chr(9)
inner loop (j) ends
result value incremented by 3 in outer loop (i) (r=r+3) and new line implemented with chr(10)
*/
set serveroutput on
declare
r number := 1;
begin
for i in 1..4 loop
  for j in 1..i loop
    if j!=1 then
      r := r+2;
    end if;
    dbms_output.put(r||chr(9));
  end loop;
  r := r+3;
  dbms_output.put_line(chr(10));
end loop;
end;
