{Escriba un programa en Pascal que lea de la entrada est´andar un n´umero natural n y
despliegue en pantalla todos los divisores naturales de n.}
program ejercicio5;
var i,n:integer;
begin
  write('Escriba un numero natural n: ');
  readln(n);
  for i:= 1 to n do
    begin
      if n mod i = 0 then
        write(i, ' ');
    end;
end.