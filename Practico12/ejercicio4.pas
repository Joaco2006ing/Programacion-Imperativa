{Implemente recursivamente el procedimiento
{ PRE : dividendo >= 0 , divisor > 0 
procedure divisionPorResta ( dividendo , divisor : integer ; var cociente , resto : integer );
que calcula el cociente y el resto de la divisi´on entera de dividendo entre divisor, usando ´unicamente
restas, comparaciones y sumas}

procedure divisionPorResta(dividendo, divisor: integer;
                           var cociente, resto: integer);
begin
    if dividendo < divisor then
    begin
        cociente := 0;
        resto := dividendo;
    end
    else
    begin
        divisionPorResta(dividendo - divisor, divisor, cociente, resto);
        cociente := cociente + 1;
    end;
end;