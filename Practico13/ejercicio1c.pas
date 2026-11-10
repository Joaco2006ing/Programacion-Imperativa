{Sean las siguientes declaraciones:
const
MAX = . . .; {entero mayor estricto que 0
type
ArregloEnteros = array [1..MAX] of integer;
}
{(c) Escriba la funci´on todosMayores que determina si todos los elementos del arreglo a son mayores que
el valor v.
function todosMayores(v:integer; a:arregloEnteros):boolean}

function todosMayores(v: integer; a: ArregloEnteros): boolean;
var
  i: integer;
begin
  i := 1;
  while (i <= MAX) and (a[i] > v) do
    i := i + 1;

  todosMayores := i > MAX;
end;