{{{ PRE : n >= 1 
   function f ( n : integer ) : integer ;
begin
    if n = 1 then
        f := 0
    else
        f := 1 + f ( n div 2)
end ;
Escriba la secuencia de llamadas recursivas que se realizan e indique el valor retornado por la funcion,
cuando se invoca f(13) y f(8)}

Para f(13):
  f(13) -> f(6) -> f(3) -> f(1)
  f(1) retorna 0, por lo tanto f(3) retorna 1,
  f(6) retorna 2 y f(13) retorna 3.

  Para f(8):
  f(8) -> f(4) -> f(2) -> f(1)
  f(1) retorna 0, por lo tanto f(2) retorna 1,
  f(4) retorna 2 y f(8) retorna 3.
