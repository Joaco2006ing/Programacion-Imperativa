{(c) Escriba un programa que despliegue la cantidad de palabras que contienen la letra una sola vez.}
program ejercicio2c;
var
    letraBuscada, carActual : char;
    cuentaEnPalabra, contadorTotal : integer;
begin
    write('Letra: ');
    readln(letraBuscada);
    write('Oracion: ');
    contadorTotal := 0;
    cuentaEnPalabra := 0;
    read(carActual);
    while carActual <> '.' do
    begin
        if carActual = ' ' then
        begin
            if cuentaEnPalabra = 1 then
                contadorTotal := contadorTotal + 1;
            cuentaEnPalabra := 0;
        end
        else
        begin
            if carActual = letraBuscada then
                cuentaEnPalabra := cuentaEnPalabra + 1;
        end;
        read(carActual);
    end;
    if cuentaEnPalabra = 1 then
        contadorTotal := contadorTotal + 1;
    writeln('La oracion tiene ', contadorTotal, ' palabras que contienen la letra una sola vez');
end.