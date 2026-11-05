{ Escriba un programa en Pascal que calcule el factorial de un n´umero natural n (leido
de la entrada est´andar). Para este ejercicio, solamente se permite utilizar las operaciones
aritm´eticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes de salida con
etiquetas descriptivas para solicitar y exhibir los valores.}
program ejercicio10;
var i,fact,n:integer;
begin
  write('Escriba el numero que quieras calcular el factorial:');
  readln(n);
  fact:= 1;
  for i:= 1 to n do
    fact:= fact * i;
  writeln('El factorial de ', n,' es ', fact);
end.