const
N = ...; {valor mayor estricto a 1}
type
CadenaN = array [1..N] of integer;
{Escriba la funci´on llamada ordenado que, dado un arreglo de enteros, devuelve true si el arreglo est´a
ordenado en forma ascendente y false en caso contrario.
function ordenado(cadn:CadenaN) : boolean;}
function ordenado(cadn: CadenaN): boolean;
var
  i: integer;
begin
  ordenado := true;

  for i := 2 to N do
    if cadn[i - 1] > cadn[i] then
      ordenado := false;
end;
end;
