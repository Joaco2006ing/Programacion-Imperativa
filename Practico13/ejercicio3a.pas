const
    MAX = . . .; {entero mayor estricto que 0}
type
        TComparacion = (mayor, menor, igual);
    TTexto = record
        nombre : array [1 .. MAX] of char;
        tope : 0 .. MAX;
end;
    ArregloNombres = array [1..MAX] of TTexto;
{(a) Escriba la funci´on comparacionNombres que dados dos nombres n1 y n2 devuelva la comparaci´on entre
ellos. La comparaci´on es en base al orden lexicogr´afico.
function comparacionNombres(n1, n2:TTexto):TComparacion}

function comparacionNombres(n1, n2: TTexto): TComparacion;
var
  i, limite: integer;
begin
  if n1.tope < n2.tope then
    limite := n1.tope
  else
    limite := n2.tope;

  i := 1;
  while (i <= limite) and (n1.nombre[i] = n2.nombre[i]) do
    i := i + 1;

  if i <= limite then
    if n1.nombre[i] < n2.nombre[i] then
      comparacionNombres := menor
    else
      comparacionNombres := mayor
  else if n1.tope < n2.tope then
    comparacionNombres := menor
  else if n1.tope > n2.tope then
    comparacionNombres := mayor
  else
    comparacionNombres := igual;
end;