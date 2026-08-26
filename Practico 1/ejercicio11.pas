{Considere las siguientes dos propiedades:
i) ln(ab) = b × ln(a)
ii) eln(x) = x
donde a y b son reales y a > 0.
Utilizando dichas propiedades, el operador de multiplicacion (∗) y las funciones estandar
de Pascal ln y exp escriba una expresi´on en Pascal que produzca el valor de ab.Luego
escriba un programa que evalue dicha expresion y emita el resultado en la salida estandar.
Los valores para a y b seran leidos desde la entrada estandar.}
program Ejercicio11;
var
  a, b, resultado : Real;
begin
  readLn(a, b);
  resultado := exp(b * ln(a));
  writeLn(resultado:0:4);
end.