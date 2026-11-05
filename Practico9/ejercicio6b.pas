const N = ...; {valor mayor estricto a 1}
type
Matriz = array [1..N, 1..N] of integer;
{(b) Escriba un procedimiento que calcule nuevamente la transpuesta, pero ahora escribiendo el resultado
sobre la misma matriz a (sin usar una segunda matriz).}
procedure transpuestaMatrizA(VAR a:Matriz);
var
  i, j, aux: integer;
begin
  for i := 1 to N do
    for j := i + 1 to N do
    begin
      aux := a[i, j];
      a[i, j] := a[j, i];
      a[j, i] := aux;
    end;
end;