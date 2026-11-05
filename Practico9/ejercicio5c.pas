{Escriba un programa principal que lea dos cadenas de largo M y N y despliegue si la primer cadena ocurre
como parte de la segunda. Si la cadena ocurre, se debe mostrar la posici´on de la primera coincidencia.}
program ejercicio5c;

const
  M = 3;
  N = 10;

type
  CadenaM = array[1..M] of char;
  CadenaN = array[1..N] of char;

var
  cadM: CadenaM;
  cadN: CadenaN;
  posicion: integer;

begin
  write('Ingrese los ', M, ' caracteres de la cadenaM: ');
  leerCadenaM(cadM);

  write('Ingrese los ', N, ' caracteres de la cadenaN: ');
  leerCadenaN(cadN);

  posicion := indiceSubCadena(cadM, cadN);

  if posicion = 0 then
    writeln('La cadena no se encuentra')
  else
    writeln('La cadena se encuentra a partir de la posicion ', posicion);
end.