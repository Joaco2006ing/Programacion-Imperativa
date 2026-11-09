{Se quiere trabajar con la representaci´on decimal de los enteros no negativos; esta representaci´on comienza
con cero solamente cuando queremos representar el entero cero que tiene un ´unico d´ıgito. Implemente los
siguientes subprogramas}
{(a) La funci´on que devuelve la cantidad de d´ıgitos de su argumento.
{ PRE : n >= 0 
function cantDigitos ( n : integer ) : integer ;
}

function cantDigitos(n: integer): integer;
begin
    if n < 10 then
        cantDigitos := 1
    else
        cantDigitos := 1 + cantDigitos(n div 10);
end;
