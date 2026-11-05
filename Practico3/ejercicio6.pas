{program Pr3Ej6;
var x, y, z : Integer;
begin
x := 10;
y := 11;
z := 12;
if (x > y) or (z > y) then
if x > z then
if y > z then
writeln ('Termine.')
else writeln ('No termino aun.')
else writeln ('Nunca llega aqui.')
end.}
{(a) Indique que se exhibira en la salida estandar al ejecutarlo. Despues, ejecutelo en maquina y 
compare lo que esperaba con la salida que se exhibe. Respuesta:Se exhibirá Nunca llega aqui.
(b) Reescriba el programa anterior con una indentacion adecuada.}
program ejercicio6;
var x, y, z : Integer;
begin
x := 10;
y := 11;
z := 12;
program Pr3Ej6;
var x, y, z : Integer;
begin
  x := 10;
  y := 11;
  z := 12;
  if (x > y) or (z > y) then
    if x > z then
      if y > z then
        writeln('Termine.')
      else
        writeln('No termino aun.')
    else
      writeln('Nunca llega aqui.')
end.
{(c) Asumiendo que las expresiones booleanas se evaluan por cortocircuito, diga si la expresion z > y es evaluada.
Respuesta: Sí se evalúa, porque el primer término del or fue false}