{(b) Escriba una soluci´on que utilice una repetici´on for.}
program ejercicio4b;
var
    n, i, candidato, d : integer;
    esPrimo : boolean;
begin
    write('Ingrese n: ');
    readln(n);
    candidato := 2;
    for i := 1 to n do
    begin
        repeat
            esPrimo := true;
            d := 2;
            while (d * d <= candidato) and (esPrimo) do
            begin
                if candidato mod d = 0 then
                    esPrimo := false;
                d := d + 1
            end;

            if not esPrimo then
                candidato := candidato + 1;
        until esPrimo;
        writeln(i, ': Primo: ', candidato, ' Raiz Cuadrada: ', sqrt(candidato):2:2);
        candidato := candidato + 1
    end;
end.
