{Escriba un programa en Pascal que transforme un n´umero octal (base ocho) de tres d´ıgitos
en su correspondiente n´umero equivalente en base 10. Por ejemplo, el n´umero octal de tres
d´ıgitos 415 equivale al valor decimal 4 × 8
2 + 1 × 8
1 + 5 × 8
0
, o sea, 269. El programa
deber´a leer por la entrada est´andar el n´umero octal y realizar las operaciones aritm´eticas
necesarias para calcular el n´umero equivalente en base 10. Como resultado, exhiba por la
salida est´andar el valor octal ingresado junto con el n´umero equivalente en base 10. Incluya
mensajes de salida con etiquetas descriptivas para el ingreso y el despliegue de datos.}
program ejercicio10;
var
  octal, decimal : Integer;
  d2, d1, d0     : Integer;

begin
  write('Ingrese un numero octal de tres digitos: ');
  readLn(octal);

  { Extraer cada digito }
  d2 := octal DIV 100;         { Centenas }
  d1 := (octal DIV 10) MOD 10; { Decenas }
  d0 := octal MOD 10;          { Unidades }

  { Convertir de base 8 a base 10 }
  decimal := d2 * 64 + d1 * 8 + d0;

  { Despliegue de resultados }
  writeLn('Octal ', octal:1, ' = Decimal ', decimal:1);
end.