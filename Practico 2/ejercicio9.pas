{La funci´on exp de Pascal calcula un valor igual a la suma de la serie infinita 1 + [x/1!] +
[(x
2
)/2!] + [(x
3
)/3!] + [(x
4
)/4!], siendo x un n´umero real. Escriba un programa en Pascal
que lea por la entrada est´andar un valor real para x entre 0,0 y 1,0. El programa debe
determinar, por un lado, la suma de los primeros cinco t´erminos de la serie infinita y, por
otro lado, el valor de exp(x) mediante la funci´on predefinida. Como resultado, exhiba por
la salida est´andar ambos valores calculados junto con el valor de x. Incluya mensajes de
salida con etiquetas descriptivas para el ingreso y el despliegue de datos.}
program ejercicio9;
var x,terminos, exponencial: real;
begin
  readln(x);
  if  (x >= 0.0) and (x <= 1.0)  then
begin
  terminos:= 1 + x + (sqr(x) / 2) + (x * sqr(x) / 6) + (sqr(sqr(x)) / 24);
  exponencial:= exp(x);
  writeln('El numero introducido es: ', x);
  writeln('La suma de los primeros terminos: ', terminos);
  writeln('Su exponencial es: ', exponencial)
end
else writeln('El numero que pusiste no esta en el rango')
end.
