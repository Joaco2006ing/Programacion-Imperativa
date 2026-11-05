const M = ...; {valor mayor estricto a 1}
const N = ...; {valor mayor estricto a M}
type
CadenaM = array [1..M] of char;
CadenaN = array [1..N] of char;
{(a) Escriba una funci´on llamada indiceSubCadena que dadas dos cadenas (de largo M y N respectivamente)
determine si la primera cadena ocurre al menos una vez como parte de la segunda cadena. En caso
afirmativo, se devuelve la posici´on (´ındice) en que comienza la primera coincidencia. En caso contrario,
se devuelve 0.
}
function indiceSubCadena(cadM: CadenaM; cadN: CadenaN): integer;
var
  i, j: integer;
  coincide: boolean;
begin
  indiceSubCadena := 0;
  i := 1;

  while (i <= N - M + 1) and (indiceSubCadena = 0) do
  begin
    coincide := true;
    j := 1;

    while (j <= M) and coincide do
    begin
      if cadM[j] <> cadN[i + j - 1] then
        coincide := false;
      j := j + 1;
    end;

    if coincide then
      indiceSubCadena := i;

    i := i + 1;
  end;
end;
