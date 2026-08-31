{
  Ejercicio 4 (a)
  Pregunta: Indique cuáles son los parámetros formales del procedimiento proc. 
  Indique cuáles de ellos son parámetros por valor y cuáles son parámetros por referencia.

  Respuesta:
  - Parámetros formales: 'a', 'b' y 'c'.
  - Parámetros por valor: 'a' y 'b' (no llevan la palabra reservada 'var').
  - Parámetro por referencia: 'c' (lleva la palabra reservada 'var').
}
{
  Ejercicio 4 (b)
  Pregunta: Indique cuáles son los argumentos que aparecen en el programa.

  Respuesta:
  En las llamadas al procedimiento 'proc':
  - 'tum', 'num' y 'temp'.

  (En las llamadas al procedimiento estándar 'writeLn'):
  - Dentro de 'proc': 'a', 'b', 'c', 'aux'.
  - En el programa principal: 'temp'.
}
{
  Ejercicio 4 (c)
  Pregunta: Indique qué se exhibirá al ejecutar el programa.

  Seguimiento de ejecución:

  1. Primera llamada a proc(1, 2, temp):
     - a = 1, b = 2
     - aux := 1 * 2 = 2
     - aux := 2 + 1 = 3
     - c := 3 + 1 = 4  (modifica 'temp')
     - writeLn(a, b, c, aux) -> Imprime: 1 2 4 3
     - writeLn(temp)         -> Imprime: 4

  2. Segunda llamada a proc(0, 1, temp):
     - a = 0, b = 1
     - aux := 0 * 1 = 0
     - aux := 0 + 1 = 1
     - c := 1 + 0 = 1  (modifica 'temp')
     - writeLn(a, b, c, aux) -> Imprime: 0 1 1 1
     - writeLn(temp)         -> Imprime: 1

  Salida final en pantalla:
  1 2 4 3
  4
  0 1 1 1
  1
}