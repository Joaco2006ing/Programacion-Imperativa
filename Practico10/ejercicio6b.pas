{(b) Escriba un procedimiento que reciba un par´ametro de entrada del tipo TipoMes e imprima el nombre
completo del mes correspondiente.}
type
  TipoMes = (enero, febrero, marzo, abril, mayo, junio,
             julio, agosto, septiembre, octubre, noviembre, diciembre);

procedure imprimirMes(mes: TipoMes);
begin
  case mes of
    enero:      writeln('Enero');
    febrero:    writeln('Febrero');
    marzo:      writeln('Marzo');
    abril:      writeln('Abril');
    mayo:       writeln('Mayo');
    junio:      writeln('Junio');
    julio:      writeln('Julio');
    agosto:     writeln('Agosto');
    septiembre: writeln('Septiembre');
    octubre:    writeln('Octubre');
    noviembre:  writeln('Noviembre');
    diciembre:  writeln('Diciembre');
  end;
end;