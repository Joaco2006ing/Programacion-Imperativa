const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloEnteros = array [rango] of integer;
{(c) Escriba el procedimiento ordenarArregloEnteros que ordena de forma ascendente el arreglo a que
recibe por par´ametro. Utilice la parte b.
procedure ordenarArregloEnteros(var a:arregloEnteros)}
procedure ordenarArregloEnteros(var a: ArregloEnteros);
var
  pos: Rango;
begin
  for pos := 2 to MAX do
    ordenarPosicion(pos, a);
end;