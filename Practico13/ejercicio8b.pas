const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloCaracteres = array [rango] of char;
{(b) Escriba el procedimiento ordenarArregloCaracteres que ordena el arreglo a pasado por par´ametro
de forma ascendente utilizando el m´etodo de ordenaci´on por selecci´on.
procedure ordenarArregloCaracteres(var a : arregloCaracteres);}

procedure ordenarArregloCaracteres(var a: ArregloCaracteres);
var
  i, j, posicionMinimo: Rango;
  auxiliar: char;
begin
  for i := 1 to MAX - 1 do
  begin
    posicionMinimo := i;

    for j := i + 1 to MAX do
      if a[j] < a[posicionMinimo] then
        posicionMinimo := j;

    auxiliar := a[i];
    a[i] := a[posicionMinimo];
    a[posicionMinimo] := auxiliar;
  end;
end;