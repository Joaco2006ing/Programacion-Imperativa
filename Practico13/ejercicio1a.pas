{Sean las siguientes declaraciones:
const
MAX = . . .; {entero mayor estricto que 0
type
ArregloEnteros = array [1..MAX] of integer;
}
{(a) Escriba la funci´on buscarElemento que determina si el elemento e se encuentra en el arreglo a.
function buscarElemento(e:integer; a:arregloEnteros):boolean}
function buscarElemento(e:integer; a:arregloEnteros):boolean
var
  i: integer;
begin
  i := 1;
  while (i <= MAX) and (a[i] <> e) do
    i := i + 1;

  buscarElemento := i <= MAX;
end;