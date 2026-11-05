{El costo de enviar por correo un paquete es
$77 para paquetes que pesan hasta un kilogramo (inclusive)
$77 mas $56 por kilogramo adicional o fraccion para paquetes que pesan mas de un
kilogramo.
Escriba un programa en Pascal que, lea de la entrada estandar el peso de un paquete como
un numero real de kilogramos y exhiba en la salida estandar dicho peso junto al costo del
envıo, segun se muestra en los siguientes ejemplos. Incluya mensajes de salida con etiquetas
descriptivas para el ingreso y el despliegue de datos.}
program EnvioPaquete;
var
  peso: real;
  costo, extras: integer;
  exceso: real;
begin
  write('Ingrese peso del paquete: ');
  readln(peso);

  if peso <= 1.0 then
    costo := 77
  else
  begin
    exceso := peso - 1.0;
    extras := trunc(exceso);
    { Si sobra alguna fraccion decimal, se cobra un kilo extra entero }
    if exceso > extras then
      extras := extras + 1;
    costo := 77 + (extras * 56);
  end;
  writeln('Peso Costo');
  writeln(peso:0:2, ' $', costo);
end.