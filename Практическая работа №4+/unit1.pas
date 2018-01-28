unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
type mas = array of integer;
  var a: mas;
    Type rezmass = array of integer;
      var y:rezmass;
        var k,c: integer;
 procedure vvod(var a:mas; n1: integer);
 var i: integer;
   begin
     randomize;
     setlength(a, n1);
     for i:= low(a) to high(a) do
     begin
       a[i]:=-10+ random(45);
       form1.StringGrid1.cells[i,0]:=inttostr(a[i]);
     end;
   end;
 Function vvod(n:Integer):Integer;
Begin
 Val(InputBox('Введите число элементов массива','Ввод','0'),n);
 vvod:=n;
end;
 Function maxabs(Var a:mas):Integer;
 Var max,maxid,i:Integer;
 Begin
  max:=-1000;
  For i:= Low(a) To High(a) Do
       Begin
        If (abs(a[i])>max) Then
                           Begin
                           max:=abs(a[i]);
                           maxid:=i+1;
                           end;
       end;
 maxabs:=maxid;
 end;
 Procedure konechmass(var a:mas; Var y:rezmass);
Var i:Integer;
 Begin
 c:=maxabs(a);
 k:=-1;
 For i:=Low(a) To High(a) Do
     If a[i]>c Then
           Begin
           k:=k+1;
           Setlength(y,k+1);
           y[k]:=a[i];
           end;
 For k:=Low(y) To High(y) Do
   Form1.StringGrid2.Cells[k,0]:=IntToStr(y[k]);
 end;

 Procedure sort(var y:rezmass);
Var i, j, min,bufer : integer;
begin
For i := 0 To high(y) - 1 do
begin
min := i;
for j := i + 1 To High(y) do
if y[j] < y[min] Then
min := j;
bufer := y[i];
y[i] := y[min];
y[min] := bufer;
end;
end;

 { TForm1 }

 procedure TForm1.Button1Click(Sender: TObject);
  Var n1,n:Integer;
 begin
 n1:=vvod(n);
 vvod(a,n1);
 konechmass(a,y);
 sort(y);
 Label1.Caption:='Максимальный элемент первого массива равен ' + IntToStr(c);
end;


end.

