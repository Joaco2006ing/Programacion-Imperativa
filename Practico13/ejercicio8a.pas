const
    MAX = . . .; {entero mayor estricto que 0}
type
    Rango = 1 .. MAX;
    ArregloCaracteres = array [rango] of char;
{(a) Escriba la funci´on maximoArregloCar que devuelve el indice del m´aximo car´acter seg´un la ordenaci´on
de la tabla ASCII ubicado entre las posiciones ini y fin. Puede asumir que ini es menor o igual a
fin.
function maximoArregloCar(ini, fin:rango; a:arregloCaracteres):rango}

function maximoArregloCar(ini, fin: Rango;
                          a: ArregloCaracteres): Rango;
var
  i, posicionMaximo: Rango;
begin
  posicionMaximo := ini;

  for i := ini + 1 to fin do
    if a[i] > a[posicionMaximo] then
      posicionMaximo := i;

  maximoArregloCar := posicionMaximo;
end;