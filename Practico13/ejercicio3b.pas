const
    MAX = . . .; {entero mayor estricto que 0}
type
        TComparacion = (mayor, menor, igual);
    TTexto = record
        nombre : array [1 .. MAX] of char;
        tope : 0 .. MAX;
end;
    ArregloNombres = array [1..MAX] of TTexto;
{(b) Escriba la funci´on buscarNombre que devuelve TRUE si el nombre n ocurre dentro del arreglo a y FALSE
en caso contrario. El arreglo de nombres a est´a ordenado en forma lexicogr´afica y creciente. ¿Realizar´a
b´usqueda lineal o binaria? ¿Por qu´e?}

function buscarNombre(n: TTexto; a: ArregloNombres): boolean;
var
  primero, ultimo, medio: integer;
  comparacion: TComparacion;
begin
  primero := 1;
  ultimo := MAX;
  buscarNombre := false;

  while (primero <= ultimo) and (not buscarNombre) do
  begin
    medio := (primero + ultimo) div 2;
    comparacion := comparacionNombres(n, a[medio]);

    if comparacion = igual then
      buscarNombre := true
    else if comparacion = menor then
      ultimo := medio - 1
    else
      primero := medio + 1;
  end;
end;