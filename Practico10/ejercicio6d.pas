{(d) Escriba un procedimiento que lea de la entrada un mes representado por el n´umero (entre 1 y 12) y
retorne en un par´ametro de salida una variable de tipo TipoMes.}
type
  TipoMes = (enero, febrero, marzo, abril, mayo, junio,
             julio, agosto, septiembre, octubre, noviembre, diciembre);

procedure leerMes(var mes: TipoMes);
var
  numero: TipoMesRango;
begin
  readln(numero);

  case numero of
    1:  mes := enero;
    2:  mes := febrero;
    3:  mes := marzo;
    4:  mes := abril;
    5:  mes := mayo;
    6:  mes := junio;
    7:  mes := julio;
    8:  mes := agosto;
    9:  mes := septiembre;
    10: mes := octubre;
    11: mes := noviembre;
    12: mes := diciembre;
  end;
end;