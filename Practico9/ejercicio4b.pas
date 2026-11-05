{(b) Escriba un procedimiento que cargue una variable de tipo TipoMatriz con valores le´ıdos desde la
entrada.}
procedure cargarMatriz(var matriz: TipoMatriz);
var
  i, j: integer;
begin
  for i := 1 to 10 do
    for j := 1 to 10 do
      readln(matriz[i, j]);
end;