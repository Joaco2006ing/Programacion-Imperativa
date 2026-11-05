{El error relativo en una medici´on m es la raz´on de la diferencia absoluta entre la medici´on
y el valor verdadero v al valor verdadero, la cual se calcula como |m − v|/v. Escriba un
programa en Pascal que lea por la entrada est´andar dos n´umeros reales que representan
la medici´on m y el valor verdadero v. El programa debe calcular el error relativo de la
medici´on y exhibirlo en la salida est´andar junto con la medici´on y el valor verdadero.
Incluya mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de
datos.}
program ejercicio7;
var m, v, e: real;
begin
  write('Ingrese la medicion: ');
  readLn(m);
  write('Ingrese el valor verdadero: ');
  readLn(v);
  e:= abs(m-v)/v;
  writeln('La medicion es: ', m);
  writeln('El valor verdadero es: ', v);
  writeln('El error relativo es: ', e)
end.