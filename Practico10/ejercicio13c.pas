const
    CANT_SALONES = ...; { valor entero mayor a 0 }
    MAX_PIZARRONES = ...; { valor entero mayor a 0 }
type
    TSalon = record
        asientos : Integer;
        pizarrones : 1..MAX_PIZARRONES;
        hayProyector : Boolean;
end;
    TFacultad = array [1..CANT_SALONES] of TSalon;
{(c) Implemente la funci´on primerSalonSinAsientos tal que devuelve el ´ındice de la celda correspondiente
al primer sal´on de la facultad que no tiene ning´un asiento. En caso de que no haya ning´un sal´on sin
asientos, devuelve cero. Su encabezado es el siguiente:
function primerSalonSinAsientos (facu: TFacultad) : Integer;
}

function primerSalonSinAsientos(facu: TFacultad): Integer;
var
    i: integer;
begin
    primerSalonSinAsientos := 0;
    i := 1;

    while (i <= CANT_SALONES) and
          (primerSalonSinAsientos = 0) do
    begin
        if facu[i].asientos = 0 then
            primerSalonSinAsientos := i;
        i := i + 1;
    end;
end;