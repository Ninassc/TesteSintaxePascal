program Circulo;
uses crt;

const
  PI = 3.141592654;

type
  numero = integer;

type Users = record
  name: string;
  age: integer;
  height: double;
  hobby : array[1..3] of char;
end;


var
  r, d, c : real;
  contador : integer;
  n1 : numero;
  i: integer;
  j : integer;
  arrayNumeros : array[1..5] of integer;
  matrizNumeros : array[1..3, 1..5] of integer;
  user1, user2 : Users;

procedure sayHello();
begin
  writeln('Hello, World!');
end;

procedure say(userName, favColor : String;age : integer);
begin
  writeln('Hello, ', userName, '!');
  writeln('Your favorite color is ', favColor, ' and you are ', age, ' years old.');  
end;

procedure soma(num1, num2: integer);
var
  resultado: integer;
begin
  resultado := num1 + num2;
  writeln('Soma: ', resultado);
end;

function funcSoma(a,b : integer):integer;
var 
  resultado: integer;
begin
  resultado := a + b;
  funcSoma := resultado;
end;


begin
  sayHello();
  say('Alice', 'blue', 30);
  soma(5, 10);
  writeln('Soma: ', funcSoma(7, 3));

  user1.name := 'Bob';
  writeln('User Name: ', user1.name);

  with user2 do
  begin
    name := 'Charlie';
    age := 25;
    height := 1.75;
    hobby[1] := 'R';
    hobby[2] := 'S';
    hobby[3] := 'T';
  end;

  writeln('User2 Name: ', user2.name);
  writeln('User2 Age: ', user2.age);
  writeln('User2 Height: ', user2.height:0:2);
  writeln('User2 Hobby: ', user2.hobby[1], user2.hobby[2], user2.hobby[3]);


//   write('Raio do circulo: ');
//   readln(r);

//   d := r * 2;
//   c := d * PI;

//   writeln('Raio = ', r:0:2,
//           ' Diametro = ', d:0:2,
//           ' Comprimento = ', c:7:2);

//   contador := 1;

//   while contador <= 20 do
//   begin
//     if (contador mod 3 = 0) and (contador mod 5 = 0) then
//       writeln('FizzBuzz: ', contador)
//     else if (contador mod 3 = 0) then
//       writeln('Fizz: ', contador)
//     else if (contador mod 5 = 0) then
//       writeln('Buzz: ', contador);

//     contador := contador + 1;
//   end;

//   n1 := 10;

//   case n1 of
//     10:
//     begin
//       writeln('n1 igual a 10');
//     end;
//     20:
//     begin
//       writeln('n1 igual a 20');
//     end;
//   end;

//   for i := 1 to 10 do
//   begin
//     writeln('Contador For: ', i);
//   end;

//   arrayNumeros[1] := 5;
//   arrayNumeros[2] := 10;
//   arrayNumeros[3] := 15;
//   arrayNumeros[4] := 20;
//   arrayNumeros[5] := 25;

//   for i := 1 to length(arrayNumeros) do
//   begin
//     writeln('Array Numeros: ', arrayNumeros[i]);
//   end;

//  for i := 1 to 3 do
//  begin
//    for j := 1 to 5 do
//    begin
//     matrizNumeros[i, j] := i * j; 
//     writeln('Matriz Numeros: ', matrizNumeros[i, j]);
//    end;
//  end;

 readln;
end.