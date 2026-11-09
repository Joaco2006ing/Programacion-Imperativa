{ PRE : n >= 0 , m >= 0 }
function h (n , m : integer ) : integer ;
begin
    if n = m then h := n
    else if n < m then h := h (n , m - n )
    else h := h (n -m , m )
end ;
Escriba la secuencia de llamadas recursivas que se realizan e indique el valor retornado por la funci´on,
cuando se invoca h(11,27) y h(8,128).

{Para h(11,27):
  h(11,27) -> h(11,16) -> h(11,5) -> h(6,5)
  -> h(1,5) -> h(1,4) -> h(1,3) -> h(1,2)
  -> h(1,1)
  Por lo tanto, h(11,27) retorna 1.

  Para h(8,128):
  h(8,128) -> h(8,120) -> h(8,112) -> h(8,104)
  -> h(8,96) -> h(8,88) -> h(8,80) -> h(8,72)
  -> h(8,64) -> h(8,56) -> h(8,48) -> h(8,40)
  -> h(8,32) -> h(8,24) -> h(8,16) -> h(8,8)
  Por lo tanto, h(8,128) retorna 8.}