{Considere las definiciones:
const MAX = ...;
type palabra = record
info : array [1.. MAX ] of char ;
tope : 0.. MAX ;
end ;
Como siempre, en el arreglo con tope la informaci´on relevante no comprende necesariamente a todo el
arreglo. Implemente los siguientes subprogramas:}
{(b) function reversas ( pal1 , pal2 : palabra ) : boolean ;
que devuelve True si y solamente si una de las palabras le´ıda de izquierda a derecha es igual a la otra
le´ıda de derecha a izquierda. Siga el esquema
function reversas ( pal1 , pal2 : palabra ): boolean ;
function rec ( L , R : integer ): boolean ;
begin
...
end ;
begin reversas := ( pal1 . tope = pal2 . tope ) and rec (1 , pal1 . tope ) end ;}

function reversas(pal1, pal2: palabra): boolean;
    function rec(L, R: integer): boolean;
    begin
        if L > pal1.tope then
            rec := true
        else
            rec := (pal1.info[L] = pal2.info[R]) and
                   rec(L + 1, R - 1);
    end;
begin
    reversas := (pal1.tope = pal2.tope) and rec(1, pal1.tope);
end;