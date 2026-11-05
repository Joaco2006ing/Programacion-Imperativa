{Escriba un programa en Pascal que lea de la entrada est´andar un car´acter c y un natural n.
El programa debe desplegar un tri´angulo de n l´ıneas formado por el car´acter c (similar al
que se muestra en el ejemplo). La primera l´ınea debe tener n ocurrencias de c. La segunda
l´ınea debe tener n-1 ocurrencias de c (y as´ı sucesivamente). La ´ultima l´ınea debe tener
1 ocurrencia de c. Incluya mensajes de salida con etiquetas descriptivas para solicitar y
exhibir los valores.}
program ejercicio8;
var car:char;
  n ,i,j: integer;
begin
  write('Ingrese un caracter: ');
  readln(car);
  write('Ingrese un valor para n: ');
  readln(n);
  for i:= n downto 1 do 
  begin 
    for j:= 1 to i do 
      write(car);
    writeln
  end
end.
