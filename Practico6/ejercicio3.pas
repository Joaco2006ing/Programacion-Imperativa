{Escriba un programa que eval´ue un polinomio para un valor dado.
El usuario ingresa los siguientes datos:-un n´umero real v -una secuencia de enteros no negativos an, an−1, . . . , a1, a0 
que son los coeficientes del polinomio. El final de la secuencia est´a indicado por el centinela -1. 
Siempre se ingresar´a al menos un n´umero antesdel centinela.
El polinomio en cuesti´on es:P(x) := anxn + an−1xn−1 + · · · + a1x + a0 y el programa debe desplegar en la salida el valor P(v).
Para calcular el resultado se sugiere utilizar la regla de Ruffini-Horner : P(v) = (· · ·((anv + an−1)v + an−2)v + · · · + a1)v + a0}
program ejercicio3;
var
    v, resultado : real;
    coef : integer;
begin
    write('Ingrese x: ');
    readln(v);
    write('Ingrese los coeficientes: ');
    read(coef);
    resultado := coef;
    read(coef);
    while coef <> -1 do
    begin
        resultado := (resultado * v) + coef;
        read(coef);
    end;

    writeln('El valor del polinomio evaluado en ', v:2:2, ' es ', resultado:2:2)
end.