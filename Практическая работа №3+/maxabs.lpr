library maxabs;

{$mode objfpc}{$H+}

uses
  Classes
  { you can add units after this };
type mas = array of integer;
  var a: mas;
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
exports maxabs;
begin
end.

