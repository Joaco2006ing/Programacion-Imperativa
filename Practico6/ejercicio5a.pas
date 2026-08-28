{5. Escriba un programa que lea un entero positivo K y despliegue una secuencia de cuadrados de enteros
positivos consecutivos. La secuencia comienza con el entero 1 y termina cuando la diferencia entre un
cuadrado y el anterior sea mayor que K.
(a) Escriba una soluci´on que utilice iteraci´on condicional (while o repeat).}
program ejercicio5a;
var
    k, i, actual, anterior, dif : integer;
begin
    write('Ingrese k: ');
    readln(k);
    write('Secuencia de cuadrados:');   
    i := 1;
    anterior := 0;
    repeat
    begin
        actual := i * i;
        dif := actual - anterior;
        write(actual , ' ');
        anterior := actual;
        i := i + 1;
    end;
    until dif > k
end.