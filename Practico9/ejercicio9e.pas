{ (e) Escriba la funcion llamada obtSim que, dados un arreglo
  unidimensional a y las coordenadas i y j, devuelva el valor almacenado
  en la celda del arreglo a correspondiente a las coordenadas i y j.
  Por ejemplo, obtSim(a,2,4) debe devolver el valor 64, almacenado en
  la celda 7 del arreglo.
  function obtSim(a:ArregloUni; i,j:integer) : integer; }

function obtSim(a: ArregloUni; i, j: integer): integer;
var
  aux, indice: integer;
begin
  if i > j then
  begin
    aux := i;
    i := j;
    j := aux;
  end;

  indice := (i - 1) * N - ((i - 1) * i) div 2 + j - i + 1;
  obtSim := a[indice];
end;
