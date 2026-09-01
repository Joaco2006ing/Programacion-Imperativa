{
  Ejercicio 7
  Consigna:
  Implemente un procedimiento con cabezal:
    procedure dibujo (ancho : integer; c: char);
  que invoque los procedimientos de los Ejercicios 5 y 6 y despliegue 
  la figura con lados crecientes, centro y lados decrecientes.
}
program ejercicio7completo;

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

procedure diag1(lado: integer; c1, c2: char);
var
  i, j: integer;
begin
  for i := 1 to lado do
  begin
    for j := 1 to i do
      write(c2);

    for j := 1 to lado - i do
      write(c1);

    writeln;
  end;
end;

procedure diag2(lado: integer; c1, c2: char);
var
  i, j: integer;
begin
  for i := 1 to lado do
  begin
    for j := 1 to lado - i do
      write(c1);

    for j := 1 to i do
      write(c2);

    writeln;
  end;
end;

procedure dibujo(ancho: integer; c: char);
begin
  
  diag2(ancho, ' ', c);


  rectangulo(10, 10, c);

  diag1(ancho, c, ' ');
end;

begin
  dibujo(10, '*');
end.