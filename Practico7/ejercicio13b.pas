{ Ejercicio 13 (b)
  Consigna:
  Escriba un programa principal que lea una secuencia de enteros positivos 
  mayores a 1 y exhiba la descomposición en factores primos de cada número. 
  La secuencia de números termina con el valor -1. 
  El programa debe invocar al procedimiento multiplicidadFactor.

  Ejemplo:
  39 17 1517 42 12 18 -1
  39 = 3 * 13
  17 = 17
  1517 = 37 * 41
  42 = 2 * 3 * 7
  12 = 2 * 2 * 3
  18 = 2 * 3 * 3
}
program Ejercicio13b;

procedure multiplicidadFactor(numero, factor : integer; 
                              var multiplicidad, residuo : integer);
begin
  multiplicidad := 0;
  residuo := numero;

  while (residuo mod factor = 0) do
  begin
    multiplicidad := multiplicidad + 1;
    residuo := residuo div factor;
  end;
end;

var
  num, rem, factor, mult, k: integer;
  primero: boolean;

begin
  read(num);
  while num <> -1 do
  begin
    write(num, ' = ');
    rem := num;
    factor := 2;
    primero := true;

    while rem > 1 do
    begin
      multiplicidadFactor(rem, factor, mult, rem);

      if mult > 0 then
      begin
        for k := 1 to mult do
        begin
          if primero then
          begin
            write(factor);
            primero := false;
          end
          else
            write(' * ', factor);
        end;
      end;

      factor := factor + 1;
    end;

    writeln;
    read(num);
  end;
end.
