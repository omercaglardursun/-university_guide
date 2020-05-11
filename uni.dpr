program uni;

uses
  Vcl.Forms,
  ana in 'ana.pas' {Form2},
  ogrenci in 'ogrenci.pas' {Form3},
  ogretmen in 'ogretmen.pas' {Form4},
  ogretmenekle in 'ogretmenekle.pas' {Form5},
  ogretmenara in 'ogretmenara.pas' {Form6},
  ogretmenduzenle in 'ogretmenduzenle.pas' {Form7},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
