{Deseamos hallar la descomposici´on de un n´umero natural (n ∈ N) en factores primos.
Ej: 8 = 2 ∗ 2 ∗ 2, 36 = 2 ∗ 2 ∗ 3 ∗ 3, 37 = 37, 20 = 2 ∗ 2 ∗ 5, 105 = 3 ∗ 5 ∗ 7, 600 = 2 ∗ 2 ∗ 2 ∗ 3 ∗ 5 ∗ 5
Vamos a suponer que dicha descomposici´on no involucra m´as de M n´umeros primos, donde M se supone una
constante previamente definida en el valor adecuado. Deseamos almacenar la descomposici´on en un arreglo
con tope.}
{(b) Escriba un programa principal que permita probar el subprograma de la parte anterior, declarando
toda variable que sea necesaria. Tambi´en debe definir cualquier otro subprograma auxiliar que necesite
para carga y/o exhibici´on de datos en la salida est´andar.
}

program ejercicio9b;

const
    N = 100000;
    M = 100;

type
    Factor = record
        primo: 2..N;
        case multiple: boolean of
            true: (exponente: 2..N);
            false: ();
    end;

    Descomp = record
        factores: array[1..M] of Factor;
        tope: 0..M;
    end;

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

procedure mostrarDescomposicion(listaFac: Descomp);
var
    i: integer;
begin
    for i := 1 to listaFac.tope do
    begin
        if i > 1 then
            write(' * ');
        write(listaFac.factores[i].primo);
        if listaFac.factores[i].multiple then
            write('^', listaFac.factores[i].exponente);
    end;
    writeln;
end;

var
    num: integer;
    listaFac: Descomp;

begin
    write('Ingrese un numero mayor que 1: ');
    readln(num);
    factorizacion(num, listaFac);
    mostrarDescomposicion(listaFac);
end.