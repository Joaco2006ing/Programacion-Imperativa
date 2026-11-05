const N = ...; {valor mayor estricto a 1}
type
Matriz = array [1..N, 1..N] of integer;
{(a) Escriba el procedimiento transpuestaMatrizAB que, dada una matriz cuadrada a calcule su matriz
transpuesta b.
procedure transpuestaMatrizAB(a:Matriz; VAR b:Matriz);}
procedure transpuestaMatrizAB(a: Matriz; var b: Matriz);
var
  i, j: integer;
begin
  for i := 1 to N do
    for j := 1 to N do
      b[j, i] := a[i, j];
end;