 PRE : n >= 0 
function g ( n : integer ) : integer ;
begin
    if n < 10 then
        g := n
    else
        g := g ( n div 10) + ( n mod 10)
end ;
Escriba la secuencia de llamadas recursivas que se realizan e indique el valor retornado por la funci´on,
cuando se invoca g(731) y g(2048).

{Para g(731):
  g(731) -> g(73) + 1
           -> g(7) + 3 + 1
           -> 7 + 3 + 1
  Por lo tanto, g(731) retorna 11.

  Para g(2048):
  g(2048) -> g(204) + 8
            -> g(20) + 4 + 8
            -> g(2) + 0 + 4 + 8
            -> 2 + 0 + 4 + 8
  Por lo tanto, g(2048) retorna 14.}