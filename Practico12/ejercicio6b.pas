{Considere la ecuacion:
    k * C(n,k) = n * C(n-1,k-1), si n >= k >= 1.
A partir de ella, implementar la funcion recursiva:
function combinaciones2(n, k : integer) : integer;
que calcula C(n,k), suponiendo n >= k >= 0.
Probar la funcion calculando:
    C(5,2), C(6,3), C(10,0), C(24,12).
}

function combinaciones2(n, k: integer): integer;
begin
    if (k = 0) or (n = k) then
        combinaciones2 := 1
    else
        combinaciones2 := (n * combinaciones2(n - 1, k - 1)) div k;
end;

{Resultados:
  C(5,2) = 10
  C(6,3) = 20
  C(10,0) = 1
  C(24,12) = 2704156}