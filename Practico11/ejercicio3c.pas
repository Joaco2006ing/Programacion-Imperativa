const
    MAX = ...; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
end;
{(c) Escriba una funci´on llamada existeVocal que tenga como par´ametro una cadena de caracteres y
determine si en la cadena hay o no alguna letra vocal. La funci´on devuelve true en caso afirmativo y
false en caso negativo}

function existeVocal(cad: Cadena): boolean;
var
    i: integer;
begin
    existeVocal := false;
    i := 1;

    while (i <= cad.largo) and (not existeVocal) do
    begin
        if (cad.letras[i] = 'a') or (cad.letras[i] = 'e') or
           (cad.letras[i] = 'i') or (cad.letras[i] = 'o') or
           (cad.letras[i] = 'u') or (cad.letras[i] = 'A') or
           (cad.letras[i] = 'E') or (cad.letras[i] = 'I') or
           (cad.letras[i] = 'O') or (cad.letras[i] = 'U') then
            existeVocal := true;
        i := i + 1;
    end;
end;