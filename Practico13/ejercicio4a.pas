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
{(a) Escriba la funci´on buscarEstudiante que determina si el estudiante de nombre nombreE est´a inscripto
a la carrera de nombre nombreC. Para comparar los nombres de las carreras y de los estudiantes, puede
usar la funci´on definida en el ejercicio 3.a.}

type
    TComparacion = (mayor, menor, igual);

function compararTextos(t1, t2: TTexto): TComparacion;
var
    i, limite: integer;
begin
    if t1.tope < t2.tope then
        limite := t1.tope
    else
        limite := t2.tope;

    i := 1;
    while (i <= limite) and
          (t1.caracteres[i] = t2.caracteres[i]) do
        i := i + 1;

    if i <= limite then
        if t1.caracteres[i] < t2.caracteres[i] then
            compararTextos := menor
        else
            compararTextos := mayor
    else if t1.tope < t2.tope then
        compararTextos := menor
    else if t1.tope > t2.tope then
        compararTextos := mayor
    else
        compararTextos := igual;
end;

function buscarEstudiante(nombreE: TTexto; nombreC: TTexto;
                          bedelias: TBedelias): boolean;
var
    primero, ultimo, medio: integer;
    comparacion: TComparacion;
    carreraEncontrada: integer;
    estudianteEncontrado: boolean;
begin
    primero := 1;
    ultimo := MAXC;
    carreraEncontrada := 0;

    while (primero <= ultimo) and (carreraEncontrada = 0) do
    begin
        medio := (primero + ultimo) div 2;
        comparacion := compararTextos(nombreC,
                                      bedelias[medio].nombre);

        if comparacion = igual then
            carreraEncontrada := medio
        else if comparacion = menor then
            ultimo := medio - 1
        else
            primero := medio + 1;
    end;

    buscarEstudiante := false;

    if carreraEncontrada <> 0 then
    begin
        primero := 1;
        ultimo := bedelias[carreraEncontrada].estudiantes.tope;
        estudianteEncontrado := false;

        while (primero <= ultimo) and (not estudianteEncontrado) do
        begin
            if compararTextos(nombreE,
                bedelias[carreraEncontrada].estudiantes.estudiante[primero].nombre)
                = igual then
                estudianteEncontrado := true
            else
                primero := primero + 1;
        end;

        buscarEstudiante := estudianteEncontrado;
    end;
end;