{. Se desea implementar el producto de matrices de elementos de tipo Nerr (del ejercicio anterior). Las matrices
a operar podr´an tener diferentes dimensiones. Se sabe que si una matriz tiene dimensi´on mxn, entonces m y
n son enteros positivos que nunca superar´an constantes conocidas Y y X respectivamente.
El producto entre matrices de tipo Nerr se define de manera an´aloga al producto de matrices de n´umeros
naturales con la suma y el producto para el tipo Nerr dado en el ejercicio anterior.
Sea la matriz m1 de dimensi´on m x n y la matriz m2 de dimensi´on p x q. Si n = p, entonces el producto
m1 x m2 tendr´a dimensi´on m x q, en caso contrario diremos que el producto falla.}
{(b) Implemente el procedimiento mprod, el cual recibe dos matrices m1 y m2, retornando en resu el producto
m1 x m2 o merr en caso de que dicho producto falle.
procedure mprod (m1, m2: MNerr; VAR resu: MNerr);
}

procedure mprod(m1, m2: MNerr; var resu: MNerr);
var
    i, j, k: integer;
    termino, acumulado: Nerr;
begin
    if m1.columnas <> m2.filas then
    begin
        resu.error := merr;
        resu.filas := 1;
        resu.columnas := 1;
    end
    else
    begin
        resu.error := sinError;
        resu.filas := m1.filas;
        resu.columnas := m2.columnas;

        for i := 1 to m1.filas do
            for j := 1 to m2.columnas do
            begin
                acumulado.esError := false;
                acumulado.natural := 0;

                for k := 1 to m1.columnas do
                begin
                    producto(m1.matriz[i, k], m2.matriz[k, j], termino);
                    suma(acumulado, termino, acumulado);
                end;

                resu.matriz[i, j] := acumulado;
            end;
    end;
end;