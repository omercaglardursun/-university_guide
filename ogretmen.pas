unit ogretmen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,ana;

type
  TForm4 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
  uses ogretmenara,ogretmenduzenle,ogretmenekle;
procedure TForm4.SpeedButton1Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;
procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
form5.Show;
form5.adotable1.Last;
form5.adotable1.Edit;
form5.adotable1.Insert;
form4.Close;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
form6.ADOTable1.Active:=false;form6.ADOTable1.Active:=true;form6.Show;
form4.Close;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
form7.ADOTable1.Active:=false;form7.ADOTable1.Active:=true;form7.Show;
form4.Close;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin
form2.Show;
form4.Close;
form2.Edit1.Text:='';
form2.Edit2.Text:='';
end;

end.
