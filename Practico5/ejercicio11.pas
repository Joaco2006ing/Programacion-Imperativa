{Escriba un programa en Pascal que lea de la entrada est´andar dos enteros n y b, calcule
y exhiba la parte entera del logaritmo de n en base b. Dicho resultado es un entero k que
cumple lo siguiente: bk <= n < bk+1. El algoritmo solo puede realizar divisiones y sumas.
Asuma que los valores ingresados cumplen que n > 0 y b > 1. Incluya mensajes de salida
con etiquetas descriptivas para solicitar y/o exhibir los valores}
program ejercicio11;
var
  n, b, k: integer;
begin
  write('Ingrese numero: ');
  readln(n);
  write('Ingrese base: ');
  readln(b);
  k := 0;
  while n >= b do
  begin
    n := n div b;
    k := k + 1;
  end;
  writeln('Resultado: ', k);
end.