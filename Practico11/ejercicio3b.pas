const
    MAX = ...; {valor mayor estricto a 0}
type
    Cadena = record
        letras : array [1..MAX] of char;
        largo : 0..MAX;
end;
{(b) Escriba una funci´on llamada contarOcurrencias que tenga como par´ametro una cadena de caracteres
llamada frase y una variable de tipo car´acter llamada letra. La funci´on devuelve el n´umero de
apariciones del car´acter letra en la cadena frase.}

function contarOcurrencias(frase: Cadena; letra: char): integer;
var
    i: integer;
begin
    contarOcurrencias := 0;

    for i := 1 to frase.largo do
        if frase.letras[i] = letra then
            contarOcurrencias := contarOcurrencias + 1;
end;
