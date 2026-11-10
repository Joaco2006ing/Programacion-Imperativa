{2. Sean las siguientes declaraciones:
const
    MAXCOL = . . .; {entero mayor estricto que 0}
    MAXFIL = . . .; {entero mayor estricto que 0
type
    MatrizEnteros = array [1..MAXFIL, 1..MAXCOL] of integer;
Escriba la funci´on buscarElementoMatriz que determina si el elemento e ocurre en la matriz m. Puede
invocar las funciones del ejercicio 1. Para ello puede suponer que las constantes MAXCOL y MAX coinciden.
function buscarElementoMatriz(e:Integer; m:matrizEnteros):boolean}

function buscarElementoMatriz(e: integer; m: MatrizEnteros): boolean;
var
  i: integer;
begin
  i := 1;

  while (i <= MAXFIL) and (not buscarElemento(e, m[i])) do
    i := i + 1;

  buscarElementoMatriz := i <= MAXFIL;
end;