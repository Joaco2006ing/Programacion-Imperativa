{Una sociedad geneal´ogica tiene un arreglo de registros con datos de personas. Los datos son, para cada
persona, su nombre, la fecha de su nacimiento y los ´ındices en el arreglo de los registros de los datos de su
padre y de su madre. Cada nombre de persona aparece una ´unica vez. Se definen los siguientes tipos de
datos para representar esta realidad:
}
const
    MAXPERSONAS = ...; {valor entero mayor estricto a 0}
    MAXCAD = ...; {valor entero mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAXCAD] of char;
        largo : 0..MAXCAD;
end;
    Fecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 0..maxint;
end;
    Persona = record
        nombre : Cadena;
        fechNac : Fecha;
        indMadre, indPadre : 0..MAXPERSONAS;
end;
    Familia = record
    pers : array[1..MAXPERSONAS] of Persona;
    tope : 0..MAXPERSONAS;
end;
{Los campos indMadre e indPadre de una persona contienen el ´ındice de los registros de la madre y del
padre en el arreglo pers de la familia, o cero en caso de no disponer de la informaci´on correspondiente. En
caso de ser distinto de cero, se asume que es un ´ındice v´alido del arreglo.}
{(c) Escriba el procedimiento antepasados que, dado el nombre de una persona en el par´ametro usted y una
familia en el par´ametro historia, despliegue en la salida los nombres y fechas de nacimiento del padre
y de la madre de la persona de nombre usted (si es que se dispone de la informaci´on correspondiente).
En caso de que la persona de nombre usted no est´e registrada, no se desplegar´a nada.
procedure antepasados (usted : Cadena; historia : Familia);
}
procedure antepasados(usted: Cadena; historia: Familia);
var
    i, indice: integer;
    encontrado: boolean;

    procedure desplegarCadena(cad: Cadena);
    var
        j: integer;
    begin
        for j := 1 to cad.largo do
            write(cad.letras[j]);
    end;

    procedure desplegarFecha(fecha: Fecha);
    begin
        writeln(fecha.dia, '/', fecha.mes, '/', fecha.anio);
    end;

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