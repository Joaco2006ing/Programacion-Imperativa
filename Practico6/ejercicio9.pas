{Escriba un programa que lea dos enteros positivos m y n y exhiba todos los primos gemelos en el rango.
Los primos gemelos son parejas de n´umeros primos con una diferencia entre s´ı de exactamente 2 unidades.
En caso de que m sea mayor que n, no se exhibir´a salida alguna.}
program ejercicio9;
var
    m, n, k, d : integer;
    primo1, primo2 : boolean;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m, n);
    if m <= n then
    begin
        writeln('Los primos gemelos entre ', m, ' y ', n, ' son:')
    end;
    for k := m to n - 2 do
    begin
        if k > 1 then
        begin
            primo1 := true;
            d := 2;
            while (d * d <= k) and (primo1) do
            begin
                if k mod d = 0 then
                begin
                    primo1 := false
                end;
                d := d + 1
            end;
            if primo1 then
            begin
                primo2 := true;
                d := 2;
                while (d * d <= k + 2) and (primo2) do
                begin
                    if (k + 2) mod d = 0 then
                    begin
                        primo2 := false
                    end;
                    d := d + 1
                end;
                if primo2 then
                begin
                    writeln(k, ' y ', k + 2)
                end;
            end;
        end;
    end;
end.