{Escriba un programa que calcule el MCD (M´aximo Com´un Divisor) para dos naturales m y n con m ̸= 0.
¿Qu´e estructura de control se debe utilizar y por qu´e?Se recuerda que el m´aximo com´un divisor se define como:
MCD(m, n) = m´ax (k : k es divisor de m y k es divisor de n).
Se sugiere aplicar el algoritmo de Euclides que se basa en las siguientes igualdades:
MCD(m, 0) = m
MCD(m, n) = MCD(n, m mod n)}
program ejercicio1;
var
  m, n, resto : integer;
begin
  write('Ingrese dos numeros enteros positivos: ');
  readln(m, n);
while n <> 0 do
  begin
        resto := m mod n;
        m := n;
        n := resto;
end;
    writeln('El MCD es: ', m);
end.