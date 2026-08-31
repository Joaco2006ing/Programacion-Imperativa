{
  Ejercicio 3
  Procedimiento: procedure prueba(x: real; y: integer; var z: real);
  Variables en contexto: x : real; n : integer;

  Análisis de cada invocación:

  [F] prueba(1, 2.0, x)
      INCORRECTA. El segundo parámetro espera un tipo integer y se le pasa un real (2.0).

  [V] prueba(n, 3, x)
      CORRECTA. El primer parámetro (real por valor) acepta un entero (n), el segundo 
      es entero (3) y el tercero es una variable real (x) pasada por referencia.

  [F] prueba(n, 3, 2.0)
      INCORRECTA. El tercer parámetro es por referencia (var z: real) y no puede 
      recibir una constante/literal (2.0).

  [F] prueba(1, 3, n)
      INCORRECTA. El tercer parámetro es por referencia (var z: real) y requiere una 
      variable real. No admite variables de tipo integer (n).

  [V] prueba(5*n, round(7.3), x)
      CORRECTA. '5*n' es una expresión entera válida para el parámetro real (por valor), 
      'round(7.3)' retorna un integer, y 'x' es una variable real válida para 'var z'.

  [V] prueba(x, 3, x);
      CORRECTA. Sintácticamente es válida: el primer parámetro recibe el valor de x, 
      el segundo un entero y el tercero la referencia de la variable real x.

  [F] prueba(Prueba(5, 33.8, x), 92, x)
      INCORRECTA. 'prueba' es un procedimiento, por lo que no retorna ningún valor y no 
      puede usarse como expresión/argumento de otra invocación.
}