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
{(b) Analice cu´al ser´ıa la dificultad si la representaci´on fuera al rev´es, es decir que el d´ıgito menos significativo
quede en el tope y el m´as significativo en el primer lugar del arreglo.}

{ Si el digito menos significativo quedara en el tope, la suma deberia
  comenzar desde el final del arreglo y avanzar hacia el principio para
  propagar correctamente el acarreo. Ademas, como los naturales pueden
  tener distinta cantidad de digitos, habria que alinear sus digitos
  menos significativos antes de sumarlos. Por eso la representacion
  indicada en la consigna es mas sencilla: permite recorrer desde la
  primera posicion hasta el tope, comenzando directamente por las
  unidades. }