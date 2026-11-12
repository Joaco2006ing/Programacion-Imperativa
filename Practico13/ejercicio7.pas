{ Escriba un programa donde el usuario ingrese una secuencia de enteros positivos y la salida sea la secuencia
ordenada en forma descendente utilizando el m´etodo del ordenamiento por inserci´on. La secuencia ingresada
por el usuario es de largo variable y termina con el n´umero -1. Si la secuencia es vac´ıa, el programa no debe
imprimir nada. Puede asumir que como m´aximo el usuario ingresar´a una cantidad N de n´umeros, siendo N
una constante declarada al inicio del programa.}

program ejercicio7;

const
  N = 100;

type
  ArregloEnteros = array[1..N] of integer;

var
  a: ArregloEnteros;
  tope, valor, i, j: integer;

begin
  tope := 0;
  read(valor);

  while valor <> -1 do
  begin
    tope := tope + 1;
    a[tope] := valor;
    read(valor);
  end;

  for i := 2 to tope do
  begin
    valor := a[i];
    j := i - 1;

    while (j >= 1) and (a[j] < valor) do
    begin
      a[j + 1] := a[j];
      j := j - 1;
    end;

    a[j + 1] := valor;
  end;

  for i := 1 to tope do
    write(a[i], ' ');
end.