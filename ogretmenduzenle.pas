unit ogretmenduzenle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ogretmen, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm7 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.SpeedButton1Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
form4.Show;
form7.Close;
end;

procedure TForm7.SpeedButton3Click(Sender: TObject);
begin
adotable1.Post;
adotable1.Active:=false;
adotable1.Active:=true;
showmessage('Düzeltildi...');
end;

procedure TForm7.SpeedButton4Click(Sender: TObject);
var mesaj:word;
begin
mesaj:=Application.MessageBox('Emin misin?','DÝKKAT!',mb_yesno);
if mesaj=mryes then adotable1.Delete;
end;
procedure TForm7.SpeedButton5Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm7.SpeedButton6Click(Sender: TObject);
begin
adotable1.Prior;
end;

end.
