const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloEnteros = array [rango] of integer;
{(a) Escriba la funci´on estaOrdenado que determina si el arreglo a est´a ordenado en forma ascendente.
function estaOrdenado(a:arregloEnteros):boolean}

function estaOrdenado(a: ArregloEnteros): boolean;
var
  i: Rango;
begin
  i := 1;
  while (i < MAX) and (a[i] <= a[i + 1]) do
    i := i + 1;

  estaOrdenado := i = MAX;
end;