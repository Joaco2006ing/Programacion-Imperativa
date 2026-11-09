{(a) Implemente recursivamente la funci´on que calcula la potencia b
n de base b:
{ PRE : b >= 0 , n >= 0 
function potencia (b , n : integer ): integer ;
}

function potencia(b, n: integer): integer;
begin
    if n = 0 then
        potencia := 1
    else
        potencia := b * potencia(b, n - 1);
end;