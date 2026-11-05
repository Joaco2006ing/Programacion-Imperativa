{(c) Escriba un procedimiento que dada una matriz de tipo TipoMatriz y dos variables enteras m y n,
intercambie las filas m y n de la matriz. Es decir, todos los valores de la fila m deben quedar en la fila n
y viceversa.
}
procedure intercambiarFilas(var matriz: TipoMatriz; m, n: integer);
var
  j, aux: integer;
begin
  for j := 1 to 10 do
  begin
    aux := matriz[m, j];
    matriz[m, j] := matriz[n, j];
    matriz[n, j] := aux;
  end;
end;