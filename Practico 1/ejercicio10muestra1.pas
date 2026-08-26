{Para cada uno de los siguientes programas en Pascal, trate de anticipar cu´al va a ser la
salida que emitir´a al ejecutarlo. Despu´es, ejec´utelo en m´aquina y compare lo que esperaba
con la salida que se exhibe. Ejecute el segundo programa varias veces, y use n´umeros tanto
positivos como negativos, con partes fraccionarias mayores, menores, y exactamente iguales
que 0.5. Cuando el programa espere el dato de entrada, introduzca su n´umero real y digite
ENTER.}
program Muestra1;
const
  pi = 3.1415926535;
  r1 = 2.0;
  r2 = 5.0;
var 
  area: Real;
begin
  area := pi * r1 * r1;
  writeLn (r1:4:2 ,area:6:2);
  area := pi * sqr (r2);
  writeLn (r2:4:2 ,area:6:2)
end.
