{Escriba un programa en Pascal que encuentre las ra´ıces de la ecuaci´on cuadr´atica ax2 + bx + c = 0
donde a, b, y c son valores reales le´ıdos de la entrada est´andar. El programa deber´a imprimir
en la salida est´andar uno de los siguientes mensajes, seg´un corresponda. Incluya mensajes
de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.
Dos raices reales diferentes: xxx.xx y xxx.xx
Dos raices reales iguales: xxx.xx
Dos raices complejas diferentes: xxx.xx (+/-) i xxx.xx}
program ejercicio12;
var
  a, b, c, disc, rReal, rImag, x1, x2: real;
begin
  writeln('Ingrese los coeficientes a, b y c: ');
  readln(a, b, c);

  disc := sqr(b) - 4 * a * c;

  if disc < 0 then
  begin
    rReal := -b / (2 * a);
    rImag := sqrt(-disc) / (2 * a);
    writeln('Dos raices complejas diferentes: ', rReal:0:2, ' (+/-) i ', rImag:0:2);
  end
  else if disc = 0 then
  begin
    x1 := -b / (2 * a);
    writeln('Dos raices reales iguales: ', x1:0:2);
  end
  else
  begin
    x1 := (-b + sqrt(disc)) / (2 * a);
    x2 := (-b - sqrt(disc)) / (2 * a);
    writeln('Dos raices reales diferentes: ', x1:0:2, ' y ', x2:0:2);
  end;
end.