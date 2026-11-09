{Considere las definiciones:
const MAX = ...;
type TArreglo = array [1.. MAX ] of integer ;
Implemente los siguientes subprogramas:
(a) function estaOrdenado ( A : TArreglo ) : boolean ;
que retorna true si los elementos de A est´an ordenados de menor a mayor y false en caso contrario.
Siga el esquema:
function estaOrdenado ( A : TArreglo ) : boolean ;
    function rec ( L : integer ): boolean ;
        begin
        ...
        end ;
begin estaOrdenado := rec (1) end ;
}

function estaOrdenado(A: TArreglo): boolean;
    function rec(L: integer): boolean;
    begin
        if L = MAX then
            rec := true
        else
            rec := (A[L] <= A[L + 1]) and rec(L + 1);
    end;
begin
    estaOrdenado := rec(1);
end;