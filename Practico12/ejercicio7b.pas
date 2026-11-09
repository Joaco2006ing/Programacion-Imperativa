{Considere las definiciones:
const MAX = ...;
type TArreglo = array [1.. MAX ] of integer ;
Implemente los siguientes subprogramas:}
    {(b) function ultimaPos ( A : TArreglo ; v : integer ) : integer ;
    que retorna la ´ultima posici´on de A que contiene el valor v. Si v no est´a en el arreglo, debe devolver 0.
    Siga el esquema:
    function ultimaPos ( A : TArreglo ; v : integer ): integer ;
        function rec ( R : integer ): integer ;
            begin
            ...
            end ;
    begin ultimaPos := rec ( MAX ) end ;
}

    function ultimaPos(A: TArreglo; v: integer): integer;
        function rec(R: integer): integer;
        begin
            if R = 0 then
                rec := 0
            else if A[R] = v then
                rec := R
            else
                rec := rec(R - 1);
        end;
    begin
        ultimaPos := rec(MAX);
    end;