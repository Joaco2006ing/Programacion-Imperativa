{(a) Escriba una funci´on llamada esPrimo que, dado un entero mayor o igual que 0, devuelva true si es
primo y false en caso contrario. En el ejercicio 7 del pr´actico 5 se escribi´o un programa principal que
resolv´ıa el mismo algoritmo.}
program ejercicio11a;
var n:integer;
  function esPrimo(n:integer):boolean;
  var divisor:integer;
  begin
    if n < 2 then
    esPrimo:=false
  else
  begin
    divisor := 2;
    while (n mod divisor) <> 0 do
      divisor := divisor + 1;
    if divisor = n then
      esPrimo:=true
    else
      esPrimo:=false;
  end;
  end;
begin
  write('Ingrese un entero positivo: ');
  readln(n);
  writeln('Es primo: ', esPrimo(n));
end.