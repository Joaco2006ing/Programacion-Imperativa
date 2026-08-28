{ Escriba un programa que lea dos enteros positivos m y n (entre 1 y 10), y exhiba para cada entero en el
rango su correspondiente tabla de multiplicar. En caso de que m sea mayor que n no se exhibir´a nada. ¿Qu´e
estructuras de control corresponde utilizar para resolver el problema? Explique su respuesta.}
program ejercicio7;
var
    m, n, num, i : integer;
begin
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);

    for num := m to n do
    begin
        writeln('>>> Tabla ', num, ' <<<');
        
        for i := 1 to 10 do
        begin
            writeln(i, '*', num, ' = ', i * num)
        end;
    end;
end.