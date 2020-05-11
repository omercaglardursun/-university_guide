unit ogrenci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,System.StrUtils, Data.DB,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,ana,
  QuickRpt, Vcl.ExtCtrls, QRCtrls;

type
  TForm3 = class(TForm)
    SpeedButton1: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if radiobutton1.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Bölüm').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton2.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('PuanTürü').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton3.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Tavan').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton4.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Taban').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton5.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('OgrSüresi').AsString),length(edit1.Text)) then accept:=true else accept:=false;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
adotable1.Filtered:=false;
  if edit1.Text<>'' then adotable1.Filtered:=true else adotable1.Filtered:=false;
end;
procedure TForm3.SpeedButton1Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
adotable1.First;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
adotable1.Last;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
form2.Show;
form3.Close;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
quickrep1.Preview;
end;

end.
