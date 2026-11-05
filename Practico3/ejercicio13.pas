{Escriba un programa en Pascal que convierta un n´umero positivo hexadecimal de tres
d´ıgitos tomado de la entrada est´andar en su equivalente en base 10. Un d´ıgito hexadecimal
es uno de los d´ıgitos 0 a 9 o A(10), B(11), C(12), D(13), E(14), o F(15). El equivalente
decimal de un n´umero hexadecimal de la forma abc se calcula como: a × 162 + b × 16 + c.
Su programa deber´a leer por la entrada est´andar el n´umero hexadecimal y realizar las
operaciones aritm´eticas necesarias para calcular el n´umero equivalente en base 10. Como
resultado, exhiba por la salida est´andar el valor hexadecimal ingresado junto con el n´umero
equivalente en base 10. Incluya mensajes de salida con etiquetas descriptivas para el ingreso
y el despliegue de datos.
Para este ejercicio se recomienda estudiar el uso de la funci´on ord para caracteres en el
cap´ıtulo 8 del libro, p´agina 334 (ord y chr).}
program ejercicio13;
var
  c1, c2, c3: char;
  v1, v2, v3, totalDecimal: integer;
begin
  write('Ingrese numero positivo hexadecimal de 3 cifras: ');
  readln(c1, c2, c3);

  { Conversion de c1 }
  if (c1 >= '0') and (c1 <= '9') then
    v1 := ord(c1) - ord('0')
  else
    v1 := ord(c1) - ord('A') + 10;

  { Conversion de c2 }
  if (c2 >= '0') and (c2 <= '9') then
    v2 := ord(c2) - ord('0')
  else
    v2 := ord(c2) - ord('A') + 10;

  { Conversion de c3 }
  if (c3 >= '0') and (c3 <= '9') then
    v3 := ord(c3) - ord('0')
  else
    v3 := ord(c3) - ord('A') + 10;

  { Formula: a * 16^2 + b * 16 + c }
  totalDecimal := (v1 * 256) + (v2 * 16) + v3;

  writeln('Hexadecimal ', c1, c2, c3, ' = Decimal ', totalDecimal);
end.