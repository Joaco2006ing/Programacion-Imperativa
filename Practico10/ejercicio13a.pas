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
{(a) Implemente el procedimiento informeSalones tal que imprima un informe de todos los salones de la
facultad, incluyendo, por cada uno de ellos, cantidad de asientos, pizarrones, y si tiene proyector o no.
procedure informeSalones (facu: TFacultad);}

procedure informeSalones(facu: TFacultad);
var
    i: integer;
begin
    for i := 1 to CANT_SALONES do
    begin
        writeln('Salon ', i);
        writeln('Asientos: ', facu[i].asientos);
        writeln('Pizarrones: ', facu[i].pizarrones);

        if facu[i].hayProyector then
            writeln('Tiene proyector')
        else
            writeln('No tiene proyector');
    end;
end;