{Se desea implementar un procedimiento que calcule las ra´ıces de la ecuaci´on cuadr´atica ax2 + bx + c = 0
donde a, b, y c son coeficientes reales. El procedimiento debe determinar si la ecuaci´on tiene dos ra´ıces reales
y distintas, una ra´ız real doble o dos ra´ıces complejas conjugadas. Para devolver el resultado, se definir´a un
tipo de datos TipoRaices mediante una estructura de registro con variante, de modo tal que contemple los
tres casos posibles. El cabezal del procedimiento es el siguiente:
procedure raices (a,b,c : real; var r : TipoRaices);}
{(a) Defina el tipo TipoRaices utilizando la estructura de registro con variante. Debe definir tambi´en
cualquier tipo de datos auxiliar que pueda necesitar.}

type
    TipoRaiz = (dosReales, realDoble, complejas);

    TipoRaices = record
        case tipo: TipoRaiz of
            dosReales: (raiz1, raiz2: real);
            realDoble: (raiz: real);
            complejas: (parteReal, parteImaginaria: real);
    end;
