{Escriba un programa en Pascal que determine el n´umero m´as grande y el m´as peque˜no
de todos los enteros positivos le´ıdos. Exhiba ambos resultados en la salida est´andar.}
program ejercicio4b;
var maximo, minimo, numero: integer;
begin
  write('Ingrese una secuencia de numeros (termina con -1): ');
  read(numero);
  maximo := numero;
  minimo := numero;
  repeat
    if numero > maximo then 
      maximo := numero
    else if numero < minimo then 
      minimo := numero;
    read(numero);
  until numero = -1;
  writeln('El mayor entero ingresado es: ', maximo);
  writeln('El menor entero ingresado es: ', minimo);
end.