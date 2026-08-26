{En este ejercicio suponga que los datos de entrada seran siempre validos, los programas
a implementar no necesitan efectuar ese control. Verifique que los programas definidos
funcionen correctamente para diferentes datos de entrada. Aplique todas las herramientas
conceptuales y de Pascal que ha aprendido hasta el momento.}
{Escriba programa que calcule el area de un triangulo cuyos lados son de longitud a,
b y c (los cuales seran leidos de la entrada estandar) y emita el resultado en la salida
estandar. El area A de un triangulo se puede calcular a partir de sus lados usando la
formula A = sqrt(s × (s − a) × (s − b) × (s − c)) donde s = (a + b + c)/2.}
program ejercicio12part2;
var
  a,b,c,s,total: real;
begin
  readln(a, b, c);
  s:=(a+b+c)/2;
  total:=sqrt(s*(s-a)*(s-b)*(s-c));
  writeln(total:4:2)
end.
    