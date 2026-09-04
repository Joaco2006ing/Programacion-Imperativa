{
====================================================================
EJERCICIO 5 (b) - ALCANCE DE IDENTIFICADORES
====================================================================

1. DENTRO DEL PROGRAMA x:
--------------------------------------------------------------------
- a : Constante     (declarada en el programa x)
- b : Constante     (declarada en el programa x)
- c : Constante     (declarada en el programa x)
- d : Variable      (declarada en el programa x)
- e : Variable      (declarada en el programa x)
- f : Variable      (declarada en el programa x)
- y : Procedimiento (declarado en el programa x)

2. DENTRO DEL PROCEDIMIENTO y:
--------------------------------------------------------------------
- a : Constante     (declarada en el programa x)
- b : Variable      (declarada en el procedimiento y; oculta a la constante b de x)
- c : Variable      (declarada en el procedimiento y; oculta a la constante c de x)
- d : Variable      (declarada en el programa x)
- e : Variable      (declarada en el programa x)
- f : Variable      (declarada en el programa x)
- z : Procedimiento (declarado en el procedimiento y)
- y : Procedimiento (declarado en el programa x, accesible por recursion)

3. DENTRO DEL PROCEDIMIENTO z:
--------------------------------------------------------------------
- a : Constante     (declarada en el programa x)
- b : Variable      (declarada en el procedimiento y)
- c : Variable      (declarada en el procedimiento y)
- d : Variable      (declarada en el programa x)
- e : Variable      (declarada en el programa x)
- f : Variable      (declarada en el procedimiento z; oculta a la variable f de x)
- g : Variable      (declarada en el procedimiento z)
- z : Procedimiento (declarado en el procedimiento y, accesible por recursion)
- y : Procedimiento (declarado en el programa x)
====================================================================
}