{(b) Escriba un programa que despliegue la cantidad de palabras que comienzan con la letra leida}
program ejercicio2b;
var
    letraBuscada, carActual : char;
    esInicioPalabra : boolean;
    contador : integer;
begin
    write('Escribe la letra a buscar: ');
    readln(letraBuscada);
    write('Escribe la oracion: ');
  contador := 0;
    esInicioPalabra:=true;
    read(carActual);

    while carActual <> '.' do
    begin
        if carActual = ' ' then
            esInicioPalabra := true
        else
        begin
            if esInicioPalabra then
              begin
                if carActual = letraBuscada then
                    contador := contador + 1;            
                esInicioPalabra := false;
        end;
      end;
        read(carActual);
    end;

    writeln('La oracion tiene ', contador, ' palabras que comienzan con ', letraBuscada)
end.