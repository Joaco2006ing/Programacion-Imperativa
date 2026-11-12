{Modifique su programa para que imprima la cantidad de comparaciones que fueron necesarias para
determinar si un n´umero pertenece a la secuencia. ¿C´omo relaciona la cantidad de comparaciones con
los algoritmos de b´usqueda vistos en el curso y la forma de implementar su programa?}

program ejercicio11b;

const
  N = 100;

type
  Rango = 1..N;
  ArregloNumeros = array[Rango] of integer;

procedure ordenar(var a: ArregloNumeros; cantidad: integer);
var
  i, j, posicion: integer;
  auxiliar: integer;
begin
  i := 1;
  while i < cantidad do
  begin
    posicion := i;
    j := i + 1;
    while j <= cantidad do
    begin
      if a[j] < a[posicion] then
        posicion := j;
      j := j + 1;
    end;
    auxiliar := a[i];
    a[i] := a[posicion];
    a[posicion] := auxiliar;
    i := i + 1;
  end;
end;

function pertenece(numero: integer; a: ArregloNumeros; cantidad: integer;
  var comparaciones: integer): boolean;
var
  izquierda, derecha, medio: integer;
begin
  izquierda := 1;
  derecha := cantidad;
  comparaciones := 0;
  while izquierda <= derecha do
  begin
    medio := (izquierda + derecha) div 2;
    comparaciones := comparaciones + 1;
    if a[medio] = numero then
    begin
      pertenece := true;
      exit;
    end;
    if numero < a[medio] then
      derecha := medio - 1
    else
      izquierda := medio + 1;
  end;
  pertenece := false;
end;

var
  primeraSecuencia: ArregloNumeros;
  cantidad, numero, comparaciones: integer;
begin
  cantidad := 0;
  readln(numero);
  while numero <> -1 do
  begin
    cantidad := cantidad + 1;
    primeraSecuencia[cantidad] := numero;
    readln(numero);
  end;

  ordenar(primeraSecuencia, cantidad);

  readln(numero);
  while numero <> -1 do
  begin
    if pertenece(numero, primeraSecuencia, cantidad, comparaciones) then
      writeln(numero, ' pertenece a la primera secuencia')
    else
      writeln(numero, ' no pertenece a la primera secuencia');
    writeln('Comparaciones realizadas: ', comparaciones);
    readln(numero);
  end;
end.

{ La búsqueda binaria necesita como máximo O(log N) comparaciones porque la
  secuencia se ordena previamente. En cambio, una búsqueda lineal podría
  necesitar hasta N comparaciones por cada número consultado. }