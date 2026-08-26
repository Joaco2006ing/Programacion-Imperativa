{Se desea implementar un programa que calcule el saldo final de una cuenta. Suponga que
los datos son le´ıdos de la entrada est´andar y que constan de renglones. El primer rengl´on
contiene el saldo inicial de la cuenta. Los siguientes renglones contienen una letra y un valor
real para indicar las transacciones (posiblemente ninguna). La letra puede ser la D para
efectuar un dep´osito o la R para efectuar un retiro. El ´ultimo rengl´on contiene ´unicamente la
letra X. Escriba un programa en Pascal que determine el saldo exacto de la cuenta despu´es
de procesar las transacciones. Incluya mensajes de salida con etiquetas descriptivas para
exhibir los valores.}
program ejercicio5;
var 
  total, valor: real;
  letra: char;
begin
  write('Ingrese el saldo inicial: ');
  readln(total);
  writeln('Ingrese las transacciones (D monto / R monto / X para finalizar): ');
  read(letra);
  while letra <> 'X' do
  begin
    readln(valor); 
    if letra = 'D' then 
      total := total + valor
    else if letra = 'R' then 
      total := total - valor;
    read(letra);
  end;
  
  writeln('El saldo final es ', total:0:2);
end.