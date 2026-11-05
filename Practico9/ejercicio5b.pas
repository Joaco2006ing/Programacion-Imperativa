const M = ...; {valor mayor estricto a 1}
const N = ...; {valor mayor estricto a M}
type
CadenaM = array [1..M] of char;
CadenaN = array [1..N] of char;
{(b) Escriba dos procedimientos llamados leerCadenaM y leerCadenaN 
que carguen una cadena de largo M y N respectivamente con caracteres le´ıdos desde la entrada.}
procedure leerCadenaM(var cadM: CadenaM);
var
  i: integer;
begin
  for i := 1 to M do
    read(cadM[i]);
end;

procedure leerCadenaN(var cadN: CadenaN);
var
  i: integer;
begin
  for i := 1 to N do
    read(cadN[i]);
end;