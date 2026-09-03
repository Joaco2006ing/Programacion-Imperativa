{
  Ejercicio 9
  Consigna:
  Sea el siguiente encabezado del procedimiento raices que calcula las raíces 
  reales de un polinomio de segundo grado, de la forma ax^2 + bx + c:

    procedure raices(a, b, c : integer; cant : integer; raiz1, raiz2 : real)

  donde:
  - a, b y c son los coeficientes del polinomio.
  - cant indica la cantidad de raíces reales diferentes (0, 1 ó 2).
  - raiz1 y raiz2 son las raíces reales del polinomio. Si tiene una raíz real, 
    se almacena en raiz1. Si tiene dos raíces reales diferentes, se almacenan 
    en raiz1 y raiz2.

  (a) Determine para cada parámetro del encabezado del procedimiento si debe 
      ser pasado por valor o referencia. Modifique el encabezado anterior 
      según su respuesta.
  (b) Escriba el cuerpo del procedimiento raices.
  (c) Escriba un programa principal que lea los tres coeficientes e invoque 
      al procedimiento para calcular las raíces del polinomio y exhiba las 
      raíces devueltas.
}
{
  Ejercicio 9 (a)
  Respuesta:
  - 'a', 'b', 'c': Por valor. Son datos de entrada que no necesitan ser modificados fuera del procedimiento.
  - 'cant', 'raiz1', 'raiz2': Por referencia (var). Son parámetros de salida a través de los cuales el procedimiento devuelve los resultados calculados al invocador.

  Encabezado modificado:
  procedure raices(a, b, c : integer; var cant : integer; var raiz1, raiz2 : real);
}
program raicesreales;
var a,b,c,cant:integer;
    r1,r2:real;

procedure raices(a, b, c : integer; var cant : integer; var raiz1, raiz2 : real);
var disc:real;
begin
  disc:=sqr(b)-4*a*c;
  cant:=0;
  if disc>0 then
    begin
      raiz1:=(-b+sqrt(disc))/(2*a);
      raiz2:=(-b-sqrt(disc))/(2*a);
      cant:=2;
    end
   else if disc=0 then
     begin
     raiz1:= -b/(2*a);
     cant:=1;
     end
   else 
   cant:=0;    
end;
begin
write('Escriba los tres coeficientes: ');
readln(a,b,c);
raices(a,b,c,cant,r1,r2);
case cant of
  0: writeln('No tiene raices reales.');
  1: writeln('Tiene una raiz: ', r1:0:2);
  2: writeln('Tiene dos raices: ', r1:0:2, ' y ', r2:0:2);
end;
end.