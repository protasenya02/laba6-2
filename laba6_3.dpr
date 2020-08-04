program laba6_3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
SetOfNumber= set of 1..255;    // ��� ���������

const N=3;  //�������� ���������

var X1,X2,X3,Y: SetOfNumber; //����������  X1,X2,X3,Y �������������� ����


procedure MakeNewSet( var NewSet: SetOfNumber; NameOfSet:string);   //��������� ����� �������� X1,X2,X3
var
  i, VVodNumber: Integer;

begin
writeln ('�������  ��������� ',NameOfSet,', ��������� �� ', N ,' ����� ����� � ��������� 1..100 :');
NewSet:=[];

  for i:=1 to N do     // ���� �� ���� ��������� ���������
  begin
    repeat
     readln(VVodNumber);   // ������ ��������� �����

      if not(VVodNumber in [1..100]) then
      writeln ('��������� �������� �� ������ � �������� 1..100, ���������� ��� ���!');

    until (VVodNumber in [1..100]) and not(VVodNumber in NewSet);

     include (NewSet, VvodNumber);   // ���������� ���������� ����� � ���������
  end;
  writeln;
end;

procedure OutputSet (var NewSet: SetOfNumber; NameOfSet: string );  // ��������� ������ ���������
var
  i: Integer;
begin
 write('��������� ',NameOfSet,': ');
  for i := 1 to 100 do        // ���� �� ���� ��������� ���������
  begin
    if i in NewSet             // ���� i ������ � ���������
    then write (i,' ');          // ����� ������� � �������
  end;
  writeln;

end;

begin
 MakeNewSet(X1,'X1');   // ���� ��������� X1
 MakeNewSet(X2,'X2');   // ���� ��������� X2
 MakeNewSet(X3,'X3');   // ���� ��������� X3

 Y:=(X1 * X2) + (X2 - X3);   // �������� ������ ��������� Y �� �������

 OutputSet(X1,'X1');    // ����� X1
 OutputSet(X2,'X2');    // ����� X2
 OutputSet(X3,'X3');    // ����� X3
 OutputSet(Y,'Y');      // ����� �������������� ��������� Y
 writeln;

 if 150 in Y then
 writeln ('����� 150 ����������� ��������� Y')
 else writeln('����� 150 �� ����������� ��������� Y');

 if X1 = Y then
 writeln ('��������� X1 ����������� ��������� Y')
 else writeln('����� X1 �� ����������� ��������� Y');

 readln;
end.
