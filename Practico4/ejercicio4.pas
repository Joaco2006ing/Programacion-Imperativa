{ Escriba un programa en Pascal que lea de la entrada est´andar tres n´umeros naturales a, b
y n. Se supone n mayor que 0 y a menor o igual que b. El programa debe desplegar todos
los m´ultiplos de n que haya entre a y b.}
program ejercicio4;
var a,b,n,i:integer;
begin
  write('Escriba tres numeros naturales:');
  readln(a, b, n); 
      for i:= a to b do
      begin
      if i mod n = 0 then
      write(i, ' ');
      end;
end.