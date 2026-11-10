{Considere las definiciones:
const MAX = ...;
type palabra = record
info : array [1.. MAX ] of char ;
tope : 0.. MAX ;
end ;
Como siempre, en el arreglo con tope la informaci´on relevante no comprende necesariamente a todo el
arreglo. Implemente los siguientes subprogramas:}
{(e) function palindrome ( pal : palabra ) : boolean ;
que devuelve True si y solamente si la palabra es pal´ındrome. Siga el esquema
function palindrome ( pal : palabra ): boolean ;
function rec ( L , R : integer ): boolean ;
begin
...
end ;
begin palindrome := rec (1 , pal . tope ) end ;}

function palindrome(pal: palabra): boolean;
    function rec(L, R: integer): boolean;
    begin
        if L >= R then
            rec := true
        else
            rec := (pal.info[L] = pal.info[R]) and rec(L + 1, R - 1);
    end;
begin
    palindrome := rec(1, pal.tope);
end;