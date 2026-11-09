{Rayuela. Una hilera de baldosas est´a numerada desde 0 en adelante. Al comenzar, un ni˜no se encuentra
en la baldosa 0. Desde una baldosa i puede realizar uno de los siguientes movimientos:
saltar a la baldosa i+1;
saltar a la baldosa i+2.
Implemente una funci´on recursiva
{ PRE : n >= 0 
function caminos ( n : integer ) : integer ;
que devuelva la cantidad de caminos diferentes que permiten llegar exactamente a la baldosa n.
Considere que existe un ´unico camino para llegar a la baldosa 0.
Por ejemplo, para n=3 existen tres caminos:
(0, 1, 2, 3), (0, 2, 3), (0, 1, 3).
}

function caminos(n: integer): integer;
begin
    if n = 0 then
        caminos := 1
    else if n = 1 then
        caminos := 1
    else
        caminos := caminos(n - 1) + caminos(n - 2);
end;