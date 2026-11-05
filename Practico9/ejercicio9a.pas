{(a) Sea N una constante con alg´un valor entero mayor que cero. Declare el tipo MatrizN correspondiente a
una matriz de enteros con N filas y N columnas. Calcule en funci´on de N, el largo (cantidad de celdas)
que debe tener el arreglo unidimensional. Declare el tipo ArregloUni correspondiente a dicho arreglo.}

const
  N = ...; {valor entero mayor que cero}

type
  MatrizN = array[1..N, 1..N] of integer;
  ArregloUni = array[1..(N * (N + 1) div 2)] of integer;
