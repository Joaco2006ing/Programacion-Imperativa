{Escriba un programa donde el usuario ingresa n´umeros enteros positivos, terminando la secuencia con
el n´umero -1. Puede asumir que como m´aximo el usuario ingresar´a una cantidad N de n´umeros, siendo
N una constante declarada al inicio del programa. Luego, el usuario ingresa otra secuencia de n´umeros
enteros positivos que termina en -1. El programa debe mostrar, por cada n´umero de la segunda
secuencia, si ´este pertenece a la primera secuencia.}
{Analice las distintas formas de implementar dicho programa teniendo en cuenta los algoritmos de
b´usquedas y ordenaci´on vistos en el curso y justifique la elecci´on de los algoritmos empleados, de forma
de tener en cuenta el tiempo de ejecuci´on del programa.}
program ejercicio11a;

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

function pertenece(numero: integer; a: ArregloNumeros; cantidad: integer): boolean;
var
  izquierda, derecha, medio: integer;
begin
  izquierda := 1;
  derecha := cantidad;
  while izquierda <= derecha do
  begin
    medio := (izquierda + derecha) div 2;
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
  cantidad, numero: integer;
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
    if pertenece(numero, primeraSecuencia, cantidad) then
      writeln(numero, ' pertenece a la primera secuencia')
    else
      writeln(numero, ' no pertenece a la primera secuencia');
    readln(numero);
  end;
end.

{ Se ordena la primera secuencia una sola vez con selección, cuyo costo es O(N^2).
  Luego se usa búsqueda binaria para cada elemento de la segunda secuencia,
  con costo O(log N) por consulta. Es más eficiente que buscar linealmente
  cada número cuando la segunda secuencia contiene muchos elementos. }