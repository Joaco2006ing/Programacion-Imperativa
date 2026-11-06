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
{(c) Implemente el procedimiento imprimirArticulosMasRecientes tal que para cada idioma imprime el
nombre del art´ıculo m´as reciente en dicho idioma, junto con su cantidad de visitas y la fecha de su
´ultima actualizaci´on. Asuma que en la wikipedia hay al menos un articulo en cada uno de los tres
idiomas.
procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
}

procedure imprimirNombre(nombre: TNombre);
var
    i: integer;
begin
    for i := 1 to CANT_LETRAS do
        write(nombre[i]);
end;

procedure imprimirArticulo(art: TArticulo);
begin
    write('Articulo: ');
    imprimirNombre(art.nombre);
    writeln;
    writeln('Visitas: ', art.visitas);
    writeln('Ultima actualizacion: ', art.ultima_act.dia, '/',
            art.ultima_act.mes, '/', art.ultima_act.anio);
end;

procedure imprimirArticulosMasRecientes(wiki: Wikipedia);
var
    idioma: TIdioma;
    art: TArticulo;
begin
    for idioma := es to pt do
    begin
        articuloMasReciente(wiki, idioma, art);
        case idioma of
            es: writeln('Idioma: espanol');
            en: writeln('Idioma: ingles');
            pt: writeln('Idioma: portugues');
        end;
        imprimirArticulo(art);
        writeln;
    end;
end;