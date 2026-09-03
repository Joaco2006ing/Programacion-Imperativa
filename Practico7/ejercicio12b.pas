program ejercicio12b;
var a, b: integer;
function multiplo(a, b: integer): boolean;
begin
  multiplo := (a mod b = 0) or (b mod a = 0);
end;
begin
  read(a);
  while a <> -1 do
  begin
    readln(b); 

    if multiplo(a, b) then
      writeln('Si')
    else
      writeln('No');

    read(a); 
  end;
end.