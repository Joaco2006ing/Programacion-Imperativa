{
  Ejercicio 13 (a)
  Consigna:
  Escriba el siguiente procedimiento llamado multiplicidadFactor que, dado un 
  entero positivo numero y un entero positivo factor, devuelve en multiplicidad 
  la cantidad máxima de veces que factor divide a numero y en residuo el resto 
  (el valor remanente tras realizar esas divisiones sucesivas).

  procedure multiplicidadFactor(numero, factor : integer; 
                                var multiplicidad, residuo : integer);

  Ejemplos:
  - numero = 39, factor = 2 -> multiplicidad = 0, residuo = 39
  - numero = 39, factor = 3 -> multiplicidad = 1, residuo = 13
  - numero = 42, factor = 2 -> multiplicidad = 1, residuo = 21
  - numero = 12, factor = 2 -> multiplicidad = 2, residuo = 3
}
program ejercicio13a;
var num, fact, mult, res: integer;

procedure multiplicidadFactor(numero, factor : integer; var multiplicidad, residuo : integer);
begin
  multiplicidad := 0;
  residuo := numero;
  while (residuo mod factor = 0) do
  begin
    multiplicidad := multiplicidad + 1;
    residuo := residuo div factor;
  end;
end;

begin
  write('Ingrese numero y factor: ');
  readln(num, fact);

  multiplicidadFactor(num, fact, mult, res);

  writeln('Multiplicidad: ', mult);
  writeln('Residuo: ', res);
end.