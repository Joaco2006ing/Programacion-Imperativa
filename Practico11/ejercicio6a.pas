{. Se desea implementar el producto de matrices de elementos de tipo Nerr (del ejercicio anterior). Las matrices
a operar podr´an tener diferentes dimensiones. Se sabe que si una matriz tiene dimensi´on mxn, entonces m y
n son enteros positivos que nunca superar´an constantes conocidas Y y X respectivamente.
El producto entre matrices de tipo Nerr se define de manera an´aloga al producto de matrices de n´umeros
naturales con la suma y el producto para el tipo Nerr dado en el ejercicio anterior.
Sea la matriz m1 de dimensi´on m x n y la matriz m2 de dimensi´on p x q. Si n = p, entonces el producto
m1 x m2 tendr´a dimensi´on m x q, en caso contrario diremos que el producto falla.}
{(a) Defina el tipo MNerr, que representa las matrices de dimensiones m x n de tipo Nerr, para cualquier m
entre 1 e Y, y para cualquier n entre 1 y X. Puede asumir que X e Y son constantes con valores mayores
o iguales que 1. Adem´as MNerr debe tener un valor de error merr para el caso en que el producto de
matrices falle. Defina tambi´en cualquier tipo enumerado auxiliar que pueda necesitar.}

const
    X = ...; {cantidad maxima de columnas}
    Y = ...; {cantidad maxima de filas}

type
    TipoErrorMatriz = (sinError, merr);

    MNerr = record
        filas: 1..Y;
        columnas: 1..X;
        matriz: array[1..Y, 1..X] of Nerr;
        error: TipoErrorMatriz;
    end;