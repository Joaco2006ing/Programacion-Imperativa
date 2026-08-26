{9. ¿Cual sera la salida del siguiente programa al ejecutarlo en Pascal estandar? ¿y en Free Pascal?}
program verificar;
var
i : Integer;
r : Real;
begin
r := i + 1;
writeLn (i,r)
end.
{ Respuesta: -En Pascal estándar, el programa no produce ninguna salida porque genera un error de compilación (o de ejecución). 
              El estándar ISO de Pascal prohíbe el uso de variables locales no inicializadas; 
              la variable i se lee en la línea r := i + 1 sin haber recibido un valor previo.
              -En Free Pascal (con la configuración por defecto del compilador), el comportamiento se divide en dos fases:
              Al compilar: Muestra una advertencia (warning) indicando que la variable i no está inicializada 
              (Variable "i" does not seem to be initialized), pero compila exitosamente.
              Al ejecutar: Free Pascal inicializa automáticamente las variables globales/locales no inicializadas en cero (0). 
              La salida en pantalla es: 1.0}