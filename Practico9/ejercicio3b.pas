const
N = ...; {valor mayor estricto a 1}
type
CadenaN = array [1..N] of integer;
{Escriba la funci´on llamada ordenado que, dado un arreglo de enteros, devuelve true si el arreglo est´a
ordenado en forma ascendente y false en caso contrario.
function ordenado(cadn:CadenaN) : boolean;}
function ordenado(cadn:CadenaN): boolean;
var i, minimo: integer;
begin
  ordenado := true;
  minimo := cadn[1];
  for i:= 2 to N do 
    begin
      if minimo > cadn
    end;

end;
