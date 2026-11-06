const
    MAX = ...; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
end;
{(a) Escriba un procedimiento llamado cargarCadena que tenga como par´ametro una cadena de caracteres
y la cargue con caracteres leidos de la entrada est´andar. Al ingresar los caracteres, se utilizar´a un punto
(.) para marcar el f´ın de la cadena (el cual no forma parte de la misma, solo ser´a tipeado para marcar
su finalizaci´on). En caso de que se ingresen m´as de MAX caracteres, solamente se cargar´an los primeros
MAX, descartando los restantes.
}

procedure cargarCadena(var cad: Cadena);
var
    caracter: char;
begin
    cad.largo := 0;
    read(caracter);

    while caracter <> '.' do
    begin
        if cad.largo < MAX then
        begin
            cad.largo := cad.largo + 1;
            cad.letras[cad.largo] := caracter;
        end;
        read(caracter);
    end;
end;