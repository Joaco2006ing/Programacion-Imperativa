{
  Ejercicio 6
  Consigna:
  Como en el Ejercicio 5, implemente procedimientos con cabezales:
    procedure diag1 (lado : integer; c1, c2: char);
    procedure diag2 (lado : integer; c1, c2: char);
  que al ser invocados con los argumentos 5, '*' y '.' desplieguen los cuadrados:

  diag1(5, '*', '.'):        diag2(5, '*', '.'):
  .****                      ****.
  ..***                      ***..
  ...**           y          **...
  ....*                      *....
  .....                      .....
}
program llamada;
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

    writeln; { Salto a la siguiente linea }
  end;
end;

procedure diag2(lado: integer; c1, c2: char);
var
  i, j: integer;
begin
  for i := 1 to lado do
  begin

    for j := 1 to i do
      write(c1);

    for j := 1 to lado - i do
      write(c2);

    writeln; { Salto a la siguiente linea }
  end;
end;
begin
  diag1(5,'*','=');
  writeln;
  diag2(5,'&','.');
end.