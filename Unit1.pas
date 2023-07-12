unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    DataSiswa1: TMenuItem;
    DataGuru1: TMenuItem;
    ZConnection1: TZConnection;
    DataWaliKelas1: TMenuItem;
    User1: TMenuItem;
    Kelas1: TMenuItem;
    Poin1: TMenuItem;
    Hubungan1: TMenuItem;
    Semester1: TMenuItem;
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataGuru1Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit4, Unit5, Unit6, Unit8, Unit7, Unit9;

{$R *.dfm}

procedure TForm1.DataSiswa1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.DataGuru1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.DataWaliKelas1Click(Sender: TObject);
begin
 Form4.ShowModal;
end;

procedure TForm1.User1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.Kelas1Click(Sender: TObject);
begin
 Form6.ShowModal;
end;

procedure TForm1.Poin1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.Hubungan1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.Semester1Click(Sender: TObject);
begin
  form9.ShowModal;
end;

end.
