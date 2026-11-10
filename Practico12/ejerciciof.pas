{Considere las definiciones:
const MAX = ...;
type palabra = record
info : array [1.. MAX ] of char ;
tope : 0.. MAX ;
end ;
Como siempre, en el arreglo con tope la informaci´on relevante no comprende necesariamente a todo el
arreglo. Implemente los siguientes subprogramas:}
{(f) procedure invertir ( var pal : palabra );
que invierte la palabra dada. Siga el esquema
procedure invertir ( var pal : palabra );
procedure rec ( L , R : integer );
begin
...
end ;
begin rec (1 , pal . tope ) end ;}

procedure invertir(var pal: palabra);
    procedure rec(L, R: integer);
    var
        aux: char;
    begin
        if L < R then
        begin
            aux := pal.info[L];
            pal.info[L] := pal.info[R];
            pal.info[R] := aux;
            rec(L + 1, R - 1);
        end;
    end;
begin
    rec(1, pal.tope);
end;