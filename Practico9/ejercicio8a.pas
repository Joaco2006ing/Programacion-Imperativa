const
N = ...; {valor mayor estricto a 1}
type
Digito = '0'..'9';
Digitos = array [1..N] of Digito;
{(a) Escriba el procedimiento llamado leerArreglo que cargue un arreglo de d´ıgitos con valores le´ıdos desde
la entrada.}
procedure leerArreglo(var a: Digitos);
var
  i: integer;
begin
  for i := 1 to N do
    read(a[i]);
end;