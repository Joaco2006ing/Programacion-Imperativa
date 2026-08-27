{Escriba un programa en Pascal que determine si un n´umero n es primo o no, siendo n
un entero positivo le´ıdo de la entrada est´andar. Exhiba un mensaje de salida indicando el
resultado. Incluya mensajes de salida con etiquetas descriptivas para solicitar los valores.}
program ejercicio7;
var
  n, divisor: integer;
begin
  write('Ingrese un entero positivo: ');
  readln(n);
  if n = 1 then
    writeln('No es primo')
  else
  begin
    divisor := 2;
    while (n mod divisor) <> 0 do
      divisor := divisor + 1;
    if divisor = n then
      writeln('Es primo')
    else
      writeln('No es primo');
  end;
end.