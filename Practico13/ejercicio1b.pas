{Sean las siguientes declaraciones:
const
MAX = . . .; {entero mayor estricto que 0
type
ArregloEnteros = array [1..MAX] of integer;
}
{(b) Escriba la funci´on unSoloMayor que determina si el arreglo a contiene un ´unico elemento mayor que
el valor v.
function unSoloMayor(v:integer; a:arregloEnteros):boolean}

function unSoloMayor(v: integer; a: ArregloEnteros): boolean;
var
  i, cantidad: integer;
begin
  cantidad := 0;

  for i := 1 to MAX do
    if a[i] > v then
      cantidad := cantidad + 1;

  unSoloMayor := cantidad = 1;
end;
