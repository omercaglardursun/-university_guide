unit ogretmenara;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,ogretmen, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB,System.StrUtils, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Mask;

type
  TForm6 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton2: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
if radiobutton1.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Bölüm').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton2.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('PuanTürü').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton3.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Tavan').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton4.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('Taban').AsString),length(edit1.Text)) then accept:=true else accept:=false;
if radiobutton5.Checked=true then if ansiuppercase(edit1.Text)=leftstr(ansiuppercase(adotable1.FieldByName('OgrSüresi').AsString),length(edit1.Text)) then accept:=true else accept:=false;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
adotable1.Filtered:=false;
  if edit1.Text<>'' then adotable1.Filtered:=true else adotable1.Filtered:=false;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
form4.Show;
form6.Close;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
edit1.Text:='';
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
var
mesaj:word;
begin
mesaj:=Application.MessageBox('Cýkmak istediðinize emin misiniz?','Cýkýs!',mb_yesno);
if mesaj=mryes then Application.Terminate;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
adotable1.First;
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure TForm6.SpeedButton6Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure TForm6.SpeedButton7Click(Sender: TObject);
begin
adotable1.Last;
end;

end.
