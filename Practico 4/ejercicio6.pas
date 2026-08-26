{Escriba un programa en Pascal que lea de la entrada est´andar un n´umero natural n. A
continuaci´on, el programa deber´a leer n enteros y luego desplegar en pantalla el mayor y
el menor de ellos. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores}
program ejercicio6;
var
maximo,minimo,numero,i, cantidad : integer;
begin
write('Ingrese un valor para n: ');
readln(cantidad);
write('Ingrese ',cantidad,' enteros: ');
{ inicializacion de maximo y minimo
con el primer numero de la entrada}
read(numero);
maximo:= numero;
minimo:= numero;
{ siguientes numeros }
for i:= 1 to cantidad - 1 do
begin
read(numero);
{ actualizar maximo y minimo }
if numero < minimo then
minimo:= numero
else if numero > maximo then
maximo:= numero
end;
{ mostrar resultados }
writeln('El mayor entero ingresado es: ', maximo);
writeln('El menor entero ingresado es: ', minimo)
end.
