{Escriba un programa en Pascal que lea dos n´umeros naturales x, n de la entrada est´andar
y calcule la potencia de x elevado a la n. Para este ejercicio, solamente se permite utilizar
las operaciones aritm´eticas elementales de Pascal (+, -, *, /, DIV, MOD). Incluya mensajes
de salida con etiquetas descriptivas para solicitar y exhibir los valores.}
program ejercicio9;
var
x, n, i, pot : integer;
begin
write('Ingrese un valor para x: ');
readln(x);
write('Ingrese un valor para n: ');
readln(n);
{ calculo de la potencia }
pot := 1;
for i:= 1 to n do
pot := pot*x;
writeln('El resultado de ', x:1,' elevado a la ', n:1,' es: ', pot:1, '.')
end.
