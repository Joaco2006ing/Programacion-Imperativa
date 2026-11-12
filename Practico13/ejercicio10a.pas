const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloNumeros = array [rango] of integer;
{Escriba el procedimiento ordenarParesImpares que recibe un arreglo de enteros a desordenado y ordena de forma ascendente los elementos que ocupan posiciones pares en el arreglo y de forma descendente
los elementos que ocupan las posiciones impares del arreglo.
procedure ordenarParesImpares(var a:arregloNumeros)}

procedure ordenarParesImpares(var a: ArregloNumeros);
var
  i, j, posicion: Rango;
  auxiliar: integer;
begin
  i := 1;
  while i <= MAX do
  begin
    posicion := i;
    j := i + 2;

    while j <= MAX do
    begin
      if (i mod 2 = 1) and (a[j] > a[posicion]) then
        posicion := j
      else if (i mod 2 = 0) and (a[j] < a[posicion]) then
        posicion := j;
      j := j + 2;
    end;

    auxiliar := a[i];
    a[i] := a[posicion];
    a[posicion] := auxiliar;
    i := i + 1;
  end;
end;