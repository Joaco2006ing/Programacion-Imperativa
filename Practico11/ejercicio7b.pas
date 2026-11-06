{En una isla del Caribe una banda de piratas se gana la vida asaltando barcos mercantes. Anualmente en
la isla se realiza un evento multitudinario llamado ”la entrega de los premios Calavera”. Para este a˜no los
piratas est´an pensando en entregar el premio Calavera de oro al pirata que haya conseguido m´as dinero
asaltando barcos para la banda. Como usualmente los piratas discuten a qui´en le corresponden los premios
en trifulcas interminables y sangrientas, este a˜no la comisi´on directiva de la banda ha decidido informatizar
el registro de logros de los piratas en los distintos asaltos, con la esperanza de terminar as´ı con algunas de
las discusiones sobre los cr´editos que le corresponden a cada pirata.
Los logros de los piratas durante el a˜no se representan mediante las siguientes declaraciones:}
const
        MAXPIRATAS = ...; {valor entero mayor estricto a 0}
        MAXASALTOS = ...; {valor entero mayor estricto a 0}
        MAXDIGITOSCI = ...; {valor entero mayor estricto a 0}
        MAXCADENA = ...; {valor entero mayor estricto a 0}
type
    TipoCadena = record
        letras: array [1..MAXCADENA] of char;
        tope: 0 .. MAXCADENA
end;
        TipoCI = array [1..MAXDIGITOSCI] of '0'..'9';
    TipoFecha = record
        dia: 1..31;
        mes: 1..12;
        anio: 0..maxint;
end;
    TipoAsalto = record
        nombre_barco: TipoCadena;
        fecha: TipoFecha;
        botin: 1..maxint;
end;
    ConjuntoAsaltos = record
        asaltos: array [1..MAXASALTOS] of TipoAsalto;
        tope: 0..MAXASALTOS
end;
    TipoCausaMuerte = (asesinato, enfermedad, accidente);
    TipoPirata = record
        nombre: TipoCadena;
        ci: TipoCI;
        case estaVivo: boolean of
        true: (asaltos: ConjuntoAsaltos);
        false: (causaMuerte: TipoCausaMuerte; fechaMuerte: TipoFecha)
end;
    Banda = record
        pirata: array [1..MAXPIRATAS] of TipoPirata;
        tope: 0..MAXPIRATAS
end;
{(b) Implemente un procedimiento el cual, dada una banda de piratas piratas y un a˜no anio, retorna en
el par´ametro piratasMerecedores las c´edulas de los piratas vivos merecedores del premio Calavera
de Oro. Tener en cuenta que varios piratas pueden coincidir en la cantidad de dinero obtenido para la
banda.
procedure hallarGanadores (piratas:Banda; anio:integer; var piratasMerecedores: ConjuntoCIs);
El tipo ConjuntoCIs se declara como sigue:}
type
    ConjuntoCIs = record
        cedulas: array [1..MAXPIRATAS] of TipoCI;
        tope: 0..MAXPIRATAS
    end;

function contarDinero(ca: ConjuntoAsaltos; anio: integer): integer;
var
    i: integer;
begin
    contarDinero := 0;
    for i := 1 to ca.tope do
        if ca.asaltos[i].fecha.anio = anio then
            contarDinero := contarDinero + ca.asaltos[i].botin;
end;

procedure hallarGanadores(piratas: Banda; anio: integer;
                          var piratasMerecedores: ConjuntoCIs);
var
    i, dinero, maxDinero: integer;
begin
    piratasMerecedores.tope := 0;
    maxDinero := 0;

    for i := 1 to piratas.tope do
        if piratas.pirata[i].estaVivo then
        begin
            dinero := contarDinero(piratas.pirata[i].asaltos, anio);

            if dinero > maxDinero then
            begin
                maxDinero := dinero;
                piratasMerecedores.tope := 1;
                piratasMerecedores.cedulas[1] := piratas.pirata[i].ci;
            end
            else if dinero = maxDinero then
            begin
                piratasMerecedores.tope := piratasMerecedores.tope + 1;
                piratasMerecedores.cedulas[piratasMerecedores.tope] :=
                    piratas.pirata[i].ci;
            end;
        end;
end;