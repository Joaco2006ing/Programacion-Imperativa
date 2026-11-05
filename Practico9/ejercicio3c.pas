const
N = ...; {valor mayor estricto a 1}
type
CadenaN = array [1..N] of integer;
{Escriba el procedimiento llamado maxValorPos que, dado un arreglo de enteros, devuelve el valor m´as
grande y el primer ´ındice en que ´este ocurre.
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);}
procedure maxValorPos(cand:CadenaN; var valor, pos:integer);
procedure maxValorPos(cadn: CadenaN; var valor, pos: integer);
var
  i: integer;
begin
  valor := cadn[1];
  pos := 1;

  for i := 2 to N do
    if cadn[i] > valor then
    begin
      valor := cadn[i];
      pos := i;
    end;
end;