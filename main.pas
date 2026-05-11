program Circulo;
uses crt;

const
  PI = 3.141592654;

type
  numero = integer;

var
  r, d, c : real;
  contador : integer;
  n1 : numero;
  i: integer;
  j : integer;
  arrayNumeros : array[1..5] of integer;
  matrizNumeros : array[1..3, 1..5] of integer;

begin
  write('Raio do circulo: ');
  readln(r);

  d := r * 2;
  c := d * PI;

  writeln('Raio = ', r:0:2,
          ' Diametro = ', d:0:2,
          ' Comprimento = ', c:7:2);

  contador := 1;

  while contador <= 20 do
  begin
    if (contador mod 3 = 0) and (contador mod 5 = 0) then
      writeln('FizzBuzz: ', contador)
    else if (contador mod 3 = 0) then
      writeln('Fizz: ', contador)
    else if (contador mod 5 = 0) then
      writeln('Buzz: ', contador);

    contador := contador + 1;
  end;

  n1 := 10;

  case n1 of
    10:
    begin
      writeln('n1 igual a 10');
    end;
    20:
    begin
      writeln('n1 igual a 20');
    end;
  end;

  for i := 1 to 10 do
  begin
    writeln('Contador For: ', i);
  end;

  arrayNumeros[1] := 5;
  arrayNumeros[2] := 10;
  arrayNumeros[3] := 15;
  arrayNumeros[4] := 20;
  arrayNumeros[5] := 25;

  for i := 1 to length(arrayNumeros) do
  begin
    writeln('Array Numeros: ', arrayNumeros[i]);
  end;

 for i := 1 to 3 do
 begin
   for j := 1 to 5 do
   begin
    matrizNumeros[i, j] := i * j; 
    writeln('Matriz Numeros: ', matrizNumeros[i, j]);
   end;
 end;

 readln;
end.