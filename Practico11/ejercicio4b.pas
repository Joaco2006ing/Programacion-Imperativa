{Se desea implementar un procedimiento que calcule las ra´ıces de la ecuaci´on cuadr´atica ax2 + bx + c = 0
donde a, b, y c son coeficientes reales. El procedimiento debe determinar si la ecuaci´on tiene dos ra´ıces reales
y distintas, una ra´ız real doble o dos ra´ıces complejas conjugadas. Para devolver el resultado, se definir´a un
tipo de datos TipoRaices mediante una estructura de registro con variante, de modo tal que contemple los
tres casos posibles. El cabezal del procedimiento es el siguiente:
procedure raices (a,b,c : real; var r : TipoRaices);}
{(b) Implemente el procedimiento raices, de acuerdo al comportamiento descrito.}

type
    TipoRaiz = (dosReales, realDoble, complejas);

    TipoRaices = record
        case tipo: TipoRaiz of
            dosReales: (raiz1, raiz2: real);
            realDoble: (raiz: real);
            complejas: (parteReal, parteImaginaria: real);
    end;

procedure raices(a, b, c: real; var r: TipoRaices);
var
    discriminante: real;
begin
    discriminante := b * b - 4 * a * c;

    if discriminante > 0 then
    begin
        r.tipo := dosReales;
        r.raiz1 := (-b + sqrt(discriminante)) / (2 * a);
        r.raiz2 := (-b - sqrt(discriminante)) / (2 * a);
    end
    else if discriminante = 0 then
    begin
        r.tipo := realDoble;
        r.raiz := -b / (2 * a);
    end
    else
    begin
        r.tipo := complejas;
        r.parteReal := -b / (2 * a);
        r.parteImaginaria := sqrt(-discriminante) / (2 * a);
    end;
end;