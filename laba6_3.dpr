program laba6_3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
SetOfNumber= set of 1..255;    // тип множества

const N=3;  //мощность множества

var X1,X2,X3,Y: SetOfNumber; //переменные  X1,X2,X3,Y множественного типа


procedure MakeNewSet( var NewSet: SetOfNumber; NameOfSet:string);   //процедура ввода множеств X1,X2,X3
var
  i, VVodNumber: Integer;

begin
writeln ('¬ведите  множество ',NameOfSet,', состо€щее из ', N ,' целых чисел в диапазоне 1..100 :');
NewSet:=[];

  for i:=1 to N do     // цикл по всем элементам множества
  begin
    repeat
     readln(VVodNumber);   // читаем введенное число

      if not(VVodNumber in [1..100]) then
      writeln ('¬веденное значение не входит в диапазон 1..100, попробуйте еще раз!');

    until (VVodNumber in [1..100]) and not(VVodNumber in NewSet);

     include (NewSet, VvodNumber);   // добавление введенного числа к множеству
  end;
  writeln;
end;

procedure OutputSet (var NewSet: SetOfNumber; NameOfSet: string );  // процедура вывода множества
var
  i: Integer;
begin
 write('ћножество ',NameOfSet,': ');
  for i := 1 to 100 do        // цикл по всем элементам множества
  begin
    if i in NewSet             // если i входит в множество
    then write (i,' ');          // тогда выводим в консоль
  end;
  writeln;

end;

begin
 MakeNewSet(X1,'X1');   // ввод множества X1
 MakeNewSet(X2,'X2');   // ввод множества X2
 MakeNewSet(X3,'X3');   // ввод множества X3

 Y:=(X1 * X2) + (X2 - X3);   // создание нового множества Y по формуле

 OutputSet(X1,'X1');    // вывод X1
 OutputSet(X2,'X2');    // вывод X2
 OutputSet(X3,'X3');    // вывод X3
 OutputSet(Y,'Y');      // вывод сфомированного множества Y
 writeln;

 if 150 in Y then
 writeln ('число 150 принадлежит множеству Y')
 else writeln('число 150 не принадлежит множеству Y');

 if X1 = Y then
 writeln ('множество X1 принадлежит множеству Y')
 else writeln('число X1 не принадлежит множеству Y');

 readln;
end.
