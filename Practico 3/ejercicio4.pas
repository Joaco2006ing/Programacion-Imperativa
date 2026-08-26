 {Suponga que a, b y c son variables enteras. Considere las siguientes instrucciones if anidadas:
if a > b then
if a > c then
write ('a es el grande')
Escriba una sola instrucci´on if que sea equivalente a esta pero que no contenga otra instrucci´on if anidada}
program ejercicio4;
var a,b,c: integer;
begin
readln(a, b, c);
  if (a>b) and (a>c) then  
    write('a es el mas grande')
end.