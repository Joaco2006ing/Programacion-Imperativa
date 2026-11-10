{Sean las siguientes declaraciones:
const
MAX = . . .; {entero mayor estricto que 0
type
ArregloEnteros = array [1..MAX] of integer;}
{(d) Escriba la funci´on cuantosMayores que determina cu´antos elementos del arreglo a son mayores que el
valor v.
function cuantosMayores(v:integer; a:arregloEnteros):integer}

function cuantosMayores(v: integer; a: ArregloEnteros): integer;
var
  i: integer;
begin
  cuantosMayores := 0;

  for i := 1 to MAX do
    if a[i] > v then
      cuantosMayores := cuantosMayores + 1;
end;
