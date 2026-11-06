{Una sociedad geneal´ogica tiene un arreglo de registros con datos de personas. Los datos son, para cada
persona, su nombre, la fecha de su nacimiento y los ´ındices en el arreglo de los registros de los datos de su
padre y de su madre. Cada nombre de persona aparece una ´unica vez. Se definen los siguientes tipos de
datos para representar esta realidad:
}
{ (d) Escriba un programa principal que permita probar los subprogramas de las partes anteriores, declarando
toda variable que sea necesaria. Tambi´en debe definir cualquier otro subprograma auxiliar que necesite
para carga y/o exhibici´on de datos.}

program ejercicio2d;

const
    MAXPERSONAS = 100;
    MAXCAD = 30;

type
    Cadena = record
        letras: array[1..MAXCAD] of char;
        largo: 0..MAXCAD;
    end;

    Fecha = record
        dia: 1..31;
        mes: 1..12;
        anio: 0..maxint;
    end;

    Persona = record
        nombre: Cadena;
        fechNac: Fecha;
        indMadre, indPadre: 0..MAXPERSONAS;
    end;

    Familia = record
        pers: array[1..MAXPERSONAS] of Persona;
        tope: 0..MAXPERSONAS;
    end;

function cadenasIguales(cad1, cad2: Cadena): boolean;
var
    i: integer;
begin
    cadenasIguales := cad1.largo = cad2.largo;
    i := 1;
    while (i <= cad1.largo) and cadenasIguales do
    begin
        if cad1.letras[i] <> cad2.letras[i] then
            cadenasIguales := false;
        i := i + 1;
    end;
end;

procedure leerCadena(var cad: Cadena);
var
    i: integer;
begin
    read(cad.largo);
    for i := 1 to cad.largo do
        read(cad.letras[i]);
end;

procedure desplegarCadena(cad: Cadena);
var
    i: integer;
begin
    for i := 1 to cad.largo do
        write(cad.letras[i]);
end;

procedure desplegarFecha(fecha: Fecha);
begin
    writeln(fecha.dia, '/', fecha.mes, '/', fecha.anio);
end;

procedure antepasados(usted: Cadena; historia: Familia);
var
    i, indice: integer;
    encontrado: boolean;
begin
    encontrado := false;
    i := 1;

    while (i <= historia.tope) and (not encontrado) do
    begin
        if cadenasIguales(historia.pers[i].nombre, usted) then
            encontrado := true
        else
            i := i + 1;
    end;

    if encontrado then
    begin
        if historia.pers[i].indPadre <> 0 then
        begin
            indice := historia.pers[i].indPadre;
            write('Padre: ');
            desplegarCadena(historia.pers[indice].nombre);
            write(', fecha de nacimiento: ');
            desplegarFecha(historia.pers[indice].fechNac);
        end;

        if historia.pers[i].indMadre <> 0 then
        begin
            indice := historia.pers[i].indMadre;
            write('Madre: ');
            desplegarCadena(historia.pers[indice].nombre);
            write(', fecha de nacimiento: ');
            desplegarFecha(historia.pers[indice].fechNac);
        end;
    end;
end;

procedure leerPersona(var persona: Persona);
begin
    leerCadena(persona.nombre);
    readln(persona.fechNac.dia, persona.fechNac.mes, persona.fechNac.anio);
    readln(persona.indMadre, persona.indPadre);
end;

procedure leerFamilia(var familia: Familia);
var
    i: integer;
begin
    readln(familia.tope);
    for i := 1 to familia.tope do
        leerPersona(familia.pers[i]);
end;

var
    historia: Familia;
    usted: Cadena;

begin
    leerFamilia(historia);
    leerCadena(usted);
    antepasados(usted, historia);
end.