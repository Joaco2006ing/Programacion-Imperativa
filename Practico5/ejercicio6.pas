{ Dado un fragmento de texto que debe ser le´ıdo de la entrada est´andar, todo en una l´ınea,
y terminado por el caracter $ (centinela), escriba un programa en Pascal que determine
y exhiba las consonantes y vocales que aparecen duplicadas en forma contigua. Asuma
que todas las letras ingresadas son min´usculas. Incluya mensajes de salida con etiquetas
descriptivas para solicitar y exhibir los valores.}
program ejercicio6;
var 
  letra, anterior: char;
begin
  write('Ingrese un texto: ');
  anterior := ' ';
  read(letra);
  while letra <> '$' do
  begin
    if (letra = anterior) and (letra >= 'a') and (letra <= 'z') then
      write(letra, letra, ' '); 
    anterior := letra;
    read(letra);
  end;
  writeln; 
end.