program laba6_23;
{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

type
  SetOfNumber = set of 1 .. 255; // ������������� ���

var
  N, i, k, j, vivod: integer;

  MySet: SetOfNumber;

procedure ReshetoEratosfena; // ������ ����������
begin
  writeln('������� ����������� ����� N �� ������ 255:');
  readln(N); // ���� �������� ������� ���������

  if (N > 255) or (N < 1) then // �������� �� ����
  begin
    writeln('�� ����� �������� ��������, ���������� ��� ���!');
    writeln;
    ReshetoEratosfena;
  end;
  writeln;

  MySet := [1 .. N]; // ������������ ���������� ���������
  writeln('�������� ���������: ');
  vivod := 1; // ���������� ��� �������������� ������
  for i := 1 to 255 do // ����� ���������
  begin
    if i in MySet then
    begin
      write(i:4);
      if vivod mod 20 = 0 then // ����� 20 ��������� � ������
        writeln; // ����� ������� ������
      inc(vivod);

    end;

  end;

  Exclude(MySet, 1);
  // 1-�� ��������� �������� �������, ������� �� ������� ������� ������
  // ������� �������  � �������� �� 2-�� ��������
  k := N div 2; // ��������� ������� �������� �����

  for i := 2 to k do // ������� �������� ������� 2,3, 4 � �.�. �� N/2
  begin
   for j := 2 to N do
    // ���������� ���� �� ����� ���������, � ������� ���������� �������� ���������
    begin
      if (j mod i = 0) and (j <> i) then
       // ���� ������� ��-� j �������� �� ������� ��-� i ��� ������� � �� ����� �������
    end;
  end;
end;


