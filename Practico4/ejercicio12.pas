{}
program ejercicio12;
var x, y, f, fMax, n : integer;
begin
  write('Ingrese un valor para n: ');
  readln(n);
{ inicializaci´on de fMax con el valor f(0,0) }
  fMax := sqr(0) - 9*0*0 + sqr(0);
{ iteraci´on sobre el dominio dado}
  for x:= -n to n do
  for y:= -n to n do
begin
    f := sqr(x) - 9*x*y + sqr(y);
    if (f > fMax) then {actualizar el m´aximo }
    fMax := f
  end;
{ mostrar el resultado }
  writeln('El valor m´aximo para x e y en el entorno de -',n:1, ' a ', n:1, ' es: ', fMax:1, '.')
end.
