const
    CANT_LETRAS = ...; { valor entero mayor a 0 }
    CANT_ARTICULOS = ...; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999 (* La wikipedia comienza en 2001 *)
end;
    TNombre = array [1..CANT_LETRAS] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;
{(b) Teniendo en cuenta que cada art´ıculo tiene la fecha de su ´ultima actualizaci´on, implemente el procedimiento articuloMasReciente tal que dados la wikipedia y un idioma, devuelve el art´ıculo que tiene
la fecha m´as reciente en el idioma especificado. Asuma que en la wikipedia hay al menos un art´ıculo
en el idioma especificado.
procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);}

procedure articuloMasReciente(wiki: Wikipedia; idioma: TIdioma;
                              var art: TArticulo);
var
    i: integer;
    encontrado: boolean;
begin
    encontrado := false;

    for i := 1 to CANT_ARTICULOS do
        if wiki[i].idioma = idioma then
        begin
            if (not encontrado) or
               esPosterior(wiki[i].ultima_act, art.ultima_act) then
            begin
                art := wiki[i];
                encontrado := true;
            end;
        end;
end;
