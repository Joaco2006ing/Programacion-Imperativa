{(c) Escriba un programa principal que lea dos n´umeros complejos y exhiba el resultado de su suma y
multiplicaci´on. Puede declarar subprogramas auxiliares que le permita cargar e imprimir un n´umero
complejo.
}
type
  Complejo = record
    re, im: real;
  end;

procedure leerComplejo(var c: Complejo);
begin
  readln(c.re);
  readln(c.im);
end;

procedure sumarComplejos(c1, c2: Complejo; var c3: Complejo);
begin
  c3.re := c1.re + c2.re;
  c3.im := c1.im + c2.im;
end;

procedure multiplicarComplejos(c1, c2: Complejo; var c3: Complejo);
begin
  c3.re := c1.re * c2.re - c1.im * c2.im;
  c3.im := c1.im * c2.re + c1.re * c2.im;
end;

procedure escribirComplejo(c: Complejo);
begin
  writeln(c.re:0:2, ' + ', c.im:0:2, 'i');
end;

var
  c1, c2, suma, producto: Complejo;

begin
  writeln('Ingrese la parte real e imaginaria del primer complejo:');
  leerComplejo(c1);
  writeln('Ingrese la parte real e imaginaria del segundo complejo:');
  leerComplejo(c2);

  sumarComplejos(c1, c2, suma);
  multiplicarComplejos(c1, c2, producto);

  write('Suma: ');
  escribirComplejo(suma);
  write('Multiplicacion: ');
  escribirComplejo(producto);
end.
