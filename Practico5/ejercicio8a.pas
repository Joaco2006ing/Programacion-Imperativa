{Se desea implementar un programa que realice las funciones de una calculadora simple. Los
datos de entrada son una secuencia de enteros sin signo y los operadores +, *, / y -, seguida
de un signo =. Cada entero de la entrada est´a seguido por un operador salvo el ´ultimo que
est´a seguido por el s´ımbolo =. Los operadores se aplican en el orden en que aparecen sin
importar la precedencia. Si bien se ingresa el operador de la divisi´on con el s´ımbolo /, el
comportamiento debe ser el de DIV. Asuma que se ingresa al menos un n´umero.
(a) Escriba un programa en Pascal que resuelva lo pedido, suponiendo que no hay espacios
en la entrada.}
program ejercicio8a;
var
  c: char;
  total, actual: integer;
  op: char;
begin
  total := 0;
  actual := 0;
  op := '+'; 
  read(c);
  while c <> '=' do
  begin
    if (c >= '0') and (c <= '9') then
    
      actual := actual * 10 + (ord(c) - ord('0'))
    else
    begin
      case op of
        '+': total := total + actual;
        '-': total := total - actual;
        '*': total := total * actual;
        '/': total := total div actual;
      end;
      op := c;      
      actual := 0;  
    end;
    read(c);
  end;
  case op of
    '+': total := total + actual;
    '-': total := total - actual;
    '*': total := total * actual;
    '/': total := total div actual;
  end;
  writeln(total);
end.