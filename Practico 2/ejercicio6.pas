{Escriba un programa en Pascal que, dados dos enteros de la forma hhmm (ingresados por la
entrada est´andar), donde hh representa las horas (menos de 24) y mm los minutos (menos
de 60), determine la suma de estos dos tiempos, y exhiba el resultado en la salida estandar,
en la forma d hhmm, donde d es dıas (ya sea cero o uno). Incluya mensajes de salida con
etiquetas descriptivas para el ingreso de datos}
program Ejercicio6;
var
  t1, t2 : Integer;
  h1, m1, h2, m2 : Integer;
  m_suma, m_final, h_extra : Integer;
  h_suma, h_final, d : Integer;
  resultado_hhmm : Integer;

begin
  write('Ingrese el primer tiempo (hhmm): ');
  readLn(t1);
  write('Ingrese el segundo tiempo (hhmm): ');
  readLn(t2);

  { Extraer horas y minutos de cada tiempo }
  h1 := t1 DIV 100;
  m1 := t1 MOD 100;
  
  h2 := t2 DIV 100;
  m2 := t2 MOD 100;

  { Sumar minutos y calcular acarreo de horas }
  m_suma := m1 + m2;
  m_final := m_suma MOD 60;
  h_extra := m_suma DIV 60;

  { Sumar horas totales y calcular dias y horas restantes }
  h_suma := h1 + h2 + h_extra;
  d := h_suma DIV 24;
  h_final := h_suma MOD 24;

  { Unir h_final y m_final en formato hhmm }
  resultado_hhmm := h_final * 100 + m_final;

  { Imprimir resultado en formato "d hhmm" }
  writeLn('Salida: ', d, ' ', resultado_hhmm);
end.