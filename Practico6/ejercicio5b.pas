{Escriba un programa que lea un entero positivo K y despliegue una secuencia de cuadrados de enteros
positivos consecutivos. La secuencia comienza con el entero 1 y termina cuando la diferencia entre un
cuadrado y el anterior sea mayor que K.
(b) Escriba una soluci´on que utilice una iteraci´on for. Sugerencia: note que la diferencia entre cuadrados
consecutivos es siempre un n´umero impar. A partir de esta observaci´on, intente predecir el largo de la
secuencia en funci´on de K}
program ejercicio5b;
var
    k, i, limite : integer;
begin
    write('Ingrese k: ');
    readln(k);
    write('Secuencia de cuadrados:');
    limite := (k div 2) + 1;
    for i := 1 to limite do
    begin
        write(i * i, ' ');
    end;
end.