{
  Ejercicio 1 (a)
  Pregunta: Explique la diferencia entre un parámetro pasado por valor y uno pasado por referencia.

  Respuesta:
  - Pasaje por valor: El subprograma recibe una copia del dato pasado como argumento. 
    Cualquier modificación dentro del procedimiento o función solo afecta a la copia local 
    y NO altera la variable original en el programa invocador. Sintácticamente, se declara 
    sin la palabra reservada 'var'.

  - Pasaje por referencia: El subprograma recibe una referencia (o dirección de memoria) 
    de la variable original. Por lo tanto, cualquier modificación que se realice dentro del 
    subprograma afecta directamente a la variable pasada como argumento. Sintácticamente, 
    se indica anteponiendo la palabra reservada 'var' al identificador del parámetro.
}
{
  Ejercicio 1 (b)
  Pregunta: Identifique cuáles parámetros están pasados por valor y cuáles están pasados por referencia en los siguientes encabezados:

  I)  function areaRectangulo(largo, ancho : real) : real;
      - 'largo': Pasado por valor.
      - 'ancho': Pasado por valor.
      (Ninguno tiene la palabra reservada 'var').

  II) procedure leerTriangulo(var base, altura : real);
      - 'base': Pasado por referencia.
      - 'altura': Pasado por referencia.
      (El modificador 'var' aplica a ambos identificadores de la lista).

  III) procedure perimetroAreaCuadrado(lado : real; var perimetro, area : real);
      - 'lado': Pasado por valor.
      - 'perimetro': Pasado por referencia.
      - 'area': Pasado por referencia.
}
{
  Ejercicio 1 (c)
  Pregunta: Explique la diferencia entre un parámetro de entrada y un parámetro de salida. 
  ¿Cómo se relacionan con los dos tipos de pasaje de parámetros vistos?

  Respuesta:
  - Parámetro de entrada: Se utiliza para enviar datos o información inicial desde el programa 
    invocador hacia el subprograma.
  - Parámetro de salida: Se utiliza para devolver un resultado o dato procesado desde el 
    subprograma hacia el programa invocador.

  Relación con los tipos de pasaje:
  - Los parámetros de ENTRADA se implementan mediante el pasaje POR VALOR. Al pasar solo una copia, 
    es más seguro porque garantiza que el subprograma no modifique accidentalmente la variable original.
  - Los parámetros de SALIDA se implementan obligatoriamente mediante el pasaje POR REFERENCIA 
    (usando 'var'). Es indispensable usar referencia para que las modificaciones hechas dentro 
    del procedimiento se reflejen en la variable del programa principal.
}
{
  Ejercicio 1 (d)
  Pregunta: Indique cuáles de las siguientes invocaciones son correctas. 
  Suponga que x, y, z son reales e i, j son enteras. Explique.

  Declaraciones previas:
    I)   function areaRectangulo(largo, ancho : real) : real;
    II)  procedure leerTriangulo(var base, altura : real);
    III) procedure perimetroAreaCuadrado(lado : real; var perimetro, area : real);

  Análisis de cada invocación:

  [V] leerTriangulo(x, y)
      CORRECTA. Pasa dos variables de tipo real por referencia (var), 
      coincidiendo en tipo y permitiendo modificar su contenido.

  [F] leerTriangulo(i, j)
      INCORRECTA. Los parámetros son por referencia (var real). En pasaje por 
      referencia los tipos deben coincidir exactamente; no se permite pasar 
      variables de tipo integer a un parámetro 'var real'.

  [F] leerTriangulo(2.2, 3.5)
      INCORRECTA. Los parámetros son por referencia (var), por lo que requieren 
      obligatoriamente variables de memoria. No se pueden pasar literales/constantes.

  [V] z := areaRectangulo(3, 5)
      CORRECTA. Los parámetros se pasan por valor, permitiendo pasar literales 
      numéricos (Pascal convierte automáticamente integer a real al pasar por valor). 
      El resultado devuelto se asigna correctamente a la variable real 'z'.

  [F] areaRectangulo(x, y)
      INCORRECTA. 'areaRectangulo' es una función y debe invocarse dentro de 
      una expresión (como una asignación o un writeln) para consumir el valor que retorna.

  [V] perimetroAreaCuadrado(2.5, y, z)
      CORRECTA. El primer parámetro es por valor (acepta el literal 2.5) y 
      los otros dos son por referencia (se les pasan las variables reales 'y' y 'z').

  [F] perimetroAreaCuadrado(x, 3.2, 4.7)
      INCORRECTA. El segundo y tercer parámetro son por referencia (var) y 
      se les están pasando literales numéricos (3.2 y 4.7) en lugar de variables.
}