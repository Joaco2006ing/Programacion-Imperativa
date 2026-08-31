{
  Ejercicio 2 (a)
  Pregunta: Explique la diferencia entre un parámetro (o parámetro formal) 
  y un argumento (o parámetro verdadero). Indique cuáles son los parámetros.

  Respuesta:
  - Parámetro formal: Es la variable declarada en la cabecera del subprograma 
    que define el nombre y el tipo de dato que se espera recibir.
  - Argumento (parámetro verdadero/actual): Es el valor real, expresión o variable 
    concreta que se envía al subprograma en la línea de invocación.

  En el fragmento dado:
  - Parámetros formales: tiempo, espacio, dia, signo.
  - Argumentos (parámetros verdaderos): 3.5, 6.0, hora, 'Z'.
}
{
  Ejercicio 2 (b)
  Pregunta: ¿Es necesario que los argumentos sean siempre variables? Explique.

  Respuesta:
  No, no es necesario que sean siempre variables. Depende del tipo de pasaje:
  - En pasaje por valor: El argumento puede ser una variable, una constante/literal 
    (como 3.5 o 'Z'), o el resultado de una expresión (como a + b).
  - En pasaje por referencia (var): El argumento DEBE ser obligatoriamente una variable, 
    ya que el subprograma necesita acceder y modificar su dirección de memoria.
}
{
  Ejercicio 2 (c)
  Pregunta: En caso de que los argumentos sean variables, ¿es necesario que 
  tengan el mismo nombre que sus correspondientes parámetros? Explique.

  Respuesta:
  No, no es necesario. Los nombres de los parámetros formales y los de las variables 
  pasadas como argumentos son completamente independientes porque pertenecen a 
  ámbitos (scopes) distintos. La asociación entre el argumento y el parámetro formal 
  se realiza de forma posicional (por el orden en el que aparecen en la invocación), 
  por lo que el argumento puede tener cualquier identificador válido en el programa invocador.
}