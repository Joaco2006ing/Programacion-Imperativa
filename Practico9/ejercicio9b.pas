{(b) Escriba el procedimiento llamado matriz2arreglo que dada una matriz sim´etrica, almacena en el arreglo
unidimensional los valores del triangulo superior de la matriz. }

procedure matriz2arreglo(a: MatrizN; var arreglo: ArregloUni);
var
  i, j, k: integer;
begin
  k := 1;

  for i := 1 to N do
    for j := i to N do
    begin
      arreglo[k] := a[i, j];
      k := k + 1;
    end;
end;
