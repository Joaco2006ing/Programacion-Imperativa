program Muestra2;
const
  medio = 0.5;
var
  num : Real;
  a, b : Integer;
begin
  readLn (num);
  a := round (num);
  b := trunc (num + medio);
  writeLn (num:5:2, a:4, b:4)
end.
