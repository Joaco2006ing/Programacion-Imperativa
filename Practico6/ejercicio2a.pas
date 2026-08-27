{Escriba un programa que lea una letra y una oraci´on y despliegue la cantidad de palabras de la oraci´on
que terminan con la letra dada. Se asume que la oraci´on es una secuencia de palabras separadas solo
por espacios, y que terminan con el car´acter punto (.). La oraci´on siempre tiene al menos una palabra.}
program ejercicio2a;
var 
  letraBuscada, carActual, ultimoCar: char;
  contador: integer;
begin
  write('Escribe la letra a buscar: ');
  readln(letraBuscada);
  write('Escribe la oracion: ');
  contador := 0;
  read(carActual); 
  while carActual <> '.' do
  begin
    if carActual = ' ' then
    begin
      if ultimoCar = letraBuscada then
        contador := contador + 1;
    end
    else
      ultimoCar := carActual;

    read(carActual);
  end;
  if ultimoCar = letraBuscada then
    contador := contador + 1;
  writeln('La oracion tiene ', contador, ' palabras que terminan con ', letraBuscada);
end.