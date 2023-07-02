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
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataGuru1Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2, Unit3, Unit4, Unit5;

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

end.
