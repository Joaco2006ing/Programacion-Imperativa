const
    MAX = . . .; {entero mayor estricto que 0}
type
    RangoCalificacion = 1..12;
    TAsignatura = (Criptografia,Programacion,Calculo);
    TEstudiante = record
        idEstudiante : integer;
        asignatura : TAsignatura;
        calificacion : RangoCalificacion;
end;
    Rango = 1 .. MAX;
    EstudiantesAsignatura = array [rango] of TEstudiante;
{que representa las calificaciones obtenidas por los estudiantes en las asignaturas. El estudiante se identifica
por el n´umero idEstudiante. Puede suponer que un estudiante puede cursar varias asignaturas y una ´unica
vez.
Escriba el procedimiento ordenarPorAsignatura que recibe un arreglo de estudiantes e con la calificaci´on
obtenida en las asignaturas y lo ordena en forma ascendente seg´un los siguiente criterios, utilizando el
m´etodo de ordenaci´on por selecci´on:
    -En primer lugar por el orden de la asignatura, definido en el tipo.
    -En segundo lugar por la calificaci´on.
    -En tercer lugar por la identificaci´on.
Se sugiere realizar un procedimiento auxiliar que compare dos estudiantes y devuelva si uno es posterior al
otro.
procedure ordenarPorAsignatura(var e:EstudiantesAsignatura)}

function estudiantePosterior(e1, e2: TEstudiante): boolean;
begin
  if e1.asignatura > e2.asignatura then
    estudiantePosterior := true
  else if e1.asignatura < e2.asignatura then
    estudiantePosterior := false
  else if e1.calificacion > e2.calificacion then
    estudiantePosterior := true
  else if e1.calificacion < e2.calificacion then
    estudiantePosterior := false
  else
    estudiantePosterior := e1.idEstudiante > e2.idEstudiante;
end;

procedure ordenarPorAsignatura(var e: EstudiantesAsignatura);
var
  i, j, posicionMinimo: Rango;
  auxiliar: TEstudiante;
begin
  for i := 1 to MAX - 1 do
  begin
    posicionMinimo := i;

    for j := i + 1 to MAX do
      if estudiantePosterior(e[posicionMinimo], e[j]) then
        posicionMinimo := j;

    auxiliar := e[i];
    e[i] := e[posicionMinimo];
    e[posicionMinimo] := auxiliar;
  end;
end;