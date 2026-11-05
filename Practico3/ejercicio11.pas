{Escriba un programa en Pascal que lea de la entrada est´andar un entero positivo n de
exactamente cuatro d´ıgitos y otro entero positivo d de exactamente 1 d´ıgito. Si d aparece
en la representaci´on decimal de n, entonces exhiba en la salida est´andar el n´umero n con
un signo de suma (+) debajo de cada aparici´on de d. En caso contrario, exhiba el mensaje
’d no aparece en n’. Su programa no necesita controlar que los enteros ingresados tengan
cada uno la cantidad de cifras indicada, asuma que as´ı ser´a. Incluya mensajes de salida con
etiquetas descriptivas para el ingreso y el despliegue de datos.}
program ejericio11;
var
  n, d: integer;
  c1, c2, c3, c4: integer;
begin
  write('Ingrese un entero de 4 digitos: ');
  readln(n);
  write('Ingrese un entero de 1 digito: ');
  readln(d);

  c1 := n div 1000;
  c2 := (n mod 1000) div 100;
  c3 := (n mod 100) div 10;
  c4 := n mod 10;
  if (c1 = d) or (c2 = d) or (c3 = d) or (c4 = d) then
  begin
    writeln(n);
    if c1 = d then write('+') else write(' ');
    if c2 = d then write('+') else write(' ');
    if c3 = d then write('+') else write(' ');
    if c4 = d then write('+') else write(' ');
    writeln;
  end
  else
    writeln(d, ' no aparece en ', n);
end.