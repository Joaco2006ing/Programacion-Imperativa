{No es posible utilizar una computadora para generar numeros aleatorios genuinos ya que
es preciso utilizar un algoritmo para generar los numeros, lo que implica que es posible predecir los numeros generados. 
Lo que sı pueden hacer las computadoras es generar numeros seudoaleatorios (numeros que, estadısticamente, parecen ser aleatorios). 
Una tecnica antigua (que no produce buenos resultados) se llama metodo del cuadrado medio. Funciona
ası: dado un numero a, para generar el siguiente n´umero de la secuencia se extraen los
dıgitos que est´an en la posici´on de las decenas y las centenas de a2.Por ejemplo, si a es 53, entonces a2
es 2809, y el siguiente n´umero seudoaleatorio ser´a 80. Se ve que el siguiente
n´umero seudoaleatorio a 80 es 40. Si se contin´ua este proceso se obtiene 60, 60, 60, . . .
Escriba un programa en Pascal que lea por la entrada est´andar un entero de dos d´ıgitos
y determine el siguiente n´umero seudoaleatorio que se generar´ıa si se usara el m´etodo del
cuadrado medio. Como resultado, exhiba por la salida est´andar el n´umero de dos d´ıgitos
original, el cuadrado de este entero, y el siguiente n´umero seudoaleatorio. Incluya mensajes
de salida con etiquetas descriptivas para el ingreso y el despliegue de datos}
program ejercicio8;
var n, c, siguiente:integer;
begin
  read(n);
  c:= sqr(n);
  siguiente:=(c DIV 10) MOD 100;
  writeln('El numero introducido es: ', n);
  writeln('Su cuadrado es:', c);
  writeln('Sigueinte numero seudoaleatorio es : ', siguiente);

end.