{(a) Escriba una instruccion case que sea equivalente a las siguientes instrucciones if anidadas. 
Suponga que todas las variables son de tipo integer.
if k = 0 then
r := r + 1
else
if k = 1 then
s := s + 1
else
if (k = 2) or (k = 3) or (k = 4) then
t := t + 2}
program ejercicio8.pas;
var k,r,s,t:integer;
begin
  case k of
  0: r:=r+1;
  1: s:=s+1;
  2,3,4: t:=t+2;
  end
end.