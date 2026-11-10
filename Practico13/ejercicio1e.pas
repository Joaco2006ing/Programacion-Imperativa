{Sean las siguientes declaraciones:
const
MAX = . . .; {entero mayor estricto que 0
type
ArregloEnteros = array [1..MAX] of integer;}
{(e) Escriba la funci´on ultimaOcurrencia que determina la ´ultima posici´on en el arreglo a en la cual ocurre
el elemento e. Si e no se encuentra en a, la funci´on devuelve 0.
function ultimaOcurrencia(e:integer; a:arregloEnteros):integer}

function ultimaOcurrencia(e: integer; a: ArregloEnteros): integer;
var
  i: integer;
begin
  ultimaOcurrencia := 0;

  for i := 1 to MAX do
    if a[i] = e then
      ultimaOcurrencia := i;
end;