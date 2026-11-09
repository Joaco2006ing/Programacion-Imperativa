{Se quiere trabajar con la representaci´on decimal de los enteros no negativos; esta representaci´on comienza
con cero solamente cuando queremos representar el entero cero que tiene un ´unico d´ıgito. Implemente los
siguientes subprogramas}
{(c) La funci´on que devuelve true si el d´ıgito d aparece en la representaci´on decimal de n, y false en caso
contrario.
{ PRE : n >= 0 , 0 <= d <= 9 
function contieneDigito (n , d : integer ) : boolean ;}

function contieneDigito(n, d: integer): boolean;
begin
    if n < 10 then
        contieneDigito := n = d
    else
        contieneDigito := (n mod 10 = d) or
                          contieneDigito(n div 10, d);
end;