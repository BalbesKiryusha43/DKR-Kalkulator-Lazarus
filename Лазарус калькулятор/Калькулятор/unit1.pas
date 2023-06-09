unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    But1: TButton;
    Delenie: TButton;
    ButClear: TButton;
    ButPlus: TButton;
    But9: TButton;
    But8: TButton;
    But0: TButton;
    But2: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    Edit1: TEdit;
    ButMinus: TButton;
    ButNazad: TButton;
    ButUmnojenie: TButton;
    ButRavno: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure NazadClick(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
    procedure RavnoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c:Real;
  Znak:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RavnoClick(Sender: TObject);
begin
  if (Znak = '/') and (Trim(Edit1.Text) = '' ) then
  begin
    ShowMessage('Сначала введите число!');
    Exit;
  end;

  b:=StrToFloatDef(Edit1.Text, 0.0);
  Edit1.Clear;

  if (Znak = '/') and (b = 0) then
  begin
    ShowMessage('Нельзя делить на ноль!');
    Exit;
  end;

  case znak of
  '+' : c:=a+b;
  '-' : c:=a-b;
  '*' : c:=a*b;
  '/' : c:=a/b;
  end;

  Edit1.Text:= FloatToStr(c);
end;

procedure TForm1.ClickZnak(Sender: TObject);
var
lastChar: Char;
begin
  if Trim(Edit1.Text) = '' then
  begin
    ShowMessage('Сначала введите число!');
    Exit;
  end;

  a := StrToFloat(Edit1.Text);
  Edit1.Clear;
  Znak := (Sender as TButton).Caption;
end;


procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.text:=Edit1.text + (Sender as TButton).Caption;
end;

procedure TForm1.NazadClick(Sender: TObject);
var
  str:string;
begin
  str:=Edit1.Text;
  if str <> '' then
    Delete(str, Length(str),1);
  Edit1.Text:=str;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
  Edit1.Clear;
end;

end.

