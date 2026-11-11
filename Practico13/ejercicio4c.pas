const
    MAXE = . . .; {entero mayor estricto que 0}
    MAXC = . . .; {entero mayor estricto que 0}
    MAX = . . .; {entero mayor estricto que 0}
type
    TTexto = record
        caracteres : array [1 .. MAX] of char;
        tope : 0 .. MAX;
end;
    TEstudiante = record
        nombre : TTexto;
        generacion : integer;
end;
    TEstudiantes = record
        estudiante : array [1 .. MAXE] of TEstudiante;
        tope : 0 .. MAXE;
end;
    TCarrera = record
        nombre : TTexto;
        estudiantes : TEstudiantes;
end;
    TBedelias = array [1 .. MAXC] of TCarrera;
{que representan los estudiantes que est´an inscriptos a una carrera de grado en facultad. Un elemento de
tipo TBedelias tiene ordenadas las carreras en forma lexicogr´afica y creciente por su nombre. Luego, por
cada carrera, la lista de estudiantes se encuentra ordenada por el a˜no de ingreso en forma creciente}
{(c) Si ahora asumimos que dentro de la misma carrera y el mismo a˜no de ingreso, los nombres de los
estudiantes est´an ordenados en forma lexicogr´afica y creciente.
Escriba el procedimiento buscarEstudiantesGeneracion que devuelva en bGen todos los estudiantes
que ingresaron en el a˜no gen. ¿Qu´e tipo de b´usqueda debe realizar?.
El orden de bed es el definido en el ejercicio. El par´ametro bGen debe mantener dicho orden. Si no hay
estudiantes que ingresaron en tal a˜no para una carrera, la lista de estudiantes para dicha carrera debe
quedar vac´ıa.
procedure buscarEstudiantesGeneracion(gen:integer; bed:TBedelias; var bGen:TBedelias)}

procedure buscarEstudiantesGeneracion(gen: integer; bed: TBedelias;
                                      var bGen: TBedelias);
var
  i, primero, ultimo, medio, inicio, fin: integer;
begin
  for i := 1 to MAXC do
  begin
    bGen[i].nombre := bed[i].nombre;
    bGen[i].estudiantes.tope := 0;

    primero := 1;
    ultimo := bed[i].estudiantes.tope;
    inicio := bed[i].estudiantes.tope + 1;

    while primero <= ultimo do
    begin
      medio := (primero + ultimo) div 2;
      if bed[i].estudiantes.estudiante[medio].generacion < gen then
        primero := medio + 1
      else
      begin
        inicio := medio;
        ultimo := medio - 1;
      end;
    end;

    primero := 1;
    ultimo := bed[i].estudiantes.tope;
    fin := 0;

    while primero <= ultimo do
    begin
      medio := (primero + ultimo) div 2;
      if bed[i].estudiantes.estudiante[medio].generacion <= gen then
      begin
        if bed[i].estudiantes.estudiante[medio].generacion = gen then
          fin := medio;
        primero := medio + 1;
      end
      else
        ultimo := medio - 1;
    end;

    if inicio <= fin then
    begin
      bGen[i].estudiantes.tope := fin - inicio + 1;
      for medio := inicio to fin do
        bGen[i].estudiantes.estudiante[medio - inicio + 1] :=
          bed[i].estudiantes.estudiante[medio];
    end;
  end;
end;