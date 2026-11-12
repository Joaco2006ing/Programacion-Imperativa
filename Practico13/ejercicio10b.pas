const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloNumeros = array [rango] of integer;
{ Modifique su implementación del procedimiento anterior para que el ordenamiento
  de los elementos en las posiciones pares e impares se realice simultáneamente. }

procedure ordenarParesImpares(var a: ArregloNumeros);
var
  i, j, posicionImpar, posicionPar: Rango;
  auxiliar: integer;
begin
  i := 1;
  while i <= MAX do
  begin
    posicionImpar := i;
    j := i + 2;
    while j <= MAX do
    begin
      if a[j] > a[posicionImpar] then
        posicionImpar := j;
      j := j + 2;
    end;

    auxiliar := a[i];
    a[i] := a[posicionImpar];
    a[posicionImpar] := auxiliar;

    if i + 1 <= MAX then
    begin
      posicionPar := i + 1;
      j := i + 3;
      while j <= MAX do
      begin
        if a[j] < a[posicionPar] then
          posicionPar := j;
        j := j + 2;
      end;

      auxiliar := a[i + 1];
      a[i + 1] := a[posicionPar];
      a[posicionPar] := auxiliar;
    end;

    i := i + 2;
  end;
end;
