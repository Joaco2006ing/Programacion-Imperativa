const
    MAX = . . .; {entero mayor estricto que 0}
type
        TComparacion = (mayor, menor, igual);
    TTexto = record
        nombre : array [1 .. MAX] of char;
        tope : 0 .. MAX;
end;
    ArregloNombres = array [1..MAX] of TTexto;
{(c) Para la parte anterior, ¿consider´o si hab´ıa nombres repetidos en el arreglo? Si no lo consider´o, ¿qu´e
cambia en su c´odigo si los hay? ¿Qu´e cambiar´ıa si hay nombres repetidos y se le pide encontrar la
primera ocurrencia de un nombre?
}

{ Si hay nombres repetidos, la busqueda binaria sigue siendo correcta para
  determinar si el nombre aparece, porque alcanza con encontrar una
  coincidencia.

  Para encontrar la primera ocurrencia, cuando se encuentra una coincidencia
  no se debe terminar la busqueda. Se guarda la posicion encontrada y se
  continua buscando en la mitad izquierda, actualizando el limite superior
  a medio - 1. Si no se encuentran mas coincidencias, se devuelve la
  posicion guardada. }