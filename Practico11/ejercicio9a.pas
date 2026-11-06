{Deseamos hallar la descomposici´on de un n´umero natural (n ∈ N) en factores primos.
Ej: 8 = 2 ∗ 2 ∗ 2, 36 = 2 ∗ 2 ∗ 3 ∗ 3, 37 = 37, 20 = 2 ∗ 2 ∗ 5, 105 = 3 ∗ 5 ∗ 7, 600 = 2 ∗ 2 ∗ 2 ∗ 3 ∗ 5 ∗ 5
Vamos a suponer que dicha descomposici´on no involucra m´as de M n´umeros primos, donde M se supone una
constante previamente definida en el valor adecuado. Deseamos almacenar la descomposici´on en un arreglo
con tope:}
type Descomp = record
    factores : array [1..M] of Factor;
    tope : 0..M;
    end;
{el cual contiene los factores ordenados en forma ascendente y sus respectivos exponentes.}
type Factor = record
    primo : 2..N;
    case multiple : boolean of
     true: (exponente : 2..N);
     false : ();
    end;
{Los factores se representan mediante un registro con variante (record-case). Si el exponente de un factor es
1, entonces se almacena simplemente el n´umero primo. Si por el contrario, el exponente del factor es mayor
que 1, entonces se almacena el n´umero primo y el valor del exponente.}
{(a) Implemente un procedimiento que reciba como entrada un n´umero cualquiera mayor que 1 y retorne
su descomposici´on en factores primos.
Utilizar el siguiente cabezal:
Procedure factorizacion (num : Integer; var listaFac : Descomp);}

procedure factorizacion(num: integer; var listaFac: Descomp);
var
    divisor, exponente: integer;
begin
    listaFac.tope := 0;
    divisor := 2;

    while divisor * divisor <= num do
    begin
        if num mod divisor = 0 then
        begin
            exponente := 0;

            while num mod divisor = 0 do
            begin
                num := num div divisor;
                exponente := exponente + 1;
            end;

            listaFac.tope := listaFac.tope + 1;
            listaFac.factores[listaFac.tope].primo := divisor;

            if exponente = 1 then
                listaFac.factores[listaFac.tope].multiple := false
            else
            begin
                listaFac.factores[listaFac.tope].multiple := true;
                listaFac.factores[listaFac.tope].exponente := exponente;
            end;
        end;

        divisor := divisor + 1;
    end;

    if num > 1 then
    begin
        listaFac.tope := listaFac.tope + 1;
        listaFac.factores[listaFac.tope].primo := num;
        listaFac.factores[listaFac.tope].multiple := false;
    end;
end;
