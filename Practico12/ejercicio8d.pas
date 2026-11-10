{Considere las definiciones:
const MAX = ...;
type palabra = record
info : array [1.. MAX ] of char ;
tope : 0.. MAX ;
end ;
Como siempre, en el arreglo con tope la informaci´on relevante no comprende necesariamente a todo el
arreglo. Implemente los siguientes subprogramas:}
{(d) function subcadena ( pal1 , pal2 : palabra ) : boolean ;
que devuelve True si y solamente si la primera palabra es subcadena de la segunda. Siga el esquema
function subcadena ( pal1 , pal2 : palabra ): boolean ;
function rec ( L1 , L2 : integer ): boolean ;
begin
...
end ;
begin subcadena := ( pal1 . tope <= pal2 . tope ) and rec (1 , 1) end ;}

function subcadena(pal1, pal2: palabra): boolean;
    function rec(L1, L2: integer): boolean;
    begin
        if L1 > pal1.tope then
            rec := true
        else if L2 > pal2.tope then
            rec := false
        else if pal1.info[L1] = pal2.info[L2] then
            rec := rec(L1 + 1, L2 + 1)
        else
            rec := rec(1, L2 - L1 + 2);
    end;
begin
    subcadena := (pal1.tope <= pal2.tope) and rec(1, 1);
end;