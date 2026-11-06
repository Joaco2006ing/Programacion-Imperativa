{Se desea trabajar con una aritm´etica de naturales de hasta 100 d´ıgitos. Los enteros de Pascal no soportan
dicha aritm´etica, por lo que se piensa utilizar la siguiente representaci´on de naturales basada en arreglos
con tope, de tal manera que las unidades queden en el primer lugar del arreglo, las decenas en el segundo,
y as´ı hasta que el d´ıgito m´as significativo quede en el tope:}
const
    MaxDig = ...; {valor entero mayor estricto a 0};
type
    Digito = 0..9;
    Natural = record
        digitos : array[1..MaxDig] of Digito;
        tope : 0..MaxDig;
    end;
{(a) Implemente la suma de Naturales representados en t´erminos de la estructura anterior. Utilice el siguiente cabezal:
procedure sumaNaturales (a, b : Natural; var c : Natural);}

procedure sumaNaturales(a, b: Natural; var c: Natural);
var
    i, limite, suma, acarreo: integer;
begin
    if a.tope > b.tope then
        limite := a.tope
    else
        limite := b.tope;

    c.tope := limite;
    acarreo := 0;

    for i := 1 to limite do
    begin
        suma := acarreo;

        if i <= a.tope then
            suma := suma + a.digitos[i];
        if i <= b.tope then
            suma := suma + b.digitos[i];

        c.digitos[i] := suma mod 10;
        acarreo := suma div 10;
    end;

    if acarreo > 0 then
    begin
        c.tope := c.tope + 1;
        c.digitos[c.tope] := acarreo;
    end;
end;