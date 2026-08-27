{Escriba un programa que lea un entero positivo n y despliegue la ra´ız cuadrada de los n primeros naturales
primos.
Escriba una soluci´on que utilice iteraci´on condicional (while o repeat).}
program ejercicio4a;
var
    n, cantPrimos, candidato, d : integer;
    esPrimo : boolean;
begin
    write('Ingrese n: ');
    readln(n);
    cantPrimos := 0;
    candidato := 2;
    while cantPrimos < n do
    begin  
        esPrimo := true;
        d := 2;
        while (d * d <= candidato) and (esPrimo) do
        begin
            if candidato mod d = 0 then
                esPrimo := false;
            d := d + 1
        end;
        if esPrimo then
        begin
            cantPrimos := cantPrimos + 1;
            writeln(cantPrimos, ': Primo: ', candidato, ' Raiz Cuadrada: ', sqrt(candidato):2:2)
        end;
        candidato := candidato + 1
    end;
end.