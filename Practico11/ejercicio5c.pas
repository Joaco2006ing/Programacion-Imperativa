{Se considera el tipo de datos Nerr que es la uni´on de los n´umeros naturales (N) con el conjunto Err. El
conjunto Err se define como diverr, reserr, argerr, donde diverr es el error de la divisi´on por cero,
reserr es el error de la resta con resultado negativo y argerr es el error de cualquier operaci´on donde
alguno de sus argumentos no es natural.
Se definen las siguientes operaciones sobre elementos del tipo Nerr:
division: Nerr x Nerr -> Nerr
Si a pertenece a N y b pertenece a N−0 ⇒ division(a,b) = a DIV b;
Si a pertenece a N y b = 0 ⇒ division(a,b) = diverr;
Si a pertenece a Err o b pertenece a Err ⇒ division(a,b) = argerr;
resta: Nerr x Nerr -> Nerr
Si a pertenece a N, b pertenece a N y a ≥ b ⇒ resta(a,b) = a - b;
Si a pertenece a N, b pertenece a N y a < b ⇒ resta(a,b) = reserr;
Si a pertenece a Err o b pertenece a Err ⇒ resta(a,b) = argerr;
suma: Nerr x Nerr -> Nerr
Si a pertenece a N y b pertenece a N ⇒ suma(a,b) = a + b;
Si a pertenece a Err o b pertenece a Err ⇒ suma(a,b) = argerr;
producto: Nerr x Nerr -> Nerr
Si a pertenece a N y b pertenece a N ⇒ producto(a,b) = a * b;
Si a pertenece a Err o b pertenece a Err ⇒ producto(a,b) = argerr;}
{(c) Escriba los siguientes procedimientos que implementan, respectivamente, las operaciones division, resta,
suma y producto del tipo Nerr.
procedure division (a, b: Nerr; var resu: Nerr);
procedure resta (a, b: Nerr; var resu: Nerr);
procedure suma (a, b: Nerr; var resu: Nerr);
procedure producto (a, b :Nerr; var resu: Nerr);}

type
    Err = (diverr, reserr, argerr);

    Nerr = record
        case esError: boolean of
            false: (natural: 0..maxint);
            true: (error: Err);
    end;

procedure division(a, b: Nerr; var resu: Nerr);
begin
    if a.esError or b.esError then
    begin
        resu.esError := true;
        resu.error := argerr;
    end
    else if b.natural = 0 then
    begin
        resu.esError := true;
        resu.error := diverr;
    end
    else
    begin
        resu.esError := false;
        resu.natural := a.natural div b.natural;
    end;
end;

procedure resta(a, b: Nerr; var resu: Nerr);
begin
    if a.esError or b.esError then
    begin
        resu.esError := true;
        resu.error := argerr;
    end
    else if a.natural < b.natural then
    begin
        resu.esError := true;
        resu.error := reserr;
    end
    else
    begin
        resu.esError := false;
        resu.natural := a.natural - b.natural;
    end;
end;

procedure suma(a, b: Nerr; var resu: Nerr);
begin
    if a.esError or b.esError then
    begin
        resu.esError := true;
        resu.error := argerr;
    end
    else
    begin
        resu.esError := false;
        resu.natural := a.natural + b.natural;
    end;
end;

procedure producto(a, b: Nerr; var resu: Nerr);
begin
    if a.esError or b.esError then
    begin
        resu.esError := true;
        resu.error := argerr;
    end
    else
    begin
        resu.esError := false;
        resu.natural := a.natural * b.natural;
    end;
end;