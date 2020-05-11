unit ana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses ogrenci,ogretmen;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
  label1.Caption:='';
  edit1.Enabled:=true;
  edit2.Enabled:=true;
  label2.Enabled:=true;
  label3.Enabled:=true;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
  edit1.Enabled:=false;
  edit2.Enabled:=false;
  label2.Enabled:=false;
  label3.Enabled:=false;
label1.Caption:='Giriþe Týklayýnýz';
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var a,b : String;
begin
  a:='safiye';
  b:='1111';
if radiobutton1.Checked<>true and radiobutton2.Checked<>true then showmessage('Seçim Yapýnýz...');

if radiobutton1.Checked=true then
begin
  if (edit1.Text=a)and(edit2.Text=b)then begin form4.show; form2.Visible:=false; end else showmessage('Yanlýs');
end;
  if radiobutton2.Checked=true then
begin
  form3.ADOTable1.Active:=false;form3.ADOTable1.Active:=true;
  form3.Show;
  form2.Visible:=false;
end;
 end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs Ýþlemi!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;
end.
