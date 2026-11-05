const
N = ...; {valor mayor estricto a 1}
type
Digito = '0'..'9';
Digitos = array [1..N] of Digito;
{(c) Escriba un programa principal que lea un arreglo de d´ıgitos (usando parte (a)) e imprima el entero
equivalente (usando parte b).}
program ejercicio8c;
const
  N = 5;

type
  Digito = '0'..'9';
  Digitos = array[1..N] of Digito;

var
  digitos: Digitos;

begin
  leerArreglo(digitos);
  writeln(conversion(digitos));
end.