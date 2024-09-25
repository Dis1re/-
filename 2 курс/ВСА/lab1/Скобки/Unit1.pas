unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s:string;
  i,sch:integer;
  flag:boolean;
  ch:char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 sch:=0;
 flag:=false;
 s:=edit1.Text;
 for i:=1 to length(s) do
  begin
   if s[i]='('then sch:=sch+1 else sch:=sch-1;
   if sch<0 then flag:=true
  end;
 if sch<>0 then flag:=true;
 if flag then label1.Caption:='Неверно!' else label1.Caption:='Верно!'
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 edit1.Text:='';
 label1.Caption:='Ожидание'
end;

procedure error;
begin
 flag:=true
end;

procedure read_ch;
begin
 i:=i+1;
 ch:=s[i]
end;

procedure A;
begin
 if ch='(' then read_ch else error;
 while ch='(' do A;
 if ch=')' then read_ch else error;
 while ch='(' do A
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 i:=0;
 flag:=false;
 s:=edit1.text+'@ ';
 read_ch;
 while (not flag)and(s[i]<>'@') do A;
 if flag then label1.Caption:='Неверно!' else label1.Caption:='Верно!'
end;

end.
