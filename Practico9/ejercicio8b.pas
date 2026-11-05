const
N = ...; {valor mayor estricto a 1}
type
Digito = '0'..'9';
Digitos = array [1..N] of Digito;
{(b) Escriba la funci´on llamada conversion que, dado un arreglo de d´ıgitos, convierta la secuencia de d´ıgitos
al entero equivalente. Por ejemplo, si N=5 y el arreglo es ['0','0','1','2','3'], entonces el entero
resultante ser´a 123.
}
function conversion(digitos: Digitos): integer;
var
  i: integer;
begin
  conversion := 0;

  for i := 1 to N do
    conversion := conversion * 10 +
                  (ord(digitos[i]) - ord('0'));
end;