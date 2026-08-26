{Escriba un programa en Pascal que lea de la entrada estandar un entero de hasta cuatro
cifras y lo despliegue en la salida estandar con un punto separando la cifra de los millares
(si la hay) de la cifra de las centenas. Su programa no necesita controlar que el entero
ingresado tenga hasta cuatro cifras, asuma que as´ı ser´a. Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos.}
program ejercicio9;
var
  num, mil, resto, c, d, u: integer;
begin
  write('Ingrese un numero decimal de a lo sumo 4 cifras: ');
  readln(num);

  if num >= 1000 then
  begin
    mil := num div 1000;
    resto := num mod 1000;

    c := resto div 100;         { Centenas }
    d := (resto mod 100) div 10; { Decenas }
    u := resto mod 10;          { Unidades }

    writeln(mil, '.', c, d, u);
  end
  else
    writeln(num);
end.