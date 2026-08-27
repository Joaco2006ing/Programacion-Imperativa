{ Todo n´umero natural positivo num tiene una descomposici´on ´unica de la forma num =
2n × val, donde val es un n´umero natural impar y n >= 0. Escriba un programa en Pascal
que lea de la entrada est´andar un entero positivo num, calcule y exhiba los correspondientes
valores de val y n. Incluya mensajes de salida con etiquetas descriptivas para solicitar los
valores.}
program ejercicio10;
var
  num, val, n: integer;
begin
  write('Ingrese un numero natural positivo: ');
  readln(num);
  val := num;
  n := 0;
  while (val mod 2 = 0) do
  begin
    val := val div 2;
    n := n + 1;
  end;
  writeln(num, ' = 2^', n, ' * ', val);
end.