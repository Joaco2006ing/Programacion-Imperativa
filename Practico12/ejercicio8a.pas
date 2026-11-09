{Considere las definiciones:
const MAX = ...;
type palabra = record
info : array [1.. MAX ] of char ;
tope : 0.. MAX ;
end ;
Como siempre, en el arreglo con tope la informaci´on relevante no comprende necesariamente a todo el
arreglo. Implemente los siguientes subprogramas:}
{(a) function iguales ( pal1 , pal2 : palabra ) : boolean ;
que devuelve True si y solamente si ambas palabras son iguales. Siga el esquema
function iguales ( pal1 , pal2 : palabra ): boolean ;
function rec ( L : integer ): boolean ;
begin
...
end ;
begin iguales := ( pal1 . tope = pal2 . tope ) and rec (1) end ;}

function iguales(pal1, pal2: palabra): boolean;
    function rec(L: integer): boolean;
    begin
        if L > pal1.tope then
            rec := true
        else if L > pal2.tope then
            rec := false
        else
            rec := (pal1.info[L] = pal2.info[L]) and rec(L + 1);
    end;
begin
    iguales := (pal1.tope = pal2.tope) and rec(1);
end;