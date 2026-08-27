{Escriba un programa en Pascal que determine y exhiba la desviaci´on est´andar de n n´umeros
reales positivos. Los n´umeros deben ser le´ıdos de la entrada est´andar, donde se ingresar´a un
n´umero negativo al final como centinela. La desviaci´on est´andar de un conjunto de n´umeros
x1, x2, ..., xn se define como la ra´ız cuadrada de la expresi´on s/n−a2 donde a es el promedio
de los valores xi ((x1 + x2 + ... + xn)/n) y s es la suma de los cuadrados de los valores xi
(x12 + x22 + ... + xn2). Incluya mensajes de salida con etiquetas descriptivas para solicitar
y/o exhibir los valores.}
program ejercicio9;
var
  x, suma, sumaCuadrados, promedio, desviacion: real;
  n: integer;
begin
  suma := 0.0;
  sumaCuadrados := 0.0;
  n := 0;
  read(x);
  while x >= 0.0 do
  begin
    suma := suma + x;
    sumaCuadrados := sumaCuadrados + sqr(x);
    n := n + 1;
    read(x);
  end;
  if n > 0 then
  begin
    promedio := suma / n;
    desviacion := sqrt((sumaCuadrados / n) - sqr(promedio));
    writeln('La desviacion estandar es ', desviacion:0:2);
  end
  else
    writeln('No se ingresaron numeros validos.');
end.