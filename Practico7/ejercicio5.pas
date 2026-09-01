{
  Ejercicio 5
  Consigna:
  Implemente el procedimiento:
    procedure rectangulo (altura, ancho : integer; c: char);
  que dibuja en la salida estándar un rectángulo con lados altura y ancho 
  "pintado" con el carácter c.
  
  Ejemplo: al invocar rectangulo(4, 10, '*') se debe desplegar:
  **********
  **********
  **********
  **********
}
program llamada;
procedure rectangulo(altura, ancho: integer; c: char);
var
  i, j: integer;
begin
  for i := 1 to altura do
  begin
    for j := 1 to ancho do
      write(c);
    writeln; 
  end;
end;
begin
  rectangulo(3,4,'*');
end.