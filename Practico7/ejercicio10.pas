{
  Ejercicio 10
  Consigna:
  (a) Escriba una función llamada distancia que tenga cuatro parámetros de entrada 
      (reales) llamados x1, y1, x2, y2, que representan las coordenadas en el plano 
      de los puntos (x1, y1) y (x2, y2). La función debe calcular y retornar la 
      distancia entre ambos puntos.
  (b) Escriba un programa principal que lea las coordenadas de dos puntos y 
      exhiba la distancia entre ambos. El programa debe invocar a la función distancia.

  Ejemplo:
  Ingrese las coordenadas del primer punto: 1 2
  Ingrese las coordenadas del segundo punto: 5 7
  La distancia entre los puntos es: 6.40
}
program distanciaentredospuntos;
var x1,y1,x2,y2,resu:real;
function distancia(x1,y1,x2,y2:real):real;
begin
  distancia:=sqrt(sqr(x2-x1)+sqr(y2-y1));
end;
begin
  write('Ingresa las coordenadas del primer punto: ');
  readln(x1,y1);
  write('Ingresa las coordenadas del segundo punto: ');
  readln(x2,y2);
  resu:= distancia(x1,y1,x2,y2);
  writeln('La distancia entre los puntos es: ', resu:0:2);
end.