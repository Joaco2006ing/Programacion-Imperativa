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
{(a) Implemente la funci´on dineroObtenidoPorPirata que calcula la suma de dinero obtenida por el pirata
de cedula CI, en el a˜no anio por la banda b. En caso de que el pirata se encuentre muerto o no se
encuentre en la banda debe retornar 0.
function dineroObtenidoPorPirata(pirata: TipoCI; anio: integer; b:Banda) : integer;
Se sugiere implementar primero las siguientes funciones auxiliares:
function ciIguales (ci1, ci2: TipoCI): boolean;
(* Retorna true si ci1 y ci2 son iguales y false en caso contrario*)
function contarDinero (ca: ConjuntoAsaltos; anio:integer): integer;
(* Retorna la suma del dinero obtenido en los asaltos del conjunto ca realizados
durante el a~no anio. *)}

function ciIguales(ci1, ci2: TipoCI): boolean;
var
        i: integer;
begin
        ciIguales := true;
        i := 1;

        while (i <= MAXDIGITOSCI) and ciIguales do
        begin
                if ci1[i] <> ci2[i] then
                        ciIguales := false;
                i := i + 1;
        end;
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

function dineroObtenidoPorPirata(pirata: TipoCI; anio: integer;
        b: Banda): integer;
var
        i: integer;
begin
        dineroObtenidoPorPirata := 0;
        i := 1;

        while (i <= b.tope) and
              (not ciIguales(b.pirata[i].ci, pirata)) do
                i := i + 1;

        if (i <= b.tope) and b.pirata[i].estaVivo then
                dineroObtenidoPorPirata :=
                        contarDinero(b.pirata[i].asaltos, anio);
end;