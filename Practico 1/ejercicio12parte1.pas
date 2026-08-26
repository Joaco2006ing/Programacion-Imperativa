{En este ejercicio suponga que los datos de entrada seran siempre validos, los programas
a implementar no necesitan efectuar ese control. Verifique que los programas definidos
funcionen correctamente para diferentes datos de entrada. Aplique todas las herramientas
conceptuales y de Pascal que ha aprendido hasta el momento.}
{Escriba un programa que calcule el perıodo de un pendulo de longitud l y emita el
resultado en la salida estandar. El perıodo de un pendulo esta dado por la siguiente
ecuacion t = 2 × pi × sqrt(l/g) donde pi = 3,14, g = 9,8 y l es leıdo de la entrada
estandar.}
program ejercicio12parte1;
const   
      pi=3.14;
      g=9.8;
var 
  l,t: real;
begin
  readln(l);
  t := 2* pi *sqrt(l / g);
  writeln(t:4:2)
end.