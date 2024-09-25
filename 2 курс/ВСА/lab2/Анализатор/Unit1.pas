unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ch:char;
  i:integer;
  flag:boolean;
  s:string;

implementation

{$R *.dfm}

procedure read_ch;
begin
 i:=i+1;
 ch:=s[i]
end;

procedure error;
begin
 flag:=true
end;

procedure V1;
begin
 if ch in ['a'..'z','A'..'Z'] then read_ch else error;
 while ch in ['a'..'z','A'..'Z','0'..'9','_'] do
  begin
   if ch in ['a'..'z','A'..'Z'] then read_ch else
    if ch in ['0'..'9'] then read_ch else
     if ch='_' then read_ch else error
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
 memo1.Clear;
 edit1.Text:='';
 label1.Caption:='Ожидание'
end;

procedure TForm1.Button1Click(Sender: TObject);
var j:integer;
begin
 flag:=false;
 for j:=0 to memo1.Lines.Count-1 do
  begin
   s:=memo1.Lines.Strings[j]+'@';
   i:=0;
   read_ch;
   while (not flag)and(ch<>'@') do V1;
 end;
 if flag then label1.Caption:='Ошибка!' else label1.Caption:='Верно'
end;

end.
