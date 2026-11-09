{(b) Implemente recursivamente la funci´on que calcula el logaritmo entero ⌊logb n⌋ de base b:
{ PRE : b > 1 , n > 0 
function logaritmo (b , n : integer ): integer ;}

function logaritmo(b, n: integer): integer;
begin
    if n < b then
        logaritmo := 0
    else
        logaritmo := 1 + logaritmo(b, n div b);
end;