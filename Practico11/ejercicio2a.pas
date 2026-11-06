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
{(a) Escriba la funci´on cadenasIguales que, dadas dos cadenas, determina si son iguales.
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
}

function cadenasIguales(cad1, cad2: Cadena): Boolean;
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
