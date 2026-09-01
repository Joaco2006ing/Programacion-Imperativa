{
  Ejercicio 8
  Consigna:
  (a) Escriba un procedimiento llamado corrimiento con tres parámetros enteros: a, b y c.
      El procedimiento debe hacer un corrimiento a la derecha de los valores de manera que,
      después de la invocación:
      - El que estaba en 'a' quede en 'b'.
      - El que estaba en 'b' quede en 'c'.
      - El que estaba en 'c' quede en 'a'.
  (b) Escriba un programa principal que lea tres valores y exhiba el resultado de invocarlo.
}
program llamadacorrimiento;
var n1,n2,n3:integer;
  procedure corrimiento(var a,b,c:integer);
  var aux:integer;
  begin
    aux:=c;
    c:=b;
    b:=a;
    a:=aux;
  end;
  begin
    write('Ingrese tres numeros: ');
    readln(n1, n2, n3);
  
    corrimiento(n1, n2, n3);
  
    writeln('El corrimiento es: ', n1, ' ', n2, ' ', n3);
  end.