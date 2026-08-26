{(b) Escriba una instruccion case que sea equivalente a las siguientes instrucciones if anidadas. 
Suponga que la variable calif es de tipo char.
if (calif = 'D') or (calif = 'F') then
writeln ('Trabajo deficiente.')
else
if (calif = 'C') or (calif = 'B') then
writeln ('Buen trabajo.')
else
if calif = 'A' then
writeln ('Trabajo excelente.')
}
program ejercicio8b;
var calif:char;
begin
  case calif of
    'D', 'F': writeln('Trabajo deficiente.');
    'C', 'B': writeln('Buen trabajo.');
    'A':      writeln('Trabajo excelente.');
  end
end