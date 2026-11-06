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
{(b) Implemente el procedimiento salonMasAsientos tal que devuelve el ´ındice de la celda correspondiente
al sal´on con la mayor cantidad de asientos de la facultad junto con la cantidad de asientos correspondiente. En caso de haber dos o m´as salones con la mayor cantidad de asientos, devuelve el primero de
ellos.
}
procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer;
var maxAsientos: Integer);
var
    i: integer;
begin
    indSalon := 1;
    maxAsientos := facu[1].asientos;

    for i := 2 to CANT_SALONES do
        if facu[i].asientos > maxAsientos then
        begin
            indSalon := i;
            maxAsientos := facu[i].asientos;
        end;
end;
