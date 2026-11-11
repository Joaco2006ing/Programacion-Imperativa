const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloEnteros = array [rango] of integer;
{(b) Escriba el procedimiento ordenarPosicion que recibe un arreglo a ordenado parcialmente entre las
posiciones 1 y pos-1 de forma ascendente y re-inserta el elemento que originalmente se encuentra en
la posici´on pos de forma ordenada entre las posiciones 1 y pos. Notar que al finalizar el procedimiento
el arreglo debe quedar parcialmente ordenado entre las posiciones 1 y pos.
procedure ordenarPosicion(pos:rango; var a:arregloEnteros)}

procedure ordenarPosicion(pos: Rango; var a: ArregloEnteros);
var
  i, valor: integer;
begin
  valor := a[pos];
  i := pos - 1;

  while (i >= 1) and (a[i] > valor) do
  begin
    a[i + 1] := a[i];
    i := i - 1;
  end;

  a[i + 1] := valor;
end;