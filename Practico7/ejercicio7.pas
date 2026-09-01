{
  Ejercicio 7
  Consigna:
  Implemente un procedimiento con cabezal:
    procedure dibujo (ancho : integer; c: char);
  que invoque los procedimientos de los Ejercicios 5 y 6 y despliegue 
  la figura con lados crecientes, centro y lados decrecientes.
}

procedure dibujo(ancho: integer; c: char);
begin
 
  diag2(ancho - 1, ' ', c);


  rectangulo(1, ancho, c);


  diag1(ancho - 1, c, ' ');
end;