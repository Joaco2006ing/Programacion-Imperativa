{Con el resultado del ejercicio 11 del Pr´actico 1, escriba un programa en Pascal para determinar la ra´ız cuadrada de un n´umero real positivo a mediante el c´alculo de a
0,5
. El
programa deber´a leer el valor para a por la entrada est´andar. Como resultado, exhiba por
la salida est´andar el valor de a, el valor de a
0,5
, y el valor de sqrt(a) (el cual se calcular´a
con la funci´on predefinida). Incluya mensajes de salida con etiquetas descriptivas para el
ingreso y el despliegue de datos.}
program ejercicio10;
var
  num, raiz:real;
begin
  writeln('Introduzca un numero');
  readln(num);
  raiz:= sqrt(num);
  writeln('El numero introducido es: ', num);
  writeln('Raiz cuadrada calculada: ', raiz);
  writeln('Valor de Sqrt (num): ', raiz)
end.
