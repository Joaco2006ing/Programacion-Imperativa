{Escriba un programa que lea dos enteros positivos m y n, y exhiba todos los n´umeros primos en el rango.
En caso de que m sea mayor que n, no se exhibir´a ninguno.
¿Qu´e estructuras de control corresponde utilizar para resolver el problema? Explique su respuesta.}
program ejercicio8;
var
    m, n, num, d : integer;
    esPrimo : boolean;
begin
    write('Ingrese dos enteros positivos: ');
    readln(m, n);
    if m <= n then
    begin
        write('Los numeros primos entre ', m, ' y ', n, ' son: ')
    end;
    for num := m to n do
    begin
        if num > 1 then
        begin
            esPrimo := true;
            d := 2;
            while (d * d <= num) and (esPrimo) do
            begin
                if num mod d = 0 then
                begin
                    esPrimo := false
                end;
                d := d + 1
            end;

            if esPrimo then
            begin
                write(num, ' ')
            end;
        end;
    end;
end.