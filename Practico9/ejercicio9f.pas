{ (f) Escriba un programa principal que lea los valores del triangulo
  superior de la matriz y los almacene directamente en el arreglo
  unidimensional. Luego, debe leer una secuencia de parejas de coordenadas
  e invocar a obtSim por cada una de ellas para exhibir el valor almacenado
  en el arreglo unidimensional correspondiente a dichas coordenadas.
  La secuencia de datos de entrada finaliza con el valor -1. }

const
  N = ...; {valor entero mayor que cero}

type
  ArregloUni = array[1..(N * (N + 1) div 2)] of integer;

var
  arreglo: ArregloUni;
  i, j, k: integer;

begin
  k := 1;

  for i := 1 to N do
    for j := i to N do
    begin
      write('Ingrese valor para ', i, ' ', j, ': ');
      readln(arreglo[k]);
      k := k + 1;
    end;

  writeln('Ingrese parejas de coordenadas (-1 para finalizar):');
  read(i);

  while i <> -1 do
  begin
    read(j);
    writeln('Coordenadas: ', i, ' ', j);
    writeln('Valor almacenado: ', obtSim(arreglo, i, j));
    read(i);
  end;
end.
