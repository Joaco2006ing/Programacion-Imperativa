{Se quiere trabajar con la representaci´on decimal de los enteros no negativos; esta representaci´on comienza
con cero solamente cuando queremos representar el entero cero que tiene un ´unico d´ıgito. Implemente los
siguientes subprogramas}
{(b) La funci´on que devuelve la suma de los d´ıgitos de su argumento.
{ PRE : n >= 0 
function sumaDigitos ( n : integer ) : integer ;}

function sumaDigitos(n: integer): integer;
begin
    if n < 10 then
        sumaDigitos := n
    else
        sumaDigitos := (n mod 10) + sumaDigitos(n div 10);
end;