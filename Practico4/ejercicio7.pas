{Escriba un programa en Pascal que lea de la entrada est´andar n enteros positivos, todos
menores que 60 y produzca una gr´afica de n barras horizontales formadas por asteriscos
(similar a la que se muestra en el ejemplo). La k-´esima barra deber´a tener tantos asteriscos
como indique el k-´esimo entero (de entre los n enteros ingresados). Su programa no necesita
controlar que los enteros ingresados sean menores que 60 (asuma que as´ı ser´a). Incluya
mensajes de salida con etiquetas descriptivas para solicitar y exhibir los valores.}
program ejercicio7;
const SIMBOLO = '*';
var n, num,i,j: integer;
begin
  write('Ingrese un valor para n: ');
  readln(n);
  write('Ingrese ',n,' enteros: ');
  for i:= 1 to n do 
    begin
      read(num);
      for j:= 1 to num do
        write(SIMBOLO);
      writeln
      end
end.
