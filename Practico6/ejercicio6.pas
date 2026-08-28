{La compa˜n´ıa Riky Gamusino:
-vende actualmente 20 gamusinos al mes
-obtiene un beneficio de $30 por gamusino.
-gasta una cierta suma al mes en publicidad
-tiene costos de funcionamiento de $100 al mes que no dependen del volumen de ventas.
-si dobla la cantidad gastada en publicidad, las ventas se incrementan en un 50 por ciento.
Escriba un programa que lea el gasto inicial en publicidad y despliegue una tabla que determine las ventas
y el beneficio neto en funci´on de tal gasto. La tabla comienza con el gasto inicial en publicidad leido de
la entrada. Cada nueva fila dobla la cantidad gastada en publicidad. La tabla finaliza cuando el beneficio
neto empieza a declinar. La salida debe incluir las cantidades hasta la primera vez que el beneficio neto
disminuye.}
program ejercicio6;
var
    publicidad, ventas, beneficioActual, beneficioAnterior: integer; 
begin
    write('Ingrese el gasto inicial en publicidad: ');
    readln(publicidad);

    ventas := 20;
    beneficioAnterior := (ventas * 30) - publicidad - 100;

    writeln('Gastado Publicidad   Ventas   Beneficio Neto');
    writeln(publicidad:18, ventas:9, beneficioAnterior:17);

    repeat
        publicidad := publicidad * 2;
        ventas := trunc(ventas * 1.5);
        beneficioActual := (ventas * 30) - publicidad - 100;

        writeln(publicidad:18, ventas:9, beneficioActual:17);

        if beneficioActual >= beneficioAnterior then
            beneficioAnterior := beneficioActual;

    until beneficioActual < beneficioAnterior;
end.