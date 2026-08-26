program ejercicio11;
var m, n, x, fx, fxMax : integer;
begin
  write('Ingrese un valor para m: ');
  readln(m);
  write('Ingrese un valor para n: ');
  readln(n);
  {inicializaci´on con el valor en m}
  fxMax := sqr(m) - 18*m + 5;
  { Notar que la iteraci´on comienza en m+1 }
    for x:= m + 1 to n do
      begin
          fx := sqr(x) - 18*x + 5;
{ Se compara con el m´aximo corriente y si es mayor se actualiza }
          if (fx > fxMax) then
          fxMax := fx
end;
{ mostrar resultados }
  writeln('El valor maximo para x en el entorno de ', m:1, ' a ', n:1, ' es ', fxMax:1 ,'.')
end.
