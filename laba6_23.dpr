program laba6_23;
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  SetOfNumber = set of 1 .. 255; // множественный тип

var
  N, i, k, j, vivod: integer;

  MySet: SetOfNumber;

procedure ReshetoEratosfena; // Решето Эратосфена
begin
  writeln('Введите натуральное число N не больше 255:');
  readln(N); // ввод верхнего предела множества

  if (N > 255) or (N < 1) then // проверка на ввод
  begin
    writeln('Вы ввели неверное значение, попробуйте еще раз!');
    writeln;
    ReshetoEratosfena;
  end;
  writeln;

  MySet := [1 .. N]; // формирование начального множества
  writeln('Исходное множество: ');
  vivod := 1; // переменная для форматирования вывода
  for i := 1 to 255 do // вывод множества
  begin
    if i in MySet then
    begin
      write(i:4);
      if vivod mod 20 = 0 then // вывод 20 элементов в строку
        writeln; // затем перенос строки
      inc(vivod);

    end;

  end;

  Exclude(MySet, 1);
  // 1-ым элементом является единица, которую не считают простым числом
  // удаляем элемент  и начинаем со 2-го элемента
  k := N div 2; // установка границы внешнего цикла

  for i := 2 to k do // удаляем элементы кратные 2,3, 4 и т.д. до N/2
  begin
   for j := 2 to N do
    // внутренний цикл по всему множеству, в котором происходит удаление элементов
    begin
      if (j mod i = 0) and (j <> i) then
       // если текущее зн-е j делиться на текущее зн-е i без остатка и не равно делител
    end;
  end;
end;


