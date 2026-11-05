{ (c) Escriba el procedimiento llamado arreglo2matriz que, dado un
  arreglo unidimensional, cargue una matriz simetrica.
  procedure arreglo2matriz(arreglo:ArregloUni; VAR a:MatrizN); }

procedure arreglo2matriz(arreglo: ArregloUni; var a: MatrizN);
var
  i, j, k: integer;
begin
  k := 1;

  for i := 1 to N do
    for j := i to N do
    begin
      a[i, j] := arreglo[k];
      a[j, i] := arreglo[k];
      k := k + 1;
    end;
end;
