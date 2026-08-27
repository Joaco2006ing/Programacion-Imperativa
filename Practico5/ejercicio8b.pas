{ Se desea implementar un programa que realice las funciones de una calculadora simple. Los
datos de entrada son una secuencia de enteros sin signo y los operadores +, *, / y -, seguida
de un signo =. Cada entero de la entrada est´a seguido por un operador salvo el ´ultimo que
est´a seguido por el s´ımbolo =. Los operadores se aplican en el orden en que aparecen sin
importar la precedencia. Si bien se ingresa el operador de la divisi´on con el s´ımbolo /, el
comportamiento debe ser el de DIV. Asuma que se ingresa al menos un n´umero.
(b) Escriba un programa en Pascal que resuelva lo pedido, suponiendo que cada entero
est´a separado del s´ımbolo que lo sigue por 0 o m´as espacios.}
program ejercicio8b;
var
  c, op: char;
  total, actual: integer;
  leyendoNum: boolean;
begin
  total := 0;
  actual := 0;
  op := '+';
  leyendoNum := false;
  read(c);
  while c <> '=' do
  begin
    if (c >= '0') and (c <= '9') then
    begin
      actual := actual * 10 + (ord(c) - ord('0'));
      leyendoNum := true;
    end
    else if (c = '+') or (c = '-') or (c = '*') or (c = '/') then
    begin
      if leyendoNum then
      begin
        case op of
          '+': total := total + actual;
          '-': total := total - actual;
          '*': total := total * actual;
          '/': total := total div actual;
        end;
        actual := 0;
        leyendoNum := false;
      end;
      op := c;
    end;
    read(c);
  end;
  if leyendoNum then
    case op of
      '+': total := total + actual;
      '-': total := total - actual;
      '*': total := total * actual;
      '/': total := total div actual;
    end;
  writeln(total);
end.