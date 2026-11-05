{(d) Escriba un programa principal que lea de la entrada una matriz (usando la parte b) y dos valores m y
n y despliegue el resultado de intercambiar las filas m y n (usando la parte c). En caso de que m y/o n
no correspondan a n´umeros de fila v´alidos, se debe emitir un mensaje de error.}
program ejercicio4d;

type
  TipoMatriz = array[1..10, 1..10] of integer;

var
  matriz: TipoMatriz;
  m, n: integer;

begin
  cargarMatriz(matriz);

  readln(m);
  readln(n);

  if (m < 1) or (m > 10) or (n < 1) or (n > 10) then
    writeln('Error: numero de fila invalido')
  else
  begin
    intercambiarFilas(matriz, m, n);
    for m := 1 to 10 do
begin
  for n := 1 to 10 do
    write(matriz[m, n], ' ');
  writeln;
end;
  end;
end.