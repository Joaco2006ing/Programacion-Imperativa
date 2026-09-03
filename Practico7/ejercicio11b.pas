program ejercicio11b;
var m, n, i: integer;

function esPrimo(n: integer): boolean;
var
  divisor: integer;
begin
  if n < 2 then
    esPrimo := false
  else
  begin
    divisor := 2;
    while (n mod divisor) <> 0 do
      divisor := divisor + 1;

    if divisor = n then
      esPrimo := true
    else
      esPrimo := false;
  end;
end;

begin
  write('Ingrese dos enteros positivos m y n: ');
  readln(m, n);

  for i := m to n do
  begin
    if esPrimo(i) then
      write(i, ' ');
  end;
  writeln;
end.