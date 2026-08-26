{Escriba un programa en Pascal que determine la suma y el promedio de todos los
enteros positivos le´ıdos. Exhiba ambos resultados en la salida est´andar.}
program ejercicio4;
var valor,suma, contador,prom: integer;
begin
  write('Ingrese una secuencia de numeros: ');
suma := 0;
contador:=0;
prom:=0;
read (valor);
while valor > 0 do
begin
suma:= suma +valor;
contador:=contador+1;
read(valor)
end;
prom:= suma div contador;
writeln('La suma total es ', suma);
writeln('El promedio total es ', prom);
end.
