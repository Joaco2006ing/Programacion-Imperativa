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
{(a) Implemente la funci´on esPosterior tal que dadas dos fechas f1 y f2, devuelve TRUE si la fecha f1 es
posterior que la fecha f2 y FALSE en caso contrario.
}
function esPosterior (f1, f2: TFecha) : boolean;
begin
    esPosterior := (f1.anio > f2.anio) or
                   ((f1.anio = f2.anio) and (f1.mes > f2.mes)) or
                   ((f1.anio = f2.anio) and (f1.mes = f2.mes) and
                    (f1.dia > f2.dia));
end;