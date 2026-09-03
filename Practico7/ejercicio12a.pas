{
  Ejercicio 12
  Consigna:
  (a) Escriba una función llamada multiplo que, dados dos enteros positivos m y n, 
      devuelva true si m es múltiplo de n o si n es múltiplo de m. En otro caso 
      contrario, devuelve false.
  (b) Escriba un programa principal, que lea, en una misma línea, parejas de enteros 
      positivos e invoque a la función multiplo para indicar si uno de los dos números 
      es múltiplo del otro. La secuencia de números terminará con el valor -1.

  Ejemplo:
  4 7
  No
  4 8
  Si
  16 8
  Si
  -1
}
program ejercicio12a;
var a,b:integer;
  function multiplo(a,b:integer):boolean;
begin
  multiplo := (a mod b = 0) or (b mod a = 0);
end;
begin
write('Ingrese dos numeros: ');
readln(a,b);
writeln('Los numeros son multiplos: ', multiplo(a,b));
end.