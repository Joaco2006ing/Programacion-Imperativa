{Una misma funcion puede definirse de multiples maneras.
En este ejercicio vemos definiciones del numero combinatorio
C(m,n), la cantidad de subconjuntos de n elementos que pueden
construirse en un universo de m elementos.

(a) Implementar la funcion recursiva:

function combinaciones(m, n : integer) : integer;

que calcula C(m,n), suponiendo m >= n >= 0, a partir de
las siguientes ecuaciones:
    C(m,0) = 1
    C(m,m) = 1
    C(m,n) = C(m-1,n) + C(m-1,n-1), si m > n > 0.

Probar la funcion calculando:
    C(5,2), C(6,3), C(10,0), C(24,12).
}

function combinaciones(m, n: integer): integer;
begin
    if (n = 0) or (m = n) then
        combinaciones := 1
    else
        combinaciones := combinaciones(m - 1, n) +
                         combinaciones(m - 1, n - 1);
end;

{Resultados:
  C(5,2) = 10
  C(6,3) = 20
  C(10,0) = 1
  C(24,12) = 2704156}