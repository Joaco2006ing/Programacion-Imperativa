const
    MAXF = . . .; {entero mayor estricto que 0}
    MAXC = . . .; {entero mayor estricto que 0}
type
    RangoF = 1 .. MAXF;
    RangoC = 1 .. MAXC;
    TVariante = (rojo, azul, verde);
    TFicha = record
        tipo : TVariante;
        puntaje : integer;
end;
    TTablero = array [rangoF, rangoC] of TFicha;
{Escriba el procedimiento ordenarTablero que ordena por el m´etodo de inserci´on las fichas del tablero de
forma ascendente seg´un los siguientes criterios:
-Seg´un color: rojo < azul < verde
-Si hay empate de color se ordena en forma ascendente por el puntaje
El recorrido de la matriz se define primero por el ´ındice de la fila de menor a mayor y luego por el ´ındice
de la columna de menor a mayor.
procedure ordenarTablero(var t:TTablero);}

function fichaMenor(f1, f2: TFicha): boolean;
begin
    if f1.tipo < f2.tipo then
        fichaMenor := true
    else if f1.tipo > f2.tipo then
        fichaMenor := false
    else
        fichaMenor := f1.puntaje < f2.puntaje;
end;

procedure ordenarTablero(var t: TTablero);
var
    pos, anterior: integer;
    fila, columna, filaAnterior, columnaAnterior: integer;
    ficha: TFicha;
begin
    for pos := 2 to MAXF * MAXC do
    begin
        fila := ((pos - 1) div MAXC) + 1;
        columna := ((pos - 1) mod MAXC) + 1;
        ficha := t[fila, columna];
        anterior := pos - 1;

        filaAnterior := ((anterior - 1) div MAXC) + 1;
        columnaAnterior := ((anterior - 1) mod MAXC) + 1;

        while (anterior >= 1) and
              fichaMenor(ficha, t[filaAnterior, columnaAnterior]) do
        begin
            fila := ((anterior) div MAXC) + 1;
            columna := ((anterior) mod MAXC) + 1;
            t[fila, columna] := t[filaAnterior, columnaAnterior];

            anterior := anterior - 1;
            filaAnterior := ((anterior - 1) div MAXC) + 1;
            columnaAnterior := ((anterior - 1) mod MAXC) + 1;
        end;

        fila := ((anterior) div MAXC) + 1;
        columna := ((anterior) mod MAXC) + 1;
        t[fila, columna] := ficha;
    end;
end;