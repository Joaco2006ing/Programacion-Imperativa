  const
    N = ...; {valor mayor estricto a 1}
type
  CadenaN = array [1..N] of integer;
{(a) Escriba la funci´on llamada cantMayores que, dados un arreglo de enteros y un entero num, devuelve la
cantidad de valores almacenados en el arreglo que son mayores que num.
function cantMayores(cadn:CadenaN; num:integer) : integer;}
function cantMayores(cadn:CadenaN; num:integer): integer;
var i, contador:integer;
begin
  contador :=0;
  for i:= 1 to N do
    begin
      if cadn[i] > num then 
        contador:= contador+1;
    end;
  cantMayores:= contador;
end